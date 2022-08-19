
import board
import busio
from adafruit_bus_device.spi_device import SPIDevice
import digitalio
#import adafruit_max31865
from adafruit_max31865 import MAX31865
from adafruit_max31856 import ThermocoupleType, MAX31856
import pwmio

# Define hardware connections

## SPI pin definitions and configuration
SPI_MISO_PIN = board.GP12
SPI_MOSI_PIN = board.GP11
SPI_SCLK_PIN = board.GP14
SPI_CS_PIN_1 = board.GP10 # MAX31865
SPI_CS_PIN_2 = board.GP13 # MAX31856
SPI_BAUDRATE = 5_000_000 # 5 MHz max clock for ICs

## PWM pin definitions and configuration
PWM_PIN1 = board.GP16
PWM_PIN2 = board.GP17
PWM_PIN3 = board.GP18
PWM_PIN4 = board.GP19
PWM_FREQ = 30_000 # 30 kHz PWM frequency


# Setup SPI bus
SPI = busio.SPI(SPI_SCLK_PIN, MISO=SPI_MISO_PIN, MOSI=SPI_MOSI_PIN)
CS_1 = digitalio.DigitalInOut(SPI_CS_PIN_1)
CS_2 = digitalio.DigitalInOut(SPI_CS_PIN_2)

## Setup SPI devices

### Setup MAX31865 RTD temperature sensor breakout boards

RTD_NOMINAL_RES_PT100 = 100.0
RTD_NOMINAL_RES_PT1000 = 1000.0
RTD_REF_RESISTOR_PT100 = 430.0
RTD_REF_RESISTOR_PT1000 = 4300.0



max31865 = MAX31865(
        SPI,
        CS_1,
        rtd_nominal=RTD_NOMINAL_RES_PT100, 
        ref_resistor=RTD_REF_RESISTOR_PT100,
        wires=4,
        baudrate=SPI_BAUDRATE
    )

## Configure MAX31865 to run with voltage bias always on and continuous conversion mode
max31865.auto_convert = True
max31865.bias = True
## Double check configuration by inspecting configuration register and manually writing config value 
## (see datasheet): https://datasheets.maximintegrated.com/en/ds/MAX31865.pdf#page=13
print(max31865._read_u8(0x00))
max31865._write_u8(0x00, 0xC0)
print(max31865._read_u8(0x00))


### Setup MAX31856 thermocouple temperature sensor breakout board:

max31856 = MAX31856(
        SPI,
        CS_2,
        ThermocoupleType.G32,
        filter_frequency=50,
        auto_conversion=True,
        cj_disable=True,
        baudrate=SPI_BAUDRATE
    )

print(max31856._read_register(0x00, 2))


# Setup PWM output for controlling TEC modules
enPin1 = pwmio.PWMOut(PWM_PIN1, frequency=PWM_FREQ, duty_cycle=0)
#enPin2 = pwmio.PWMOut(PWM_PIN2, frequency=PWM_FREQ, duty_cycle=0)
enPin2 = digitalio.DigitalInOut(PWM_PIN2)
enPin2.direction=digitalio.Direction.OUTPUT
enPin2.value = True
enPin3 = pwmio.PWMOut(PWM_PIN3, frequency=PWM_FREQ, duty_cycle=0)
#enPin4 = pwmio.PWMOut(PWM_PIN4, frequency=PWM_FREQ, duty_cycle=0)
enPin4 = digitalio.DigitalInOut(PWM_PIN4)
enPin4.direction=digitalio.Direction.OUTPUT
#enPin4.pull=digitalio.Pull.UP
enPin4.value = True

#  Define global variables

global targetTemp
global kp
global ki
global kd

global k1
global k2
global k3

targetTemp = 70.0
kp = 1.0
ki = 0.
kd = 0.

k1 = kp + ki + kd
k2 = -kp - 2*kd
k3 = kd

e, e1, e2, u, delta_u = (0., 0., 0., 0., 0.)