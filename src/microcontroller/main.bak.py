# SPDX-FileCopyrightText: 2021 ladyada for Adafruit Industries
# SPDX-License-Identifier: MIT

# Simple demo of the MAX31865 thermocouple amplifier.
# Will print the temperature every second.
import time
import board
import busio
from adafruit_bus_device.spi_device import SPIDevice
import digitalio
import adafruit_max31865
import pwmio
import asyncio
import usb_cdc
import struct


# Create sensor object, communicating over the board's default SPI bus
spi = busio.SPI(board.GP14, MISO=board.GP12, MOSI=board.GP11)
cs = digitalio.DigitalInOut(board.GP10)  # Chip select of the MAX31865 board.

sensor = adafruit_max31865.MAX31865(spi, cs, rtd_nominal=1000.0, ref_resistor=4300.0, wires=4,baudrate=1_000_000)
sensor.auto_convert = True
sensor.bias = True
print(sensor._read_u8(0x00))
sensor._write_u8(0x00, 0xC0)
print(sensor._read_u8(0x00))
enPin1 = pwmio.PWMOut(board.GP16, frequency=1000, duty_cycle=0)
enPin2 = pwmio.PWMOut(board.GP17, frequency=1000, duty_cycle=0)
enPin3 = pwmio.PWMOut(board.GP18, frequency=1000, duty_cycle=0)
enPin4 = pwmio.PWMOut(board.GP19, frequency=1000, duty_cycle=0)
serial = usb_cdc.data
rx_buf_out = bytearray()
rx_buf_in = bytearray()
tx_buf_out = bytearray()
tx_buf_in = bytearray()
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

class PIDState:
    
    def __init__(self, sensor, targetTemp, targetHeat=5, kp=100.0, ki=1., kd=40.):
        self._sensor = sensor
        self.targetTemp = targetTemp
        self.targetHeat = targetHeat
        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.
        self.u = 0.
        self.delta_u = 0.
        self.k1 = kp + ki +kd
        self.k2 = -kp - 2*kd
        self.k3 = kd
        
    @property
    def temp(self):
        return self._sensor.temperature



async def PIDControl(PID, interval):
    while True:
        PID.e2 = PID.e1
        PID.e1 = PID.e
        PID.e = PID.targetTemp - PID.temp
        PID.delta_u = PID.k1*PID.e + PID.k2*PID.e1 + PID.k3*PID.e2
        PID.u = PID.u + PID.delta_u
        if (PID.u > 100):
            PID.u = 100.
        elif (PID.u < -100):
            PID.u = -100.
        if (PID.u>0):
            enPin1.duty_cycle = 0
            enPin2.duty_cycle = int((PID.u/100.0) * 65535)
            enPin3.duty_cycle = int((PID.u/100.0) * 65535)
            enPin4.duty_cycle = 0
        elif (PID.u<0):
            enPin1.duty_cycle = int((abs(PID.u)/100.0) * 65535)
            enPin2.duty_cycle = 0
            enPin3.duty_cycle = 0
            enPin4.duty_cycle = int((abs(PID.u)/100.0) * 65535)
        else:
            enPin1.duty_cycle = 0
            enPin2.duty_cycle = 0
            enPin3.duty_cycle = 0
            enPin4.duty_cycle = 0
        await asyncio.sleep(interval)

class Logger:
    
    def __init__(self, startTime):
        self.startTime = startTime
        self.readings = {'u':[],'temp':[],'time':[]}

async def logread(PID, logger, interval):
    while True:
        deltaTime = time.monotonic() - logger.startTime
        logger.readings['u'].append(PID.u)
        logger.readings['temp'].append(PID.temp)
        logger.readings['time'].append(deltaTime)
        await asyncio.sleep(interval)


#async def logwrite(logger, coordinator, interval, serial=True, flash=False):
#    while True:
#        while (coordinator.buffer_out_bytes_free > 12) and (len(logger.readings['u']) > 0):
#            #print(coordinator.buffer_out)
#            u = logger.readings['u'].pop(0)
#            temp = logger.readings['temp'].pop(0)
#            time = logger.readings['time'].pop(0)
#            if serial:
#                struct.pack_into("3f", coordinator.buffer_out, 256-coordinator.buffer_out_bytes_free, u, temp, time)
#                coordinator.buffer_out_bytes_free -= 12
#            if flash:
#                try:
#                    with open("/log.txt", "a") as fp:
#                        fp.write("u: {0:0.3f}, temp: {1:0.3f}, time: {2:0.3f}\n".format(u, temp, time)) 
#                except OSError as e:
#                    print("Error writing to filesystem")
#                    await asyncio.sleep(0.005)
#        await asyncio.sleep(interval)

