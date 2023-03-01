"""Defines the :class:`Log` class, which is responsible for collating
simultaneous readings from :class:`sensor.Sensor` objects and periodically 
pushing these to be sent to the computer, via the serial connection.
"""
from sensor import Sensor
from utils import ResponsiveDict
#import asyncio

class Log:
    """The :class:`Log` class is responsible for collecting together readings
    from :class:`sensor.Sensor` objects and periodically pushing this data
    to be sent over the serial connection.

    This allows the data transferred over the serial connection to be sent in a
    chunked format - rather than continuously sending after each reading -
    thereby reducing the time spent occupying the serial connection.

    Parameters
    ----------

    :param interval: Time interval between sensor readings, in seconds
    :type interval: float
    :param sensors: List of :class:`Sensor` objects to read from,
        defaults to []
    :type sensors: list(:class:`Sensor`), optional
    """

    # Attributes:

    sensors = []
    """List of :class:`sensor.Sensor` objects to read from
    """
    config = {'LOG':False, 'INTERVAL': 0.25} 
    """ Provides a dictionary-like interface for configuring
    the :class:`Log` object, such as specifying whether 
    to save all readings to memory or only the most recent.
    """
    readings = {}
    """Dictionary containing readings from each sensor
    in the :attr:`sensors` list.
    """
    interval = 0.25
    """Time interval between sensor readings,
    in seconds.
    """
    
    def __init__(self, interval, sensors=[]):
        """Create a new Log object
        """
        self.sensors = {
            nth_sensor.name: nth_sensor for nth_sensor in sensors
        }
        self.config = ResponsiveDict({'LOG': False, 'INTERVAL': 0.25})
        self.config.set_callback(
            'LOG',              # Key of the dictionary item to monitor
            lambda vals, args : # Function to call when the value changes
                # LOG: False -> True 
                self.start() if vals[0]==False and vals[1]==True else
                # LOG: True -> False
                self.reset() if vals[0]==True and vals[1]==False else
                # No change (print statement used for debugging)
                print('Log callback called')
        )
        self.readings = {
            nth_sensor.name: [nth_sensor.read()] for nth_sensor in sensors
        }
        self.interval = interval
        self.interval_ns = round(interval*1E9, 1)
        
    def add_sensor(self, new_sensor):
        self.sensors.append(new_sensor)
        
    def update(self):
        """Update :attr:`readings` with latest readings from sensors
        """
        # Is the computer requesting readings for a heating run?
        if self.config['LOG']:
            # Append new readings to the end of the list
            for nth_sensor in self.sensors:
                self.readings[nth_sensor].append(
                    self.sensors[nth_sensor].read()
                )
        else:
            # Only store the most recent reading
            for nth_sensor in self.sensors:
                self.readings[nth_sensor][-1] = self.sensors[nth_sensor].read()

    def read(self, num_request):
        """Read the latest readings from the :attr:`readings` dictionary.
                                                                            
           :param num_request: Number of readings to return
           :type num_request: int                                           
           :returns: Tuple of the form ``(readings, n)`` where ``readings`` 
               is a list of the latest ``n`` readings and ``n`` is the      
               number of readings returned.                                 
           :rtype: tuple                                                    
        """
        # Is the computer requesting readings for a heating run?
        if self.config['LOG']:

            # Send multiple readings
            num_stored = len(list(self.readings.values())[0])
            # Is the number of readings requested less than the number stored?
            if num_request < num_stored:
                # Return the number requested
                num_return = num_request
            else:
                # Return the number stored minus 1
                num_return = num_stored - 1
            # Readings to send
            readings = {nth_sensor : self.readings[nth_sensor][:num_return]
                            for nth_sensor in self.sensors}
            # Remaining readings
            self.readings = {nth_sensor : self.readings[nth_sensor][num_return:]
                            for nth_sensor in self.sensors}
        else:

            # Send only the most recent reading
            readings ={nth_sensor.name:nth_sensor.read()
                            for nth_sensor in self.sensors.values()}
            num_return = 1
        return (readings, num_return)
    
    def start(self):
        """ Start the :class:`Log` object's time sensor
        """
        print('Started')
        if 'TIME' in self.sensors:
            self.sensors['TIME'].start()

    def reset(self, interval=None):
        """ Reset all sensors and readings
        """
        print('Log reset')
        _ = [nth_sensor.reset() for nth_sensor in self.sensors.values()]
        self.readings = {
            nth_sensor.name: [nth_sensor.read()] for nth_sensor in self.sensors.values()
        }
        if interval:
            self.interval_ns = round(interval*1E9, 1)