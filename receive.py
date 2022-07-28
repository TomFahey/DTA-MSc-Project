import asyncio
import serial_asyncio
from functools import partial

class PicoDAServer(asyncio.Protocol):
    def __init__(self, loop, serial_port='/dev/ttyACM1', baud_rate=115200, port=10501, addr='localhost'):
        self.loop = loop
        self.serial_port = serial_port
        self.serial_baud_rate = baud_rate
        self.serial_reader = None
        self.serial_writer = None
        self.serial_status = False
        self.tcp_port = port
        self.tcp_addr = addr

    def connection_made(self, transport):
        self.transport = transport
        asyncio.ensure_future(self.setup_serial_connection())

    async def setup_serial_connection(self):
        try:
            serial_reader, serial_writer = await serial_asyncio.open_serial_connection(
                url=self.serial_port,
                baudrate=self.serial_baud_rate,
            )
            if serial_reader and serial_writer:
                self.serial_status = True
                self.serial_reader = serial_reader
                self.serial_writer = serial_writer
                print('Serial connection established')
                task = self.loop.create_task(self.serial_read())
                asyncio.ensure_future(task)
        except serial_asyncio.serial.SerialException as e:
            print(e)
            self.serial_status = False

    async def serial_read(self):
        print('Tried to serial_read')
        while self.serial_status:
            print(self.serial_reader.at_eof())
            print(self.serial_status)
            while not self.serial_reader.at_eof():
                self.write_data(await self.serial_reader.read(16))

    def write_data(self, data):
        self.transport.write(data)

    def data_received(self, data):
        if self.serial_status:
            self.serial_writer.write(data)
            asyncio.ensure_future(self.serial_writer.drain())

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