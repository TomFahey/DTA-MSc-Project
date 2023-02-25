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

from setup import *
from PID import PIDState
from sensor import TempSensor, TimeSensor, PIDSensor
from log import Log
from client import SerialClient
from main import Supervisor


thisPID = PIDState(max31865, targetTemp, 2.5, 100., 1., 40.)

tempSensor = TempSensor('TEMP', max31865)
thisPIDState = PIDState(tempSensor, 23)
timeSensor = TimeSensor('TIME')
pidSensor = PIDSensor('PID', thisPIDState)

thisLog = Log(0.25, [pidSensor, tempSensor, timeSensor])

thisClient = SerialClient()

thisSupervisor = Supervisor(thisClient, thisPID, thisLog)

