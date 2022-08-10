import numpy as np
import settings
from collections import UserDict, UserList

class ResponsiveDict(UserDict):
    """
    The ResponsiveDictionary is an extension of the Python
    dictionary class, which allows for the assignment of
    a user-speficied callable function for each key:value
    pair stored in a given ResponsiveDict object.
    
    This callback function is then called whenever the __setitem__
    operation is performed on the corresponding key:value pair, for
    a ResponsiveDict object. 
    
    # Callback function associated with 'somekey' is called,
    # during assignment
    myResponsiveDict['somekey'] = some_new_value
    
    When the callback function is called, it is automatically
    provided with two parameters:
    
    (val, value) - A tuple of the old value and newly assigned value
    self.__args[key] - An arbitrary value (default is None), that can
                       be provided when the set_callback() function is
                       used.
                       
    With this functionality, a user can define arbitrary dictionaries
    of values, that will automatically carry out some desired behaviour
    whenever their values are modified.
    
    This is especially beneficial for structures where modification of
    a given attribute/parameter should automatically result in some
    corresponding behaviour, without having to constantly check/poll
    the parameter to explicitly see whether it has changed.
    """
    def __init__(self, initialdata):
        super().__init__()
        self.data = initialdata
        self.callbacks = {key: None for key in self.data.keys()}

    def __setitem__(self, key, item) -> None:
        super().__setitem__(key, item)
        if self.callbacks[key] is not None:
            self.callbacks[key](item)

    def set_callback(self, key, callback):
        try:
            self.callbacks[key] = callback
        except KeyError as error:
            pass

class ResponsiveList(UserList):
    def __init__(self, initialdata):
        super().__init__()
        self.data = initialdata
        self.callbacks = [None for item in self.data]

    def __setitem__(self, index, item):
        super().__setitem__(index, item)
        if self.callbacks[index] is not None:
            self.callbacks[index](item)

    def set_callback(self, index, callback):
        try:
            self.callbacks[index] = callback
        except KeyError as error:
            pass

class Programme(object):

    def __init__(self):
        self.stages = ResponsiveList(
            [
                ResponsiveDict(
                    {
                        'TEMP': 23, 
                        'HEAT': 0, 
                        'HOLD': 0
                    }
                )
            ]
        )
        self.__iterator = iter(self.stages)
        self.__current_stage = next(self.__iterator)
        for key in self.stages[0].keys():
            self.stages[0].set_callback(key, self.update_stage)
        self.data = ResponsiveDict(
            {
                'PID': np.array([0.]), 
                'TEMP': np.array([0.]), 
                'TIME': np.array([0.])
            }
        )
        self.startingTemp = 23.
        self.x = np.array([0.])
        self.y = np.array([0.])

    @property
    def current_stage(self):
        return self.__current_stage

    def add_stage(self, arg):
        stage = arg
        if type(stage) is dict:
            stage = ResponsiveDict(stage)
        for key in stage.keys():
            stage.set_callback(key, self.update_stage) 
        self.stages.append(stage)
        self.update_xy()

    def remove_stage(self, stage):
        self.stages.remove(stage)
        self.update_xy()

    def update_stage(self, arg):
        self.update_xy()


    #def next_stage(self):
    #    stage_next = next(self.iterator)
    #    if stage_next['RUN']:
    #        self.data.set_callback('TEMP', lambda valarray: self.check_condition(valarray[-1])) 
    #        self.data.set_callback('TIME', lambda x: None)
    #    elif not stage_next['RUN']:
    #        self.data.set_callback('TEMP', lambda x: None)
    #        self.data.set_callback('TIME', lambda valarray: self.check_condition(valarray[-1]))
    #        stage_next['COND'] += self.data['TIME'][-1]
    #    self.current_stage = stage_next

    def next_stage(self):
        self.__current_stage = next(self.__iterator)

    def update_xy(self):
        """
        Generates a plot of the temperature over time for the current programme
        Called each time a stage is added, removed, or has its paramaters updated
        """
        stage_temps = [self.startingTemp, *[stage['TEMP'] for stage in self.stages]]
        stage_heats = [stage['HEAT'] for stage in self.stages]
        # Need to guard against potential divide by zero errors
        stage_heats = np.maximum(stage_heats, 0.1*len(stage_heats))
        hold_times = [stage['HOLD'] for stage in self.stages]
        temp_diffs = np.ediff1d(stage_temps)
        stage_times = np.cumsum((60*(temp_diffs/stage_heats) + hold_times))
        time_marks = np.array(
            [
                [time_mark - hold_time, time_mark] for time_mark, hold_time 
                                            in zip(stage_times, hold_times)
            ]
            ,dtype=np.int32
            ).flatten()
        time_marks = np.array([0, *time_marks])
        heat_times = [slice(time_marks[i],time_marks[i+1]) for i,j in enumerate(time_marks[:-2])]
        total_time = time_marks[-1]
        time_steps = np.zeros(int(total_time))
        for i, time_slice in enumerate(heat_times[::2]):
                time_steps[time_slice] = stage_heats[i]/60
        self.y = self.startingTemp + np.cumsum(time_steps)
        self.x = np.arange(total_time)


    #def check_condition(self, value):
    #    if value >= self.current_stage['COND']:
    #        self.update_stage()
