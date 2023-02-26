""" Functional module: Defines the AppState class, which holds the state of the 
    application, including its current configuration, data and programme.
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
    AppState is a container/struct-like class designed to store the application
    state.
    
    When the 'top-level' app.py script is first loaded, a single instance of 
    AppState is created by a module import. When the other widget definition
    modules are imported, they share this instance of AppState, allowing the
    application state to be synchronised across the different UI elements.
    
    When the dashboard application is connected to the microcontroller, via
    USB, a serial connection is established. This connection is then used to
    synchronise the AppState.config attribute with an equivalent data structure
    on the microcontroller side. Modifications to the AppState.config attribute
    thereby result in changes in the microcontroller's behaviour, in real time.

    This principle is used to implement the 'heating run' functionnality of the
    system, which is defined in the AppState.work() function. This is called at
    runtime by app.py, and runs asynchronously in the background. When the user
    starts a heating run, via the 'Start' button, AppState.config['RUN'] is set
    true, which in turn causes AppState.work() to enter the first 'if'
    statement, beginning the heating run logic. See AppState.work() for more
    information.

    An initalised AppState object has the following attributes:
    """
    def __init__(self):
        """
        Initialisation function for AppState class. 
        """
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
        """
        Dictionary of values that are synchronised with microcontroller to control its behaviour.

        :ivar RUN: Controls start/stop of heating run (True/False)
        :vartype RUN: ``bool``
        :ivar MODE: Controls heating behaviour, (Ramp/Hold) = (True/False)
        :vartype MODE: ``bool``
        :ivar LOG: Controls logging of data from sensors (True/False)
        :vartype LOG: ``bool``
        :ivar TARGET: Target value for PID algorithm, (Ramp rate [K/min] or 
            Hold temperature [degC])
        :vartype TARGET: ``int``/``float``
        :ivar KP: Proportional gain for PID algorithm
        :vartype KP: ``int``/``float``
        :ivar KD: Derivative gain for PID algorithm
        :vartype KD: ``int``/``float``
        :ivar KI: Integral gain for PID algorithm
        :vartype KI: ``int``/``float``
        :ivar INTERVAL: 'Tick' interval for microcontroller routine, in seconds
        :vartype INTERVAL: ``float``
        """
        self.programme = Programme() # Heating programme - see utils.py
        """
        Object holding information about the assigned heating programme - see 
        ``webapp.utils.Programme``.
        """
        self.data = {
            'PID': np.array([0.]) ,
            'TEMPA': np.array([0.]),
            'TEMPB': np.array([0.]),
            'TEMPC': np.array([0.]),
            'DTEMP': np.array([0.]),
            'TIME': np.array([0.])
            }
        """
        Dictionary of numpy data arrays, containing data from microcontroller

        :ivar PID: PID algorithm output values - mainly used for debugging 
            purposes
        :vartype PID: ``numpy.ndarray``
        :ivar TEMPA: Temperature values from temperature sensor 1 (SPI_CS0)
        :vartype TEMPA: ``numpy.ndarray``
        :ivar TEMPB: Temperature values from temperature sensor 2 (SPI_CS1)
        :vartype TEMPB: ``numpy.ndarray``
        :ivar TEMPC: Temperature values from temperature sensor 3 (SPI_CS2)
        :vartype TEMPC: ``numpy.ndarray``
        :ivar DTEMP: Temperature values from temperature sensor 4 (SPI_CS3)
        :vartype DTEMP: ``numpy.ndarray``
        :ivar TIME: Corresponding time stamp values for above data
        :vartype TIME: ``numpy.ndarray``
        """
        self.runs = []
        """
        List of dictionaries containing data from previous heating runs.
        """
        self.connected = False
        """
        Flag indicating whether the microcontroller is connected to the 
        dashboard application. Toggled when a heating run is finished, 
        indicating to the microcontroller to reset to idle mode.
        """
        
    async def work(self):
        """ 
        This function implements the logic required for the heating run 
        behaviour.
        
        It is called by app.py at runtime and waits for the attribute
        ``AppState.config['RUN']`` to be set ``True`` (which occurs when the 
        'Start' button is pressed), before entering the main body of the 
        function.
        
        The function uses two sequential while loops to handle the ramp and
        subsequent hold parts of a heating run 'stage'. When both loops are
        satisfied, the programme is advanced to the next stage, until no
        more stages remain, signifying the end of the heating run.

        :async:
        :classmethod:
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
                        self.data = {
                            'PID': np.array([0.]) ,
                            'TEMPA': np.array([0.]), 
                            'TEMPB': np.array([0.]), 
                            'TEMPC': np.array([0.]), 
                            'DTEMP': np.array([0.]), 
                            'TIME': np.array([0.])
                            }
                        self.programme = Programme()
                        self.config = {
                            'RUN': False, 
                            'MODE': False, 
                            'LOG': False, 
                            'TARGET': 25, 
                            'KP': 35.0, 
                            'KD': 2.0, 
                            'KI': 3.5, 
                            'INTERVAL': 0.25
                            }
    
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