import time
import PID

class Sensor:
    
    def __init__(self, name):
        self.name = name
        
    def read(self):
        return None
    
    def reset(self):
        return True
    
class TempSensor(Sensor):
    
    def __init__(self, name, device, precision=1):
        super().__init__(name)
        self.device = device
        self.precision = precision
        
    def read(self):
        return round(self.device.temperature, self.precision)
    
    #(struct.unpack(">i", max31856a._read_register(0x0C, 3) + bytes(1))[0] >> 13) / (32*1.6*2**17)) * 1000
    
class TimeSensor(Sensor):
    
    def __init__(self, name):
        super().__init__(name)
        self.__startTime = None
        
    @property
    def time_ns(self):
        if self.__startTime:
            return time.monotonic_ns()-self.__startTime
        else:
            return 0.
        
    @property
    def time(self):
        if self.__startTime:
            return round((time.monotonic_ns() - self.__startTime) / 1e9, 3)
        else:
            return 0.
    
    #@property
    #def nextTimeStamp_ns(self):
    #    return self.__nextTimeStamp
    #@property
    #def nextTimeStamp(self):
    #    return round(self.__nextTimeStamp/1e9, 1)   
    #@nextTimeStamp.setter
    #def nextTimeStamp(self, val):
    #    self.__nextTimeStamp = val
    #@nextTimeStamp_ns.setter
    #def nextTimeStamp_ns(self, val):
    #    self.__nextTimeStamp = val
        
    def start(self):
        self.__startTime = time.monotonic_ns()
        return True
        
    def reset(self):
        self.__startTime = None
        return True
        
    def read(self):
        return self.time
    
class PIDSensor(Sensor):
    
    def __init__(self, name, PID):
        super().__init__(name)
        self.PID = PID
        
    def read(self):
        return self.PID.u
