import board
import busio
from adafruit_bus_device.spi_device import SPIDevice
import digitalio
import adafruit_max31865
import pwmio
import asyncio

import struct
from ulab import numpy as np
import countio

from log import Log
from client import SerialClient
from PID import PIDState
from sensor import TempSensor, TimeSensor, PIDSensor



# Create sensor object, communicating over the board's default SPI bus
spi = busio.SPI(board.GP14, MISO=board.GP12, MOSI=board.GP11)
cs = digitalio.DigitalInOut(board.GP10)  # Chip select of the MAX31865 board.

max31865 = adafruit_max31865.MAX31865(spi, cs, rtd_nominal=1000.0, ref_resistor=4300.0, wires=4,baudrate=5_000_000)
max31865.auto_convert = True
max31865.bias = True

print(max31865._read_u8(0x00))
max31865._write_u8(0x00, 0xC0)
print(max31865._read_u8(0x00))

enPin1 = pwmio.PWMOut(board.GP16, frequency=1000, duty_cycle=0)
enPin2 = pwmio.PWMOut(board.GP17, frequency=1000, duty_cycle=0)
enPin3 = pwmio.PWMOut(board.GP18, frequency=1000, duty_cycle=0)
enPin4 = pwmio.PWMOut(board.GP19, frequency=1000, duty_cycle=0)

#serial = usb_cdc.data
# Note you can optionally provide the thermocouple RTD nominal, the reference
# resistance, and the number of wires for the sensor (2 the default, 3, or 4)
# with keyword args:
# sensor = adafruit_max31865.MAX31865(spi, cs, rtd_nominal=100, ref_resistor=430.0, wires=2)
targetTemp = 70.0
kp = 100.0
ki = 1.
kd = 40.

k1 = kp + ki + kd
k2 = -kp - 2*kd
k3 = kd

e, e1, e2, u, delta_u = (0., 0., 0., 0., 0.)

class Supervisor:
    
    def __init__(self, serial_client, PID, log):
        
        self.client = serial_client
        self.PID = PID
        self.log = log
    
        self.config = {'Run': False, 'temp1': 23, 'temp2': 23, 'heat': 0}
        
    def pull_config(self):
        for msg in self.client.buf_in:
            config = eval('{'+ msg.encode('utf-8') +'}')
            for key,val in zip(config.keys(), config.values()):
                self.config[key] = val
            self.client.write('ACK:'+str(self.config).encode('utf-8'))
            
        
    def push_data(self):
        # Message size scales as approximately 65 + (5+4+5)*(number of readings sent)
        num_request = (self.client.buf_out_bytes_free -65) // 14
        if (self.config['Run']):
            data, n = self.log.pop(num_request)
        else:
            data, n = (self.log.read(), 1)
        message_string = str(data).encode('utf-8')
        self.client.write(message_string)
        

def main_routine(logger, PID, coordinator):
    logread(PID, logger, coordinator)
    PIDControl(PID, logger)
    logwrite(logger, coordinator)
    readSerial(coordinator)
    writeSerial(coordinator)
    readMessages(coordinator, PID)
    
def secondary_routine(logger, PID, coordinator):
    logread(PID, logger, coordinator)
    logwrite(logger, coordinator)
    readSerial(coordinator)
    writeSerial(coordinator)
    readMessages(coordinator, PID)


#async def main():
def main():
    thisLogger = Logger(time.monotonic_ns(), 0.25)
    thisPID = PIDState(sensor, targetTemp, 2.5, 100., 1., 40.)
    thisCoordinator = Coordinator(serial)
    #thisCoordinator.config[0] = 0xF0
    #thisEvent_a = asyncio.Event()
    #thisEvent_b = asyncio.Event()
    
    while True:
        if (thisCoordinator.config[0]//128):
            main_routine(thisLogger, thisPID, thisCoordinator)
            time.sleep(0.05)
        else:
            secondary_routine(thisLogger, thisPID, thisCoordinator)
            time.sleep(0.05)

    #PID_task = asyncio.create_task(PIDControl(thisPID, 0.5, thisEvent_a))
    #logread_task = asyncio.create_task(logread(thisPID, thisLogger, thisEvent_b, thisEvent_a))
    #logwrite_task = asyncio.create_task(logwrite(thisLogger,thisCoordinator, 0.25, thisLock, serial=True, flash=False))
    #serial_read_task = asyncio.create_task(readSerial(thisCoordinator, 1.0, thisLock))
    #serial_write_task = asyncio.create_task(writeSerial(thisCoordinator, 0.25, thisLock))
    #msg_read_task = asyncio.create_task(readMessages(thisCoordinator, thisPID, 1.5, thisLock))
    #lock_task = asyncio.create_task(mytimer(thisLock, thisLogger, thisEvent))
    
    #await asyncio.gather(PID_task, logread_task, logwrite_task, serial_read_task, serial_write_task, msg_read_task)
    #await asyncio.gather(PID_task, logread_task, logwrite_task, lock_task, serial_read_task, serial_write_task, msg_read_task)
    #await logread_task
    #await lock_task
    #await logwrite_task
    #await serial_read_task
    #await serial_write_task
    #await msg_read_task

#timer = Timer(period=1000, mode=Timer.PERIODIC, callback=lambda x: x)
#asyncio.run(main())

