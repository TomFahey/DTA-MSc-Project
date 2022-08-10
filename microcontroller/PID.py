import setup
import time
from utils import ResponsiveDict

class PIDState:
    
    def __init__(self, sensor, kp=1.0, ki=0., kd=0.):
        self._sensor = sensor
        self.config = ResponsiveDict({'RUN': False,'MODE': False, 'TARGET': self.temp})
        self.config.set_callback('MODE', lambda vals, args :
                                 self.reset() if vals[0]!=vals[1] else None)
        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.
        self.u = 0.
        self.delta_u = 0.
        self.k1 = kp + ki +kd
        self.k2 = -kp - 2*kd
        self.k3 = kd
        self.time1 = 0.
        self.time0 = 0.
        self.Temp1 = self.temp
        self.Temp0 = self.temp
        
    @property
    def temp(self):
        return self._sensor.temperature
    
    def reset(self):
        print('Reset!')
        self.e = 0.
        self.e1 = 0.
        self.e2 = 0.
        self.delta_u = 0.
        self.u = 0.
        self.time0 = time.monotonic()
        self.time1 = time.monotonic()
        self.Temp0 = self.temp
        self.Temp1 = self.temp

    def update(self):
        self.Temp1 = self.temp
        self.time1 = time.monotonic()
        self.e2 = self.e1
        self.e1 = self.e
        if self.config['MODE']:
            self.e = self.config['TARGET']/60. -  \
                     (self.Temp1-self.Temp0)/max((self.time1 - self.time0), 0.05)
        else:
            self.e = self.config['TARGET'] - self.Temp1
        self.delta_u = self.k1*self.e + \
                       self.k2*self.e1 + \
                       self.k3*self.e2
        if self.config['RUN']:
            self.u = self.u + self.delta_u
        else:
            self.u = 0
        print(self.e)
        print(self.u)
        if (self.u > 100):
            self.u = 100.
        elif (self.u < -100):
            self.u = -100.
        if (self.u>0):
            #setup.enPin1.duty_cycle = 0
            #setup.enPin2.duty_cycle = int((self.u/100.0) * 65535)
            #setup.enPin3.duty_cycle = int((self.u/100.0) * 65535)
            #setup.enPin4.duty_cycle = 0
            setup.enPin1.duty_cycle = int((self.u/100.0) * 65535)
            setup.enPin2.value = 1
            setup.enPin3.duty_cycle = int((self.u/100.0) * 65535)
            setup.enPin4.value = 1
        elif (self.u<0):
            #setup.enPin1.duty_cycle = int((abs(self.u)/100.0) * 65535)
            #setup.enPin2.duty_cycle = 0
            #setup.enPin3.duty_cycle = 0
            #setup.enPin4.duty_cycle = int((abs(self.u)/100.0) * 65535)
            setup.enPin1.duty_cycle = int((-self.u/100.0) * 65535)
            setup.enPin2.value = 0
            setup.enPin3.duty_cycle = int((-self.u/100.0) * 65535)
            setup.enPin4.value = 0
        else:
            setup.enPin1.duty_cycle = 0
            #setup.enPin2.duty_cycle = 0
            setup.enPin3.duty_cycle = 0
            #setup.enPin4.duty_cycle = 0