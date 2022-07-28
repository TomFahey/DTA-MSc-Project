
from sensor import Sensor

class Log:
    
    def __init__(self, interval, sensors=[]):
        
        self.sensors = {sensor.name:sensor for sensor in sensors}
        self.readings = {sensor.name:[sensor.read()] for sensor in sensors}
        self.interval = interval
        self.interval_ns = round(interval*1E9, 1)
        #self.__nextTimeStamp = round(interval*1E9, 1)
        
    def add_sensor(self, sensor):
        self.sensors.append(sensor)
        
    def write(self):
        for sensor in self.sensors:
            self.readings[sensor].append(self.sensors[sensor].read())

    def read(self):
        return {sensor.name:sensor.read() for sensor in self.sensors.values()}
    
    def pop(self, num_request):
        num_stored = len(list(self.readings.values())[0])
        if num_request < num_stored:
            num_return = num_request
        else:
            num_return = num_stored - 2
        readings = {sensor : self.readings[sensor][:num_return]
                        for sensor in self.sensors}
        self.readings = {sensor : self.readings[sensor][num_return:]
                        for sensor in self.sensors}
        return (readings, num_return)

    def reset(self, interval=None):
        _ = [sensor.reset() for sensor in self.sensors.values()]
        self.readings = {sensor.name:[sensor.read()] for sensor in self.sensors.values()}
        if interval:
            self.interval_ns = round(interval*1E9, 1)
        #self.__nextTimeStamp = round(interval*1E9, 1)