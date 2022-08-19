import numpy as np
from utils import Programme
import asyncio

global config
global data
global programme
global reading
global connected
config = {'RUN': False, 'MODE': False, 'LOG': False, 'TARGET': 25, 'PID': [1.0, 0.0, 0.0]}
programme = Programme()
data = {'PID': np.array([0.]) ,'TEMP': np.array([0.]), 'DTEMP': np.array([0.]), 'TIME': np.array([0.])}
reading = {'PID': 0, 'TEMP': 0, 'TIME': 0}
connect = False

async def work():
    global config
    global data
    global programme
    global reading
    while True:
        try:
            if (config['RUN']):
                config['LOG'] = True
                while abs(reading['TEMP'] - programme.current_stage['TEMP']) > 0.1:
                    config['MODE'] = True
                    config['TARGET'] = programme.current_stage['HEAT']
                    await asyncio.sleep(0.5)
                holdTime = reading['TIME'] + programme.current_stage['HOLD']
                while reading['TIME'] < holdTime:
                    config['MODE'] = False
                    config['TARGET'] = programme.current_stage['TEMP']
                    await asyncio.sleep(0.5)
                programme.next_stage()
            elif (not config['RUN']):
                config['LOG'] = False
                config['MODE'] = False
                config['TARGET'] = programme.current_stage['TEMP']
                programme.startingTemp = reading['TEMP']
                data['TEMP'][0] = programme.startingTemp
                if len(programme.stages) > 1:
                    programme.update_xy()
                await asyncio.sleep(0.5)
        except:
            await asyncio.sleep(0.5)
        #await asyncio.sleep(0.5)