import asyncio
from socket import socket
import serial_asyncio
from functools import partial
import numpy as np
import sys
import pickle as pkl
np.set_printoptions(threshold=sys.maxsize)
import ast     # Needed for parsing ascii messages to python objects

class PicoDAServer(asyncio.Protocol):
    """Class used to handle connection between dashboard app and 
    microcontroller.
    
    The :class:`PicoDAServer` class handles communication between the
    dashboard application and supervisor programme running on the
    microcontroller.
    
    This is achieved through the use of two asyncronously running servers:
    - A TCP server, which listens for connections from the dashboard web app
      on a given local TCP :param:`port` (default to localhost:10501)
    - A serial server, which listens for connections from the microcontroller
      on a given TTY :param:`serial_port` (defaults to /dev/ttyACM1)

    These servers then run in the background, waiting for a connection from
    the web app and microcontroller. When both are connected, the 
    :class:`PicoDAServer` instance relays data between the two parties.

    This allows the web app and microcontroller to both act as *clients*
    when communicating with each other (whilst the :class:`PicoDAServer`
    instance acts as the *server* for both), allowing them to initiate 
    and close connections in a flexible manner, that mimicks a 'hot
    pluggable' device.


    :param serial_port: The /dev/tty* port used for serial data transfer with
        the microcontroller. Defaults to `'/dev/ttyACM1'`
    :type serial_port: str
    :param baud_rate: Baud rate of the serial connection. Defaults to `115200`
    :type baud_rate: int
    :param port: The TCP port the web app connects to. Defaults to `10501`
    :type port: int
    :param addr: The TCP address the web app connects to. Can be changed to
        allow connections from other devices on the network. Defaults to
        `'localhost'`.
    :type addr: str
    """
    def __init__(self, loop, serial_port='/dev/ttyACM1', baud_rate=115200, 
                 port=10501, addr='localhost'):

        self.loop = loop            #: Asyncio loop, used for async tasks
        self.serial_reader = None   #: :class:asyncio.StreamReader` object
        self.serial_writer = None   #: :class:asyncio.StreamWriter` object
        self.server_config = {
            'serial_port': serial_port, 
            'baud_rate': baud_rate, 
            'tcp_port': port, 
            'tcp_addr': addr,
            'serial_status': False,
            'tcp_status': False,
            'LOG': False
            } #: Server configuration
        self.data = {
            'PID': np.array([0.]) ,
            'TEMPA': np.array([0.]), 
            'TEMPB': np.array([0.]), 
            'TEMPC': np.array([0.]), 
            'DTEMP': np.array([0.]), 
            'TIME': np.array([0.])
            } #: Recorded sensor readings from microcontroller
        self.push_config = {
            'RUN': False, 
            'MODE': False, 
            'LOG': False, 
            'TARGET': 25, 
            'KP': 35.0, 
            'KD': 2.0, 
            'KI': 3.5, 
            'INTERVAL': 0.25
            } #: New config sent by web app, to push to microcontroller
        self.pull_config = {
            'RUN': False, 
            'MODE': False, 
            'LOG': False, 
            'TARGET': 25, 
            'KP': 35.0, 
            'KD': 2.0, 
            'KI': 0.0, 
            'INTERVAL': 0.25
            } #: Current microcontroller config, to report to web app
        self.device_status = {
            'PID': 0, 
            'TEMPA': 0, 
            'TEMPB': 0, 
            'TEMPC': 0, 
            'DTEMP':0, 
            'TIME': 0
            } #: Current sensor readings from microcontroller
        self.background_task = None 
        """:class:`asyncio.Task` used to routinely handle the serial
        conneciton, by calling the :meth:`handle_serial_connection`
        coroutine. See meth:`setup_serial_connection`.
        """
        self.counter = 0 
        """This counter is used during a heating run to track the number of 
        readings from `self.data` sent to web app, so that only the latest
        readings are sent in each update. See :meth:`data_received`.
        """


    def connection_made(self, transport):
        """Method called when web app connects to :class:`PicoDAServer`
        instance.

        Inherited from :class:`asyncio.Protocol`. Assigns `transport`
        attribute upon TCP connection. Attempts to start serial
        connection, if not already established.
        """
        self.transport = transport
        self.server_config['tcp_status'] = True
        print(self.server_config)
        if not self.server_config['serial_status']:
            asyncio.ensure_future(
                self.setup_serial_connection()
                )
        elif self.server_config['serial_status']:
            self.background_task = self.loop.create_task(
                self.handle_serial_connection()
            )


    def connection_lost(self, exc):
        """Method called when web app disconnects.
        """
        self.server_config['tcp_status'] = False
        self.background_task.cancel()
        self.counter = 0


    async def setup_serial_connection(self):
        """Establish a serial connection with microcontroller.
        Resets microcontroller config to default configuration.
        """
        try:
            serial_reader, serial_writer = await serial_asyncio.open_serial_connection(
                url=self.server_config['serial_port'],
                baudrate=self.server_config['baud_rate'],
            )
            if serial_reader and serial_writer:
                self.server_config['serial_status'] = True
                self.serial_reader = serial_reader
                self.serial_writer = serial_writer
                print('Serial connection established')
                # Sync local config with device config
                # (this has the side effect of resetting the device
                # config to default settings if a TCP connection is
                # lost and then re-established)
                self.serial_writer.write(str({}).encode('utf-8'))
                self.background_task = self.loop.create_task(self.handle_serial_connection())
        except serial_asyncio.serial.SerialException as e:
            print(e)
            self.server_config['serial_status'] = False

    async def handle_serial_connection(self):
        """ Coroutine which, when called, reads any data sent by the
        microcontroller on the serial connection, updating `self.data`,
        `self.device_status`, and `self.pull_config` as necessary. If
        the *pulled* config does not match `self.push_config`, then
        the new config is *pushed* to the microcontroller.
        """
        while self.server_config['tcp_status'] and self.server_config['serial_status']:
            while not self.serial_reader.at_eof():
                try:
                    msg = await self.serial_reader.readline()
                    #print(msg)
                    msg = msg.decode('utf-8').split('\n')[0]
                    if 'DATA:' in msg:
                        msg = msg.split('DATA:')[1]
                        data = ast.literal_eval(msg)
                        for key,val in zip(data.keys(), data.values()):
                            if key in self.data.keys():
                                if self.pull_config['LOG']:
                                    self.data[key] = np.append(self.data[key], val)
                                self.device_status[key] = val
                    elif 'ACK:' in msg:    
                        msg = msg.split('ACK:')[1]
                        data = ast.literal_eval(msg)
                        for key,val in zip(data.keys(), data.values()):
                            if key in self.pull_config.keys():
                                self.pull_config[key] = val
                    if self.pull_config != self.push_config:
                        self.serial_writer.write(str(self.push_config).encode('utf-8'))
                        await self.serial_writer.drain()
                except NameError as err:
                    print(err)
                    print('Message: ' + msg.decode('utf-8'))
                except SyntaxError as err:
                    print(err)
                    print('Message: ' + msg.decode('utf-8'))
                await asyncio.sleep(self.pull_config['INTERVAL']*0.5)

    def write_data(self, data):
        """Write :param:`data` to `self.transport`, to send to web app.

        :param data: Binary encoded data to send to web app
        :type data: bytes
        """
        self.transport.write(data)

    def data_received(self, bin_msg):
        """Method that is *automatically* called whenever data is received from
        web app.

        See `streaming protocols<https://docs.python.org/3/library/asyncio-protocol.html#streaming-protocols>`_
        for more information.

        :param bin_msg: The binary encoded data received from web app
        :type bin_msg: bytes
        """
        msg = bin_msg.decode('utf-8').split('\n')
        print(msg)
        for line in msg[:-1]:
            if self.server_config['serial_status']:
                if 'CONFIG:' in line:
                    line = line.split('CONFIG:')[1]
                    data = ast.literal_eval(line)
                    for key,val in zip(data.keys(), data.values()):
                        if key in self.push_config.keys():
                            self.push_config[key] = val
                        if key in self.server_config.keys():
                            self.server_config[key] = val
                    print(self.push_config)
                elif 'QUERY:' in line:
                    line = line.split('QUERY:')[1]
                    data = ast.literal_eval(line)
                    response = {
                        key:self.device_status[key] for key in data.keys()
                            if key in self.device_status
                        } if data.keys() else self.device_status
                    self.write_data(str(response).encode('utf-8')+bytes('\n', 'utf-8'))
                elif 'HISTORY:' in line:
                    line = line.split('HISTORY:')[1]
                    data = ast.literal_eval(line)
                    response =  \
                        {
                            key:self.data[key].tolist() for key in data.keys() 
                                               if key in self.data 
                        } if data.keys() else \
                        {
                            key:val.tolist()[self.counter:] for key,val in self.data.items()
                        } 
                        # {
                        #     key:val.tolist() for key,val in self.data.items()
                        # } 
                    self.write_data(str(response).encode('utf-8')+b'\n')
                    self.counter += len(response['TIME'] if response.items() else [])


# Runtime code
loop = asyncio.get_event_loop()
# Functools.partial allows us to pass arguments to provide to the PicoDAServer 
# constructor, before initializing it as a coroutine
server_instance = partial(PicoDAServer, loop, serial_port='/dev/ttyACM1', baud_rate=115200, port=10501, addr='localhost')
coro = loop.create_server(server_instance, 'localhost', 10501)
loop.run_until_complete(coro)
try: 
    loop.run_forever()
except KeyboardInterrupt:
    pass

loop.close()