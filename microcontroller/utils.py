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
    The ResponsiveDictionary is an extension of the Python
    dictionary class, which allows for the assignment of
    a user-speficied callable function for each key:value
    pair stored in a given ResponsiveDict object.
    
    This callback function is then called whenever the __setitem__
    operation is performed on an instance of ResponsiveDict,
    such as below:
    
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
    def __init__(self, data={}):
        self.data = data
        self.__callbacks = {key:None for key in data.keys()}
        self.__args = {key:None for key in data.keys()}
        
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
    
    def keys(self):
        return self.data.keys()
    
    def items(self):
        return self.data.items()
    
    def values(self):
        return self.data.values()
    
    #def update(self, *args, **kwargs):
    #    for key, val in zip(*args, **kwargs):
    #        self[key] = val
        
    def set_callback(self, key, callback, args=None):
        try:
            self.__callbacks[key] = callback
            self.__args[key] = args
        except KeyError as error:
            pass