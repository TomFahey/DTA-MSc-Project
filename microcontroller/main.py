import asyncio
import time

from log import Log
from client import SerialClient
from PID import PIDState
from sensor import TempSensor, TimeSensor, PIDSensor
from setup import *
from utils import ResponsiveDict


class Supervisor:
    
    def __init__(self, serial_client, PID, log):
        
        self.components = [serial_client, PID, log]
        self.client = serial_client
        self.PID = PID
        self.log = log
    
        self.config = ResponsiveDict({'RUN': False, 'MODE': False, 'LOG': False, 'TARGET': 23})
        
    def pull_config(self):
        for msg in list(self.client.buf_in):
            try:
                config = eval(msg.decode('utf-8'))
                for key,val in zip(config.keys(), config.values()):
                    for component in self.components:
                        if key in component.config.keys():
                            component.config[key] = val
                    self.config[key] = val
                self.client.write(b'ACK:'+str(self.config.data).encode('utf-8')+b'\n')
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
        while True:
            lastTimeStamp = time.monotonic_ns()
            self.log.update()
            self.PID.update()
            self.client.update()
            self.pull_config()
            self.push_data()
            self.wait(lastTimeStamp)
            
    def wait(self, lastTimeStamp):
        while(time.monotonic_ns()-lastTimeStamp<25E7):
            time.sleep(0.001)
            
thisPID = PIDState(max31865,kp=3.0, ki=3.0, kd=0.2)

tempSensor = TempSensor('TEMP', max31865)
timeSensor = TimeSensor('TIME')
pidSensor = PIDSensor('PID', thisPID)

thisLog = Log(0.25, [ pidSensor, tempSensor, timeSensor])
thisLog.write()

thisClient = SerialClient()

thisSupervisor = Supervisor(thisClient, thisPID, thisLog)
        

#async def main():
def main():

    

    thisSupervisor.run()

    #PID_task = asyncio.create_task(PIDControl(thisPID, 0.5, thisEvent_a))
    #logread_task = asyncio.create_task(logread(thisPID, thisLogger, thisEvent_b, thisEvent_a))
    #logwrite_task = asyncio.create_task(logwrite(thisLogger,thisCoordinator, 0.25, thisLock, serial=True, flash=False))
    #serial_read_task = asyncio.create_task(readSerial(thisCoordinator, 1.0, thisLock))
    #serial_write_task = asyncio.create_task(writeSerial(thisCoordinator, 0.25, thisLock))
    #msg_read_task = asyncio.create_task(readMessages(thisCoordinator, thisPID, 1.5, thisLock))
    #lock_task = asyncio.create_task(mytimer(thisLock, thisLogger, thisEvent))
    
    #await asyncio.gather(PID_task, logread_task, logwrite_task, serial_read_task, serial_write_task, msg_read_task)
    #await asyncio.gather(PID_task, logread_task, logwrite_task, lock_task, serial_read_task, serial_write_task, msg_read_task)
    #await logread_task
    #await lock_task
    #await logwrite_task
    #await serial_read_task
    #await serial_write_task
    #await msg_read_task

#timer = Timer(period=1000, mode=Timer.PERIODIC, callback=lambda x: x)
#asyncio.run(main())

