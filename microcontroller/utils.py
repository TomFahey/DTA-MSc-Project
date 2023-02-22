import time

def timeit(func, args):
    startTime = time.monotonic_ns()
    func(args)
    return round((time.monotonic_ns()-startTime)/1e9, 4)

def timeit_ms(func, args):
    startTime = time.monotonic_ns()
    func(args)
    return round((time.monotonic_ns()-startTime)/1e6, 3)

class ResponsiveDict(object):
    """
    The ResponsiveDictionary is a small extension of the Python
    dictionary class, that allows a user-specified callable function
    to be called whenever a dictionary value is changed.
        
    This is useful for situations where an object has a set of properties (often some kind of
    'configuration'), whose values can be modified by other objects; however when the values of
    the properties are changed, an associated behaviour (a callback function) must automatically
    be triggered in response.
        
    e.g: An imaginary 'thermostat' object might make use of ResponsiveDict in the following way:

    > # Define 'config' for thermostat object, holding power, enable and connection state, and
    > # target temperature
    > thermostat.config = ResponsiveDict(
    >    {
    >        'POWER' : True,
    >        'ENABLED': False,
    >        'CONNECTED': False,
    >        'TEMPERATURE': 27
    >    }
    > )
    > 
    > # Assign callbacks for when 'POWER' and 'TEMPERATURE' values are modified:
    > 
    > thermostat.config.set_callback(
    >     key='POWER',
    >     callback=thermostat.power_sequence
    > )
    > thermostat.config.set_callback(
    >     key='TEMPERATURE',
    >     callback=thermostat.update_temp
    > )
    >
    > # Modify values in dictionary:
    > thermostat.config['POWER'] = False     # thermostat.power_sequence((True, False)) called auto
    > thermostat.config['TEMPERATURE'] = 28  # thermostat.update_temp((27, 28)) called automatically

    Note that when the specified callback function is called, it is automatically provided with a
    tuple containing the previous value, followed by the new value, in its argument. Therefore,
    callback functions MUST have function signatures that will accept this tuple, even if it isn't
    used in the function body:

    > # Acceptable function signature
    > def my_good_callback((old, new)):
    >     if new==True:
    >         print('True')
    >     else:
    >         print('Not True')
    >
    > # Incompatible function signature - will result in error, due to lack of function argument
    > def my_bad_callback():
    >     print('True')
    >

    The set_callback function also allows optional parameters to be specified too, via the 'args'
    keyword:
        
    > thermostat.config.set_callback(
    >   key      = 'CONNECTED',
    >   callback = thermostat.handle_connection,
    >   args     = 'abc123' # WiFi password
    > )
    >    
    > thermostat.config['CONNECTED'] = True # thermostat.handle_connection((False, True), 'abc123')     
    >                                       # called with additional argument

    Lambda functions can also be used as callbacks, so that a choice of several arbitrary functions
    can be called, depending on the contents of the tuple (old value, new value) matching the
    logic specified in the lambda function:

    > # Call switch_on_heater() if new value is 'True', otherwise call switch_off_heater()  
    > thermostat.config.set_callback(
    >   key      = 'ENABLE',
    >   callback = lambda values, args : thermostat.switch_on_heater if values[1] == 'True'
    >                                    else thermostat.switch_off_heater
    >                                    # Here, 'values' is the tuple of (old value, new value)
    >   args     = None
    > )
    >    
    > thermostat.config['ENABLED'] = True  # thermostat.switch_on_heater() called
    > thermostat.config['ENABLED'] = False # thermostat.switch_off_heater() called

    Notice how the switch_on/off function is *not* called with the (old, new) tuple in its argument
    here, as the tuple was passed to the lambda function, which then returns the switch_on/off
    function by itself.

    An inconvenient edgecase is when a certain change in value should not result in the callback
    function being called e.g:

    > print(thermostat.config)
    > Config({'POWER' : True,'ENABLED': False, 'CONNECTED': False,'TEMPERATURE': 27}
    >
    > thermostat.config['POWER'] = True # Will call thermostat.power_sequence(), even though
    >                                   # new value is same as old
    
    To get around this, one can use the following lambda function body:
    
    > # Call power_sequence if 'POWER' value changed, otherwise do nothing  
    > thermostat.config.set_callback(
    >   key      = 'POWER',
    >   callback = lambda values, args :
    >                     thermostat.power_sequence(values) if values[1]!=values[0]
    >                     else None
    > )
    
    If the provided return value is 'None' (instead of a callable function), then it
    will be ignored (see line #150), reverting to the behaviour of a normal Python dictionary.
    """
    
    def __init__(self, data={}):
    """
    Initialise ResponsiveDict object.
    @data <class 'dict'> - Python dictionary containing key,value pairs  
    """
        self.data = data
        self.__callbacks = {key:None for key in data.keys()}
        self.__args = {key:None for key in data.keys()}
        
    def keys(self):
    """
    Returns list of keys contained in internal 'data' attribute
    """
        return self.data.keys()
    
    def values(self):
    """
    Returns list of values contained in internal 'data' attribute
    """
        return self.data.values()
    
    def items(self):
    """
    Returns list of (key, val) tuple pairs contained in internal 'data' attribute
    """
        return self.data.items()
    

    def set_callback(self, key, callback, args=None):
    """
    Associates provided 'callback' function and (optional) arguments, 'args', with 'key'
    @key <class 'str'>  - 
    """
        try:
            self.__callbacks[key] = callback
            self.__args[key] = args
        except KeyError as error:
            pass
        
    def __getitem__(self, key):
        return self.data.__getitem__(key)
        
    def __setitem__(self, key, value):
        val = self.data.__getitem__(key)
        if self.__callbacks[key] is not None:
            self.__callbacks[key]((val, value), self.__args[key])
        self.data.__setitem__(key, value)
        
    def __contains__(self, key):
        return key in self.data
        
    def __repr__(self):
        return "{} ({})".format(self.__name__(), self.data)
    
    def __name__(self):
        return 'Config'
    
    def __len__(self):
        return len(self.data)