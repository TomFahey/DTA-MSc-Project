import usb_cdc
#import asyncio
from utils import ResponsiveDict

class SerialClient:
    
    def __init__(self, serial=usb_cdc.data, buf_out_size=1024,
                 timeout=0.01, write_timeout=0.015):
        self.config = ResponsiveDict({})
        self.serial = serial
        self.serial.timeout = timeout
        self.serial.write_timeout = write_timeout
        
        self.buf_out_size = buf_out_size
        
        self.buf_in = []
        self.buf_out = bytearray(buf_out_size)
        
        self.buf_out_bytes_free = buf_out_size

    def read(self):
        readIn = self.serial.readline()
        return readIn

    def write(self, data):
        return self.serial.write(data)
        
    def update(self):
        if self.serial.in_waiting > 0:
            msg = self.read()
            if (len(msg) > 0 and msg.count(b'\n') < 1): # Timed out reading message
                msg += self.serial.readline()
                self.buf_in.append(msg)
        mv = memoryview(self.buf_out)
        self.buf_out_bytes_free += self.write(mv[self.buf_out_bytes_free:])