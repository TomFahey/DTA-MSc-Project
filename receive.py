import serial
import asyncio
import struct



COM = serial.Serial("/dev/ttyACM1", 115200)
#SOCK = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

async def update_data(serial, interval):
    buffer = bytearray(12)
    _, writer = await asyncio.open_connection("localhost", 10501)
    while True:
        if serial.in_waiting > 16:
            buffer = serial.read(16)
            writer.write(buffer)
            await writer.drain()
            u,temp,time = struct.unpack_from("3f", buffer[0:12])
            config = buffer[12:]
            print("u: {0:0.3f}, temp: {1:0.3f}, time: {2:0.3f}\n".format(u, temp, time))
            print("DTA: {}, Target temperature: {}, Target heat output: {}".format(config[0]//128, config[1], config[2]/16))
            await asyncio.sleep(interval)
            

async def update_config(serial, interval):
    reader, _ = await asyncio.open_connection("localhost", 10501)
    data = await reader.read(4)
    if data:
       serial.write(data)
    print("Config: {}".format(data))
    await asyncio.sleep(interval)

        
    
async def main(com):
    data_task = asyncio.create_task(update_data(com, 0.05))
    config_task = asyncio.create_task(update_config(com, 0.05))
    await asyncio.gather(data_task, config_task)
    
asyncio.run(main(COM))