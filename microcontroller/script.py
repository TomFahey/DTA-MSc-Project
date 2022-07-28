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

from PID import PIDState
from sensor import TempSensor, TimeSensor, PIDSensor
from log import Log



# Create sensor object, communicating over the board's default SPI bus
spi = busio.SPI(board.GP14, MISO=board.GP12, MOSI=board.GP11)
cs = digitalio.DigitalInOut(board.GP10)  # Chip select of the MAX31865 board.

max31865 = adafruit_max31865.MAX31865(spi, cs, rtd_nominal=1000.0, ref_resistor=4300.0, wires=4,baudrate=5_000_000)
max31865.auto_convert = True
max31865.bias = True

print(max31865._read_u8(0x00))
max31865._write_u8(0x00, 0xC0)
print(max31865._read_u8(0x00))



tempSensor = TempSensor('TEMP', max31865)
thisPIDState = PIDState(tempSensor, 23)
timeSensor = TimeSensor('TIME')
pidSensor = PIDSensor('PID', thisPIDState)

thisLog = Log(0.25, [pidSensor, tempSensor, timeSensor])


