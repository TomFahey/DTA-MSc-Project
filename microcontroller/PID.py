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
        return self._sensor.read()



    def update(self,temp):
        self.e2 = self.e1
        self.e1 = PID.e
        self.e = PID.targetTemp - temp
        self.delta_u = self.k1*self.e + self.k2*self.e1 + self.k3*self.e2
        self.u = self.u + self.delta_u
        if (self.u > 100):
            self.u = 100.
        elif (self.u < -100):
            self.u = -100.
        if (self.u>0):
            enPin1.duty_cycle = 0
            enPin2.duty_cycle = int((PID.u/100.0) * 65535)
            enPin3.duty_cycle = int((PID.u/100.0) * 65535)
            enPin4.duty_cycle = 0
        elif (self.u<0):
            enPin1.duty_cycle = int((abs(PID.u)/100.0) * 65535)
            enPin2.duty_cycle = 0
            enPin3.duty_cycle = 0
            enPin4.duty_cycle = int((abs(PID.u)/100.0) * 65535)
        else:
            enPin1.duty_cycle = 0
            enPin2.duty_cycle = 0
            enPin3.duty_cycle = 0
            enPin4.duty_cycle = 0