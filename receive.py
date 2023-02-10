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
        self.data = {'PID': np.array([0.]) ,'TEMPA': np.array([0.]), 'TEMPB': np.array([0.]), 'TEMPC': np.array([0.]), 'DTEMP': np.array([0.]), 'TIME': np.array([0.])}
        self.push_config = {'RUN': False, 'MODE': False, 'LOG': False, 'TARGET': 25, 'KP': 35.0, 'KD': 2.0, 'KI': 3.5, 'INTERVAL': 0.25}
        self.pull_config = {'RUN': False, 'MODE': False, 'LOG': False, 'TARGET': 25, 'KP': 35.0, 'KD': 2.0, 'KI': 0.0, 'INTERVAL': 0.25}
        self.device_status = {'PID': 0, 'TEMPA': 0, 'TEMPB': 0, 'TEMPC': 0, 'DTEMP':0, 'TIME': 0}
        self.background_task = None
        self.counter = 0

    def connection_made(self, transport):
        self.transport = transport
        self.config['tcp_status'] = True
        print(self.config)
        if not self.config['serial_status']:
            asyncio.ensure_future(self.setup_serial_connection())
        elif self.config['serial_status']:
            self.background_task = self.loop.create_task(self.handle_serial_connection())

    def connection_lost(self, exc):
        self.config['tcp_status'] = False
        self.background_task.cancel()
        self.counter = 0


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
                # Sync local config with device config
                # (this has the side effect of resetting the device
                # config to default settings if a TCP connection is
                # lost and then re-established)
                self.serial_writer.write(str({}).encode('utf-8'))
                self.background_task = self.loop.create_task(self.handle_serial_connection())
        except serial_asyncio.serial.SerialException as e:
            print(e)
            self.config['serial_status'] = False

    async def handle_serial_connection(self):
        while self.config['tcp_status'] and self.config['serial_status']:
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
                await asyncio.sleep(self.pull_config['INTERVAL']*0.5)

    def write_data(self, data):
        self.transport.write(data)

    def data_received(self, bin_msg):
        msg = bin_msg.decode('utf-8').split('\n')
        print(msg)
        for line in msg[:-1]:
            if self.config['serial_status']:
                if 'CONFIG:' in line:
                    line = line.split('CONFIG:')[1]
                    data = ast.literal_eval(line)
                    for key,val in zip(data.keys(), data.values()):
                        if key in self.push_config.keys():
                            self.push_config[key] = val
                        if key in self.config.keys():
                            self.config[key] = val
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