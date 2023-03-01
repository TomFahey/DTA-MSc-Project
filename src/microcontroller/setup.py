"""Setup script for the microcontroller programme.

Provides pin definitions, configuration and initialisation of bus devices
"""
import board
import busio
from adafruit_bus_device.spi_device import SPIDevice
import digitalio
#import adafruit_max31865
from adafruit_max31865 import MAX31865 # lib/adafruit_max31865.py
from adafruit_max31856 import ThermocoupleType, MAX31856 # lib/adafruit_max31856
import pwmio

# Define hardware connections

## SPI pin definitions and configuration
SPI_MISO_PIN = board.GP12
SPI_MOSI_PIN = board.GP11
SPI_SCLK_PIN = board.GP10
SPI_CS_PIN_0 = board.GP14 # MAX31865 #1
SPI_CS_PIN_1 = board.GP13 # MAX31865 #2
SPI_CS_PIN_2 = board.GP9  # MAX31856 #1
SPI_CS_PIN_3 = board.GP8  # MAX31856 #2

SPI_BAUDRATE = 5_000_000 # 5 MHz max clock for ICs

## PWM pin definitions and configuration
PWM_PIN1 = board.GP16
PWM_PIN2 = board.GP17
PWM_PIN3 = board.GP18
PWM_PIN4 = board.GP19
PWM_FREQ = 19_900 # 20 kHz PWM frequency


# Setup SPI bus
SPI = busio.SPI(SPI_SCLK_PIN, MISO=SPI_MISO_PIN, MOSI=SPI_MOSI_PIN)
CS_1 = digitalio.DigitalInOut(SPI_CS_PIN_0)
CS_2 = digitalio.DigitalInOut(SPI_CS_PIN_1)
CS_3 = digitalio.DigitalInOut(SPI_CS_PIN_2)
CS_4 = digitalio.DigitalInOut(SPI_CS_PIN_3)

## Setup SPI devices

### Setup MAX31865 RTD temperature sensor breakout boards

RTD_NOMINAL_RES_PT100 = 100.0
RTD_NOMINAL_RES_PT1000 = 1000.0
RTD_REF_RESISTOR_PT100 = 430.0
RTD_REF_RESISTOR_PT1000 = 4300.0



max31865a = MAX31865(
        SPI,
        CS_1,
        rtd_nominal=RTD_NOMINAL_RES_PT100, 
        ref_resistor=RTD_REF_RESISTOR_PT100,
        wires=4,
        baudrate=SPI_BAUDRATE
    )
"""
"""

max31865b = MAX31865(
        SPI,
        CS_2,
        rtd_nominal=RTD_NOMINAL_RES_PT100, 
        ref_resistor=RTD_REF_RESISTOR_PT100,
        wires=4,
        baudrate=SPI_BAUDRATE
    )

## Configure MAX31865 to run with voltage bias always on and continuous conversion mode
max31865a.auto_convert = True
max31865a.bias = True
max31865b.auto_convert = True
max31865b.bias = True

## Double check configuration by inspecting configuration register and manually writing config value 
## (see datasheet): https://datasheets.maximintegrated.com/en/ds/MAX31865.pdf#page=13
print(max31865a._read_u8(0x00))
max31865a._write_u8(0x80, 0xC1)
print(max31865a._read_u8(0x00))

print(max31865b._read_u8(0x00))
max31865b._write_u8(0x00, 0xC1)
print(max31865b._read_u8(0x00))

### Setup MAX31856 thermocouple temperature sensor breakout board:

max31856a = MAX31856(
        SPI,
        CS_3,                   # Chip Select Pin number (lines 33-37)
        ThermocoupleType.T,     # Thermocouple Type (see lib/adafruit_max31856.py)
        filter_frequency=50,    # 50 Hz or 60 Hz
        auto_conversion=True,   # Auto conversion for faster measurements
        cj_disable=True,        # Disable cold junction compensation to get deltaT
        baudrate=SPI_BAUDRATE
    )
max31856b = MAX31856(
        SPI,
        CS_4,
        ThermocoupleType.K,
        filter_frequency=50,
        auto_conversion=True,
        cj_disable=True,
        baudrate=SPI_BAUDRATE
    )

max31856a_CR1 = max31856a._read_register(0x01, 1)[0]
max31856a._write_u8(0x81, (max31856a_CR1 ^ 0x20)) # Enable averaging mode for MAX31856 (pg 20 in datasheet)



# Setup PWM output for controlling TEC modules

enPin1 = pwmio.PWMOut(PWM_PIN1, frequency=PWM_FREQ, duty_cycle=0)
enPin2 = digitalio.DigitalInOut(PWM_PIN2)
enPin2.direction=digitalio.Direction.OUTPUT
enPin2.value = True

enPin3 = pwmio.PWMOut(PWM_PIN3, frequency=PWM_FREQ, duty_cycle=0)
enPin4 = digitalio.DigitalInOut(PWM_PIN4)
enPin4.direction=digitalio.Direction.OUTPUT
enPin4.value = True

