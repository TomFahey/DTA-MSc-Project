"""
Main programme that is run when the microcontroller powers on.

Defines the :class:`Supervisor` class, which is responsible for:

* Collecting together the various component modules that make up the system,
  which are specified in the :attr:`components` attribute.
* Holding the system state, specified in the :attr:`config` attribute.
* Synchronising the system state with the python code running on the connected
  computer, using the :meth:`pull_config` method.
* Sending recorded sensors data to the computer, using the :meth:`push_data`
  method.
* Executing the main control loop, implemented by the :meth:`Supervisor.run` 
  method.

"""
import asyncio
import time

from log import Log
from client import SerialClient
from PID import PIDState
from sensor import TempSensor, TimeSensor, PIDSensor
from setup import *
from utils import ResponsiveDict


class Supervisor:
    """
    The Supervisor 
    
    """
    def __init__(self, serial_client, PID, log):
        
        self.components = [serial_client, PID, log]
        self.client = serial_client
        self.PID = PID
        self.log = log
    
        self.config = {
             'RUN': False,
             'MODE': False,
             'LOG': False,
             'TARGET': 23,
             'KP': 35.0,
             'KD': 2.0,
             'KI': 3.5,
             'INTERVAL':0.25
            }
        
    def pull_config(self):
        """
        
        """
        for msg in self.client.buf_in.copy():
            try:
                config = eval(msg.decode('utf-8'))
                for key,val in zip(config.keys(), config.values()):
                    for component in self.components:
                        if key in component.config.keys():
                            if component.config[key] != val:
                                component.config[key] = val
                    self.config[key] = val
                self.client.write(b'ACK:'+str(self.config).encode('utf-8')+b'\n')
                self.client.buf_in.remove(msg)
            except NameError as err:
                self.client.buf_in.remove(msg)
            except SyntaxError as err:
                self.client.buf_in.remove(msg)
        
    def push_data(self):
        # Message size scales as approximately 65 + (5+4+5)*(number of readings sent)
        bytesFree = self.client.buf_out_bytes_free
        if bytesFree > 160:
            num_request = (bytesFree -65) // 14
            data, n = self.log.read(num_request)
            message_string = b'DATA:' + str(data).encode('utf-8') + b'\n'
            message_len = len(message_string)
            self.client.buf_out[bytesFree-message_len:bytesFree] = message_string
            self.client.buf_out_bytes_free -= message_len
        

    def run(self):
        _ = [component.update() for component in self.components]
        self.pull_config()
        self.push_data()
        
    def wait(self, lastTimeStamp):
        while(time.monotonic_ns()-lastTimeStamp<self.config['INTERVAL']*1E9):
            time.sleep(0.001)
        return time.monotonic_ns()
            
thisPID = PIDState(max31865b,kp=7.0, ki=2.5, kd=0.1)

tempSensorA = TempSensor('TEMP', max31865a)
tempSensorB = TempSensor('TEMP', max31865b)
dTempSensor = TempSensor('DTEMP', max31856a, precision=2)
timeSensor = TimeSensor('TIME')
pidSensor = PIDSensor('PID', thisPID)

thisLog = Log(0.25, [ pidSensor, tempSensorA, tempSensorB, dTempSensor, timeSensor])

thisClient = SerialClient()

thisSupervisor = Supervisor(thisClient, thisPID, thisLog)
        
def main():
    lastTimeStamp = time.monotonic_ns()
    while True:
        thisSupervisor.run()
        lastTimeStamp = thisSupervisor.wait(lastTimeStamp)

main()