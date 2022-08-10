from sensor import Sensor
from utils import Config

class Log:
    
    def __init__(self, interval, sensors=[]):
        
        self.sensors = {sensor.name:sensor for sensor in sensors}
        self.config = Config({'LOG': False})
        self.config.set_callback('LOG', lambda vals, args :
                                 self.start() if vals[0]==False and vals[1]==True else
                                 self.reset() if vals[0]==True and vals[1]==False else
                                 None)
        self.readings = {sensor.name:[sensor.read()] for sensor in sensors}
        self.interval = interval
        self.interval_ns = round(interval*1E9, 1)
        #self.__nextTimeStamp = round(interval*1E9, 1)
        
    def add_sensor(self, sensor):
        self.sensors.append(sensor)
        
    def write(self):
        for sensor in self.sensors:
            self.readings[sensor].append(self.sensors[sensor].read())
            
    def update(self):
        if self.config['LOG']:
            for sensor in self.sensors:
                self.readings[sensor].append(self.sensors[sensor].read())
        else:
            for sensor in self.sensors:
                self.readings[sensor][-1] = self.sensors[sensor].read()

    def read(self, num_request):
        if self.config['LOG']:
            num_stored = len(list(self.readings.values())[0])
            if num_request < num_stored:
                num_return = num_request
            else:
                num_return = num_stored - 1
            readings = {sensor : self.readings[sensor][:num_return]
                            for sensor in self.sensors}
            self.readings = {sensor : self.readings[sensor][num_return:]
                            for sensor in self.sensors}
        else:
            readings ={sensor.name:sensor.read()
                            for sensor in self.sensors.values()}
            num_return = 1
        return (readings, num_return)
    
    def start(self):
        if 'TIME' in self.sensors:
            self.sensors['TIME'].start()

    def reset(self, interval=None):
        _ = [sensor.reset() for sensor in self.sensors.values()]
        self.readings = {sensor.name:[sensor.read()] for sensor in self.sensors.values()}
        if interval:
            self.interval_ns = round(interval*1E9, 1)
        #self.__nextTimeStamp = round(interval*1E9, 1)