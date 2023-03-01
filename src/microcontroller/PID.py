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
    """ Configuration dictionary for the PID controller.
    """

    #: Error
    e = 0.

    #: Output value
    u = 0.

    #: Change in output value
    delta_u = 0.

    
    def __init__(self, sensor, kp=1.0, ki=0., kd=0., Ts=0.25):
        self._sensor = sensor
        self.config = ResponsiveDict({'RUN': False,'MODE': False, 'TARGET': self.temp, 'KP': kp, 'KI':ki, 'KD':kd})

        # Debugging
        self.config.set_callback('MODE', lambda vals, args :
                                 self.reset('MODE') if vals[0]!=vals[1] else None)
        self.config.set_callback('KP', lambda vals, args :
                                 self.reset('KP') if vals[0]!=vals[1] else None)
        self.config.set_callback('KD', lambda vals, args :
                                 self.reset('KD') if vals[0]!=vals[1] else None)
        self.config.set_callback('KI', lambda vals, args :
                                 self.reset('KI') if vals[0]!=vals[1] else None)

        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.
        self.u = 0.
        self.delta_u = 0.
        self.k1 = kp + (ki*Ts) +kd/Ts
        self.k2 = -kp - 2*kd/Ts
        self.k3 = kd/Ts
        self.Ts = Ts
        self.time1 = 0.
        self.time0 = 0.
        self.Temp1 = self.temp
        self.Temp0 = self.temp
        
    @property
    def temp(self):
        return self._sensor.temperature
    
    def reset(self, callback=None):
        """Reset PID controller values to defaults
        """
        msg = 'Reset!'
        if callback:
            msg += ' Due to {}'.format(callback)
        print(msg)
        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.
        self.delta_u = 0.
        self.u = 0.
        self.k1 = self.config['KP'] + self.config['KI']*self.Ts + max(self.config['KD'],0.001)/self.Ts
        self.k2 = -self.config['KP'] - 2*max(self.config['KD'],0.001)/self.Ts
        self.k3 = max(self.config['KD'],0.001)/self.Ts
        print(self.config['KP'], self.config['KI'], self.config['KD'])
        self.time0 = time.monotonic()
        self.time1 = time.monotonic()
        self.Temp0 = self.temp
        self.Temp1 = self.temp

    def update(self):
        """Calculate updated values for PWM output
        """
        self.Temp1 = self.temp
        self.time1 = time.monotonic()
        self.e2 = self.e1
        self.e1 = self.e
        if self.config['MODE']:
            self.e = max((self.time1 - self.time0), 0.1)*(self.config['TARGET']/60.) -  \
                     (self.Temp1-self.Temp0)
        else:
            self.e = self.config['TARGET'] - self.Temp1
        self.delta_u = self.k1*self.e + \
                       self.k2*self.e1 + \
                       self.k3*self.e2
        if self.config['RUN']:
            self.u = self.u + self.delta_u
        else:
            self.u = 0
        print('Error: {}'.format(self.e))
        if (self.u > 100):
            self.u = 100.
        elif (self.u < -100):
            self.u = -100.
        if (self.u>0):
            setup.enPin1.duty_cycle = int((self.u/100.0) * 65535)
            setup.enPin2.value = 1
            setup.enPin3.duty_cycle = int((self.u/100.0) * 65535)
            setup.enPin4.value = 1
        elif (self.u<0):
            setup.enPin1.duty_cycle = int((-self.u/100.0) * 65535)
            setup.enPin2.value = 0
            setup.enPin3.duty_cycle = int((-self.u/100.0) * 65535)
            setup.enPin4.value = 0
        else:
            setup.enPin1.duty_cycle = 0
            setup.enPin3.duty_cycle = 0