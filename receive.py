import asyncio
from socket import socket
import serial_asyncio
from functools import partial
import numpy as np
import ast     # Needed for parsing ascii messages to python objects

class PicoDAServer(asyncio.Protocol):
    def __init__(self, loop, serial_port='/dev/ttyACM1', baud_rate=115200, port=10501, addr='localhost'):
        self.loop = loop
        self.config = {
            'serial_port': serial_port, 
            'baud_rate': baud_rate, 
            'tcp_port': port, 
            'tcp_addr': addr,
            'serial_status': False,
            'tcp_status': False,
            'LOG': False
            }
        self.serial_reader = None
        self.serial_writer = None
        self.data = {'PID': np.array([0.]) ,'TEMP': np.array([0.]), 'TIME': np.array([0.])}
        self.push_config = {'RUN': False, 'LOG': False, 'TARGET': 25}
        self.pull_config = {'RUN': False, 'LOG': False, 'TARGET': 25}
        self.device_status = {'PID': 0, 'TEMP': 0, 'TIME': 0}

    def connection_made(self, transport):
        self.transport = transport
        self.config['tcp_status'] = True
        asyncio.ensure_future(self.setup_serial_connection())

    def connection_lost(self, exc):
        self.config['tcp_status'] = False
        self.exit_future.set_result(True)

    async def setup_serial_connection(self):
        try:
            serial_reader, serial_writer = await serial_asyncio.open_serial_connection(
                url=self.config['serial_port'],
                baudrate=self.config['baud_rate'],
            )
            if serial_reader and serial_writer:
                self.config['serial_status'] = True
                self.serial_reader = serial_reader
                self.serial_writer = serial_writer
                print('Serial connection established')
                task = self.loop.create_task(self.handle_serial_connection())
                asyncio.ensure_future(task)
        except serial_asyncio.serial.SerialException as e:
            print(e)
            self.config['serial_status'] = False

    async def handle_serial_connection(self):
        print('Tried to serial_read')
        while self.config['tcp_status'] and self.config['serial_status']:
            print(self.serial_reader.at_eof())
            print(self.config['serial_status'])
            while not self.serial_reader.at_eof():
                try:
                    msg = await self.serial_reader.readline()
                    print(msg)
                    msg = msg.decode('utf-8').split('\n')[0]
                    if 'DATA:' in msg:
                        msg = msg.split('DATA:')[1]
                        data = ast.literal_eval(msg)
                        for key,val in zip(data.keys(), data.values()):
                            if key in self.data.keys():
                                if self.config['LOG']:
                                    self.data[key] = np.append(self.data[key], val)
                                self.device_status[key] = val
                    elif 'ACK:' in msg:    
                        msg = msg.split('ACK:')[1]
                        data = ast.literal_eval(msg)
                        for key,val in zip(data.keys(), data.values()):
                            if key in self.pull_config.keys():
                                self.pull_config[key] = val
                    if self.pull_config != self.push_config:
                        print('Statement triggered')
                        self.serial_writer.write(str(self.push_config).encode('utf-8'))
                        await self.serial_writer.drain()
                        #asyncio.ensure_future(self.serial_writer.drain())
                except NameError as err:
                    print(err)
                    print('Message: ' + msg.decode('utf-8'))
                except SyntaxError as err:
                    print(err)
                    print('Message: ' + msg.decode('utf-8'))
                #except:
                #    print('Unknown error')
                #    print('Message: ' + msg)
                await asyncio.sleep(0.05)

    def write_data(self, data):
        self.transport.write(data)

    def data_received(self, data):
        data = data.decode('utf-8').split('\n')[0]
        if self.config['serial_status']:
            if 'CONF:' in data:
                data = data.split('CONF:')[1]
                print(data)
                data = ast.literal_eval(data)
                for key,val in zip(data.keys(), data.values()):
                    if key in self.push_config.keys():
                        self.push_config[key] = val
                    if key in self.config.keys():
                        self.config[key] = val
            elif 'QUERY:' in data:
                data = data.split('QUERY:')[1]
                data = ast.literal_eval(data)
                response = {}
                for key in data.keys():
                    if key in self.device_status.keys():
                        response[key] = self.device_status[key]
            elif 'HISTORY:' in data:
                data = data.split('HISTORY:')[1]
                data = ast.literal_eval(data)
                response = {}
                for key in data.keys():
                    if key in self.data.keys():
                        response[key] = self.data[key]
                self.write_data(str(response).encode('utf-8'))

async def forward(reader, writer):
    try:
        while not reader.at_eof():
            writer.write(await reader.read(2048))
    finally:
        writer.close()

async def handle_client(local_reader, local_writer):
    try:
        remote_reader, remote_writer = await serial_asyncio.open_serial_connection(
            url='./tty2', baudrate=9600
            )
        pipe1 = forward(local_reader, remote_writer)
        pipe2 = forward(remote_reader, local_writer)
        await asyncio.gather(pipe1, pipe2)
    finally:
        local_writer.close()
        

loop = asyncio.get_event_loop()
#coro = asyncio.start_server(handle_client, 'localhost', 10501)
server_instance = partial(PicoDAServer, loop, serial_port='/dev/ttyACM1', baud_rate=115200, port=10501, addr='localhost')
coro = loop.create_server(server_instance, 'localhost', 10501)
loop.run_until_complete(coro)
try: 
    loop.run_forever()
except KeyboardInterrupt:
    pass

#server.close()
#loop.run_until_complete(server.wait_closed())
loop.close()