import matplotlib.pyplot as plt
import numpy as np
from matplotlib.animation import FuncAnimation
import serial
import re
import asyncio
import struct



#s = serial.Serial("/dev/ttyACM1", 115200)

def read_serial(serial, buffer):
    if serial.in_waiting > 12:
        buffer =  serial.read(12)
        return True
    else:
        return False

async def update_data(data, serial):
    buffer = bytearray(12)
    while True:
        readIn = read_serial(serial, buffer)
        if readIn:
            u,temp,time = struct.unpack_from("3f", buffer)
            data[0].append(u)
            data[1].append(temp)
            data[2].append(time)
            print("u: {0:0.3f}, temp: {1:0.3f}, time: {2:0.3f}\n".format(u, temp, time))
        await asyncio.sleep(0.05)
    