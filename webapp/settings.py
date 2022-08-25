import numpy as np
from utils import Programme,ResponsiveList
from asyncio import sleep as asleep

global appConfig
global appData
global appProgramme
global appReading
global appConnected
appConfig = {'RUN': False, 'MODE': False, 'LOG': False, 'TARGET': 25, 'KP': 35.0, 'KD': 2.0, 'KI': 3.5, 'INTERVAL': 0.25}
appProgramme = Programme()
appData = {'PID': np.array([0.]) ,'TEMP': np.array([0.]), 'DTEMP': np.array([0.]), 'TIME': np.array([0.])}
appConnected = False

async def work():
    global appConfig
    global appData
    global appProgramme
    while True:
        try:
            if (appConfig['RUN']):
                appConfig['LOG'] = True
                while abs(appData['TEMP'][-1] - appProgramme.current_stage['TEMP']) > 0.1:
                    appConfig['MODE'] = True
                    appConfig['TARGET'] = appProgramme.current_stage['HEAT']
                    await asleep(0.5)
                holdTime = appData['TIME'][-1] + appProgramme.current_stage['HOLD']
                while appData['TIME'][-1] < holdTime:
                    appConfig['MODE'] = False
                    appConfig['TARGET'] = appProgramme.current_stage['TEMP']
                    await asleep(0.5)
                appProgramme.next_stage()
            elif (not appConfig['RUN']):
                appConfig['LOG'] = False
                appConfig['MODE'] = False
                appConfig['TARGET'] = appProgramme.current_stage['TEMP']
                appProgramme.startingTemp = appData['TEMP'][-1]
                appData['TEMP'][0] = appProgramme.startingTemp
                if len(appProgramme.stages) > 1:
                    appProgramme.update_xy()
                await asleep(0.5)
        except:
            await asleep(0.5)
        #await asyncio.sleep(0.5)