async def logwrite(logger, coordinator, interval, serial=True, flash=False):
    while True:
        readingsFree = (coordinator.buffer_out_bytes_free // 12)
        if readingsFree > 1:
            if serial:
                struct.pack_into("fxx"*readingsFree, coordinator.buffer_out, 0, logger.readings['u'])
                struct.pack_into("fxx"*readingsFree, coordinator.buffer_out, 4, logger.readings['temp'])
                struct.pack_into("fxx"*readingsFree, coordinator.buffer_out, 8, logger.readings['time'])
                coordinator.buffer_out_bytes_free -= readingsFree*12
            if flash:
                try:
                    with open("/log.txt", "a") as fp:
                        fp.write("u: {0:0.3f}, temp: {1:0.3f}, time: {2:0.3f}\n".format(u, temp, time)) 
                except OSError as e:
                    print("Error writing to filesystem")
                    await asyncio.sleep(0.005)
        await asyncio.sleep(interval)


            #serial.write(bytearray(out.encode()))
            #serial.flush()
            #with open("/log.txt", "a") as fp:
            #    fp.write(out)
            #    fp.flush()

            

class Coordinator:
    
    def __init__(self, serial, buf_in_size=256, buf_out_size=256):
        self.serial = serial
        self.serial.timeout = 0.01
        self.serial.write_timeout = 0.01
        self.buffer_in = bytearray(buf_in_size)
        self.buffer_in_bytes_free = buf_in_size
        self.buffer_out = bytearray(buf_out_size)
        self.buffer_out_bytes_free = buf_out_size
        self.running = 0

async def readSerial(coordinator, interval):
    while True:
        bytesFree = coordinator.buffer_in_bytes_free
        if coordinator.serial.in_waiting > 0:
            bytesRead = coordinator.serial.readinto(coordinator.buffer_in)
            coordinator.buffer_in_bytes_free = bytesFree - 16 * (bytesRead // 16)
        await asyncio.sleep(interval)

async def writeSerial(coordinator, interval):
    while True:
        bytesFree = coordinator.buffer_out_bytes_free
        mv = coordinator.buffer_out
        if (bytesFree < 256):
            coordinator.buffer_out_bytes_free += coordinator.serial.write(mv[:256-bytesFree])
        await asyncio.sleep(interval)
        
#async def queueData(coordinator, logger, interval):
#    while True:
#        bytesFree = coordinator.buffer_out_bytes_free
#        while bytesFree > 64:        
#            if len(logger.readings['u']) > 0:
#                struct.pack_into("f", coordinator.buffer_out, 0, 
#                        logger.readings['u'].pop(0), 
#                        logger.readings['temp'].pop(0), 
#                        logger.readings['time'].pop(0)
#                        )
#            bytesFree = bytesFree - 12
#        await asyncio.sleep(interval)
        
async def readMessages(coordinator, PID, interval):
    while True:
        bytesFree = coordinator.buffer_in_bytes_free
        if  bytesFree < (len(coordinator.buffer_in) - 4):
            message = coordinator.buffer_in[251:]
            coordinator._running = message[0] // 128
            PID.targetTemp = message[1] 
            PID.targetHeat = message[2] / 16
        coordinator.buffer_in_bytes_free += 4;
        await asyncio.sleep(interval)
        



async def main():
    thisLogger = Logger(time.monotonic())
    thisPID = PIDState(sensor, targetTemp, 2.5, 100., 1., 40.)
    thisCoordinator = Coordinator(serial)

    #PID_task = asyncio.wait_for_ms(PIDControl(thisPID, 1.0),50)
    logread_task = asyncio.create_task(logread(thisPID, thisLogger, 0.25))
    logwrite_task = asyncio.wait_for_ms(logwrite(thisLogger,thisCoordinator, 1.0, serial=True, flash=False),5)
    serial_read_task = asyncio.wait_for_ms(readSerial(thisCoordinator, 2.5),1)
    serial_write_task = asyncio.wait_for_ms(writeSerial(thisCoordinator, 2.5),5)
    msg_read_task = asyncio.wait_for_ms(readMessages(thisCoordinator, thisPID, 1.0),1)
    
    #await asyncio.gather(PID_task, logread_task, logwrite_task, serial_read_task, serial_write_task, msg_read_task)
    await asyncio.gather(PID_task, logwrite_task, serial_read_task, serial_write_task, msg_read_task)
    await logread_task

#timer = Timer(period=1000, mode=Timer.PERIODIC, callback=lambda x: x)
#asyncio.run(main())

