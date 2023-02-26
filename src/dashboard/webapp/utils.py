
""" 
Functional module: Defines the ResponsiveDict and ResponsiveList classes,
used to implement 'responsive' callbacks when config items are modified.
Also defines the 'Programme' class, which encapsulates information 
relating to a heating run, including number of stages, target temperatures,
heating rate and hold times.
"""
import numpy as np
#import shared.appState as appState
from collections import UserDict, UserList

class ResponsiveDict(UserDict):
    """
    Extension of Python ``dict``, provides assignable callbacks that are called
    when a ``dict`` item is modified.

    ``ResponsiveDict`` is an extension of the Python dictionary, which adds a
    'responsive' callback behaviour for dictionary items, that is called
    when the items are modified.

    This is intended for scenarios where dictionary objects are used to 
    encode a programme, or routine's 'state', and where modification of
    this state should automatically result in some corresponding behaviour,
    in response to the modification.
    
    This is achieved by overriding the ``__setitem__`` function of the Python
    ``UserDict`` class, which this class inherits from.

    :Example:
    
    >>> from webapp.utils import ResponsiveDict
    >>> RGB_config = ResponsiveDict
    ...     {
    ...         'R' : 0,
    ...         'G': 0,
    ...         'B': 255
    ...     }
    ... )
    >>> def announce_RGB_change(channel, value):
    ...     print('RGB channel {} changed to {}'.format(channel, value))
    ...
    >>> RGB_config.set_callback(
    ...     key='R',
    ...     callback=announce_RGB_change
    ... )
    >>> RGB_config['R'] = 255
    'RGB channel R changed to 255'

    """
    def __init__(self, dict_value={}):
        """
        Create an instance of ``ResponsiveDict``, containg the dictionary
        ``dict_value``.
        
        :param dict_value: Dictionary of items to be contained in
            ``ResponsiveDict`` object
        :type dict_value: dict
        :return: ResponsiveDict object containing dictionary dict_value
        :rtype: ResponsiveDict
        """
        super().__init__()
        self.data = dict_value 
        """
        Internal dictionary attribute
        """
        self.callbacks = {key: None for key in self.data.keys()}
        """
        Dictionary of callback functions, one for each item in ``self.data``.
        Initially set to ``None`` for all items.
        """

    def __setitem__(self, key, value) -> None:
        """
        Same as Python ``dict.__setitem__()``, but also calls the associated
        item's callback function, if it exists.

        :param key: The item's key
        :type key: _type_
        :param value: The item's new value to be assigned
        :type value: _type_
        """
        super().__setitem__(key, value)
        if self.callbacks[key] is not None:
            self.callbacks[key](key, value)

    def set_callback(self, key, callback):
        """
        Assign a callback function to the item corresponding to ``key``

        :param key: The dict item's key
        :type key: _type_
        :param callback: A function handle of the form 
            ``callback(key, value)`` where ``key`` is the item's key,
            and ``value`` is the item's new value.

        :type callback: function
        """
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
            self.callbacks[index]((index, item))

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
        self.y_temp = np.array([0.])
        self.y_heat = np.array([0.])

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

    def update_stage(self, *args):
        if (self.current_stage['TEMP'] > self.startingTemp) and \
           (self.current_stage['HEAT'] > 0):
           self.update_sign()
           self.update_xy()

    def next_stage(self):
        self.__current_stage = next(self.__iterator)
    
    def update_sign(self):
        for stage_n, stage_n_1 in zip(self.stages[1:], self.stages[:-1]):
            if stage_n['TEMP'] < stage_n_1['TEMP']:
                stage_n.data['HEAT'] = -1*abs(stage_n['HEAT'])


    def update_xy(self):
        """
        Generates a plot of the temperature over time for the current programme
        Called each time a stage is added, removed, or has its paramaters updated
        """
        stage_temps = [self.startingTemp, *[stage['TEMP'] for stage in self.stages]]
        stage_heats = [stage['HEAT'] for stage in self.stages]
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
        self.y_heat = time_steps
        self.y_temp = self.startingTemp + np.cumsum(time_steps)
        self.x = np.arange(total_time)


    #def check_condition(self, value):
    #    if value >= self.current_stage['COND']:
    #        self.update_stage()
