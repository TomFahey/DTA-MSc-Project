"""
A wrapper class, used to provide a common interface to the various sensors and
values to log.
"""
import time
import PID

class Sensor:
    """ 
    An abstract wrapper class for objects with data that can be read from

    Can be subclassed to provide a common interface for different types of
    devices. The :meth:`read` method must therefore be overridden to provide
    a meaningful return value.
    """
    def __init__(self, name):
        self.name = name
        
    def read(self):
        """ Read current data value from :class:`Sensor` object

        :return: The current value measured by the sensor
        :rtype: None
        """
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
