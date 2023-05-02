"""Defines the :class:`PIDState` class, which is responsible for controlling
and regulating the PWM output to the H-bridge, based on the system mode, target
temperature and heat rate.
"""
import setup
import time
#import asyncio
from utils import ResponsiveDict

class PIDState:
    """The :class:`PIDState` class is responsible for controlling and 
    regulating the PWM output from the microcontroller. used to control
    the power delivery to the heating element of the system.

    This is determined by the system mode, target temperature and heat rate,
    during a heating run, with a PID control loop used to calculate the
    appropriate PWM output.

    Parameters
    ----------
    
    :param sensor: The temperature sensor used for the PID control loop
    :type sensor: :class:`TempSensor`
    :param kp: The proportional gain of the PID control loop
    :type kp: float
    :param ki: The integral gain of the PID control loop
    :type ki: float
    :param kd: The derivative gain of the PID control loop
    :type kd: float
    :param Ts: The sampling period of the PID control loop
    :type Ts: float
    """

    # Attributes

    config = ResponsiveDict(
        {
            'RUN': False,       # PWM output enable
            'MODE': False,      # Ramp/Hold mode
            'TARGET': 23,       # Target heat rate / temperature
            'KP': 35.0,         # Proportional gain
            'KI':3.5,           # Integral gain
            'KD':2.0            # Derivative gain
        }
    )
    """Configuration dictionary for the PID controller. As a ResponsiveDict,
    whenever the value of any of the dictionary items in changed, a function
    will be called in response. See the `set_callback` lines in the `__init__`
    method.
    """

    #: Error
    e = 0.

    #: Output value
    u = 0.

    #: Change in output value
    delta_u = 0.

    
    def __init__(self, sensor, kp=1.0, ki=0., kd=0., sample_time=0.25):
        self._sensor = sensor
        self.config = ResponsiveDict(
            {
                'RUN': False,
                'MODE': False, 
                'TARGET': self.temp, 
                'KP': kp, 
                'KI':ki, 
                'KD':kd
                }
            )

        self.config.set_callback('MODE', lambda vals, args :
                             self.reset('MODE') if vals[0]!=vals[1] else None)
        # When 'MODE' value changes, call self.reset('MODE') if 
        # new value != old value
        self.config.set_callback('KP', lambda vals, args :
                             self.reset('KP') if vals[0]!=vals[1] else None)
        # When 'KP' value changes, call self.reset('MODE') if 
        # new value != old value
        self.config.set_callback('KD', lambda vals, args :
                             self.reset('KD') if vals[0]!=vals[1] else None)
        # When 'KD' value changes, call self.reset('MODE') if 
        # new value != old value
        self.config.set_callback('KI', lambda vals, args :
                             self.reset('KI') if vals[0]!=vals[1] else None)
        # When 'KI' value changes, call self.reset('MODE') if 
        # new value != old value

        ### Set initial values

        # Error values
        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.

        # Output value
        self.u = 0.
        # Change in output value
        self.delta_u = 0.

        # Sample time
        self.Ts = sample_time

        # PID algorithm pre-factors
        self.k1 = kp + (ki*self.Ts) + kd/self.Ts
        self.k2 = -kp - 2*kd/self.Ts
        self.k3 = kd/self.Ts

        self.start_time = 0.
        self.current_time = 0.
        self.start_temperature = self.temp
        self.current_temperature = self.temp
        
    @property
    def temp(self):
        """Current temperature value measured by sensor

        :return: Current temperature value
        :rtype: float
        """
        return self._sensor.temperature
    
    def reset(self, trigger=None):
        """Reset PID controller values to defaults

        Can specify optional string `trigger`, to print which config
        value changed, for debugging
        """
        msg = 'Reset!'
        if trigger:
            msg += ' Due to {}'.format(trigger)
        print(msg)
        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.
        self.delta_u = 0.
        self.u = 0.
        self.k1 = self.config['KP'] + self.config['KI']*self.Ts + max(self.config['KD'],0.001)/self.Ts
        self.k2 = -self.config['KP'] - 2*max(self.config['KD'],0.001)/self.Ts
        self.k3 = max(self.config['KD'],0.001)/self.Ts
        self.start_time = time.monotonic()
        self.current_time = time.monotonic()
        self.start_temperature = self.temp
        self.current_temperature = self.temp

        # Print values of Kp, Ki and Kd (useful for debugging)
        print(self.config['KP'], self.config['KI'], self.config['KD'])

    def update(self):
        """This function updates the frequency of the PWM output, as well as
        the direction pin, using the PID algorithm. 
        """
        # Update current temperature and time values
        self.current_temperature = self.temp
        self.current_time = time.monotonic()

        # Set e2 <= e1, e1 <= e
        self.e2 = self.e1
        self.e1 = self.e
    
        # For temperature ramp mode, calculate error as
        # e = start_temperature + (ramp_time * heat_rate) - current_temperature
        if self.config['MODE']:
            ramp_time = max((self.current_time - self.start_time), 0.1)
            heat_rate = self.config['TARGET']/60.
            self.e = self.start_temperature + (ramp_time * heat_rate) - \
                                self.current_temperature

        # For temperature hold mode, calculate error as
        # e = target_temp - current_temp
        else:
            self.e = self.config['TARGET'] - self.current_temperature

        # Calculate required change in output based on PID algorithm
        self.delta_u = self.k1*self.e + \
                       self.k2*self.e1 + \
                       self.k3*self.e2
        
        if self.config['RUN']:
            # If active, modify output
            self.u = self.u + self.delta_u
        else:
            # If idle, set output to 0
            self.u = 0

        # Print error value (useful for debugging)
        print('Error: {}'.format(self.e))

        # PID output limits, bounding output between +100% and -100%
        if (self.u > 100):
            self.u = 100.
        elif (self.u < -100):
            self.u = -100.

        # Set PWM duty cycle and direction pins according to output value
        if (self.u>0):
            # Direction pin set HIGH for positive u
            setup.enPin1.duty_cycle = int((self.u/100.0) * 65535)
            setup.enPin2.value = 1
            setup.enPin3.duty_cycle = int((self.u/100.0) * 65535)
            setup.enPin4.value = 1
        elif (self.u<0):
            # Direction pin set LOW for negative u
            setup.enPin1.duty_cycle = int((-self.u/100.0) * 65535)
            setup.enPin2.value = 0
            setup.enPin3.duty_cycle = int((-self.u/100.0) * 65535)
            setup.enPin4.value = 0
        else:
            # If u=0, set duty cycle to zero
            setup.enPin1.duty_cycle = 0
            setup.enPin3.duty_cycle = 0