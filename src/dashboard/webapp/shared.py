""" Functional module: Defines the AppState class, which holds the state of the application, including its
    current configuration, data and programme.
"""
import numpy as np
from webapp.utils import Programme,ResponsiveList
from asyncio import sleep as asleep

#global appConfig
#global appData
#global appProgramme
#global appReading
#global appConnected
class AppState:
    """
    The AppState class is a container/struct for the state of the application, which is shared between the
    various UI tab modules, after import. It contains the configuration of the application, data received
    from the microcontroller during a heating run and the entered heating programme.
    """
    def __init__(self):
        self.config = {
            'RUN': False,    # Controls start/stop of heating run (True/False)
            'MODE': False,   # Controls heating behaviour, (Ramp/Hold) = (True/False)
            'LOG': False,    # Controls logging of data from sensors (True/False)
            'TARGET': 25,    # Target value for PID algorithm, (Ramp rate [K/min] or Hold temperature [degC])
            'KP': 35.0,      # Proportional gain for PID algorithm
            'KD': 2.0,       # Derivative gain for PID algorithm
            'KI': 3.5,       # Integral gain for PID algorithm
            'INTERVAL': 0.25 # 'Tick' interval for microcontroller routine, in seconds
            }
        self.programme = Programme() # Heating programme - see utils.py
        self.data = {
            'PID': np.array([0.]) ,  # PID output - mainly used for debugging
            'TEMPA': np.array([0.]), # RTD 1 - reference temperature
            'TEMPB': np.array([0.]), # RTD 2 - sample temperature
            'TEMPC': np.array([0.]), # TC 1 - plate temperature
            'DTEMP': np.array([0.]), # TC 2 - sample-reference delta
            'TIME': np.array([0.])   # Time since start of heating run
            }
        self.runs = []              # List of data dictionaries from previous heating runs
        self.connected = False      # Flag to indicate connection to microcontroller
        
    async def work(self):
        """ 
        This function implements the logic controlling the heating run. 
        
        The behaviour of the microcontroller is determined by 
        """
        while True:
            #breakpoint()
            try:
                if (self.config['RUN']):
                    self.config['LOG'] = True
    
                    while abs(self.data['TEMPC'][-1] - self.programme.current_stage['TEMP']) > 0.1:
                        #breakpoint()
                        if not self.connected:
                            break
                        elif (self.config['RUN']):
                            self.config['MODE'] = True
                            self.config['TARGET'] = self.programme.current_stage['HEAT']
                        else:
                            self.config['MODE'] = False
                            self.config['TARGET'] = self.data['TEMPC'][-1]
                        await asleep(0.5)
    
                    holdTime = self.data['TIME'][-1] + self.programme.current_stage['HOLD']
                    while self.data['TIME'][-1] < holdTime:
                        self.config['MODE'] = False
                        self.config['TARGET'] = self.programme.current_stage['TEMP']
                        if not self.connected:
                            break
                        elif (self.config['RUN']):
                            pass
                        else:
                            holdTime += 0.5
                        await asleep(0.5)
    
                    #breakpoint()
                    try:
                        self.programme.next_stage()
                    except StopIteration:
                        breakpoint()
                        self.runs.append(self.data.copy())
                        self.data = {'PID': np.array([0.]) ,'TEMPA': np.array([0.]), 'TEMPB': np.array([0.]), 'TEMPC': np.array([0.]), 'DTEMP': np.array([0.]), 'TIME': np.array([0.])}
                        self.programme = Programme()
                        self.config = {'RUN': False, 'MODE': False, 'LOG': False, 'TARGET': 25, 'KP': 35.0, 'KD': 2.0, 'KI': 3.5, 'INTERVAL': 0.25}
    
                elif (not self.config['RUN']):
                    self.config['LOG'] = False
                    self.config['MODE'] = False
                    self.config['TARGET'] = self.programme.current_stage['TEMP']
                    self.programme.startingTemp = self.data['TEMPC'][-1]
                    self.data['TEMPC'][0] = self.programme.startingTemp
                    if len(self.programme.stages) > 1:
                        self.programme.update_xy()
                    await asleep(0.5)
            except Exception as e:
                print('Error in appState work loop:')
                print(e)
                await asleep(0.5)
            #await asyncio.sleep(0.5)
        
appState = AppState()