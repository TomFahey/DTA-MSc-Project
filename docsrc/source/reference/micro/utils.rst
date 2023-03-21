.. _ref_micro_utils:

utils
-----

.. py:module:: utils
   :synopsis: Defines utility class class:`ResponsiveDict``

   .. py:class:: ResponsiveDict(data={})

      :class:`ResponsiveDict` is an extension of the Python dictionary, which 
      adds a 'responsive' callback behaviour for dictionary items, that occurs
      when the items are modified.

      This is intended for scenarios where dictionary objects are used to 
      encode a programme, or routine's 'state', and where modification of
      this state should automatically result in some corresponding behaviour,
      in response to the modification.
    
      This is achieved by overriding the :meth:`__setitem__` function of the 
      Python :external:class:`UserDict` class, which this class inherits from.

      :Example:
    
      >>> import ResponsiveDict
      >>> thermostat_config = ResponsiveDict(
      ...     {
      ...         'POWER' : True,
      ...         'ENABLED': False,
      ...         'CONNECTED': False,
      ...         'TEMPERATURE': 27
      ...     }
      ... ) # Example of a possible thermostat object's configuration
      ...
      >>> # Assign callbacks for when 'POWER' and 'TEMPERATURE' values are modified:
      >>>
      >>> thermostat_config.set_callback(
      ...     key='POWER',
      ...     callback=thermostat.power_sequence
      ... )
      >>> thermostat_config.set_callback(
      ...     key='TEMPERATURE',
      ...     callback=thermostat.update_temp
      ... )
      ...
      >>> # Modify values in dictionary:
      >>> thermostat_config['POWER'] = False     # thermostat.power_sequence((True, False)) called automatically
      >>> thermostat_config['TEMPERATURE'] = 28  # thermostat.update_temp((27, 28)) called automatically
          
      Note that when the specified callback function is called, it is automatically provided with a
      tuple containing the previous value, followed by the new value, in its argument. Therefore,
      callback functions MUST have function signatures that will accept this tuple, even if it isn't
      used in the function body:

      :Example:

      >>> # Acceptable function signature
      >>> def my_good_callback((old, new)):
      ...     if new==True:
      ...         print('True')
      ...     else:
      ...         print('Not True')
      ...
      >>> # Incompatible function signature - will result in error, due to lack of function argument
      >>> def my_bad_callback():
      ...     print('True')
      ...

      The set_callback function also allows optional parameters to be specified too, via the 'args'
      keyword:
          
      >>> thermostat.config.set_callback(
      ...   key      = 'CONNECTED',
      ...   callback = thermostat.handle_connection,
      ...   args     = 'abc123' # WiFi password
      ... )
      ...    
      >>> thermostat.config['CONNECTED'] = True # thermostat.handle_connection((False, True), 'abc123')
      ...                                       # called with additional argument

      Lambda functions can also be used as callbacks, so that a choice of several arbitrary functions
      can be called, depending on the contents of the tuple (old value, new value) matching the
      logic specified in the lambda function:

      :Example:

      >>> # Call switch_on_heater() if new value is 'True', otherwise call switch_off_heater()  
      >>> thermostat.config.set_callback(
      ...   key      = 'ENABLE',
      ...   callback = lambda values, args : thermostat.switch_on_heater if values[1] == 'True'
      ...                                    else thermostat.switch_off_heater
      ...                                    # Here, 'values' is the tuple of (old value, new value)
      ...   args     = None
      ... )
      ...    
      >>> thermostat.config['ENABLED'] = True  # thermostat.switch_on_heater() called
      >>> thermostat.config['ENABLED'] = False # thermostat.switch_off_heater() called

      Notice how the switch_on/off function is *not* called with the (old, new) tuple in its argument
      here, as the tuple was passed to the lambda function, which then returns the switch_on/off
      function by itself.

      An inconvenient edgecase is when a certain change in value should not result in the callback
      function being called e.g:

      :Example:

      >>> print(thermostat.config)
      >>> Config({'POWER' : True,'ENABLED': False, 'CONNECTED': False,'TEMPERATURE': 27}
      >>>
      >>> thermostat.config['POWER'] = True # Will call thermostat.power_sequence(), even though
      ...                                   # new value is same as old
    
      To get around this, one can use the following lambda function body:

      :Example:
    
      >>> # Call power_sequence if 'POWER' value changed, otherwise do nothing  
      >>> thermostat.config.set_callback(
      ...   key      = 'POWER',
      ...   callback = lambda values, args :
      ...                   thermostat.power_sequence(values) if values[1]!=values[0]
      ...                   else None
      ... )

      **Methods**:

      .. py:method:: keys()

         Returns list of keys contained in :attr:`ResponsiveDict.data`

         :return: Return value of :meth:`ResponsiveDict.data.keys()`
         :rtype: list
    
      .. py:method:: values()
          
          Returns list of values contained in :attr:`ResponsiveDict.data`

          :return: Return value of :meth:`ResponsiveDict.data.values()`
          :rtype: list
    
      .. py:method::  items():

          Returns items contained in :attr:`ResponsiveDict.data`

          :return: Return value of :meth:`ResponsiveDict.data.items()`
          :rtype: tuple

      .. py:method:: set_callback(key, callback, args=None):
          
          Associates provided ``callback`` function and (optional) arguments, 
          ``args``, with dictionary item in :attr:`ResponsiveDict.data` 
          matching ``key``
          
          :param key: Key to associate callback with
          :type key: str
          :param callback: Function handle for callback function that will be called,
              when item identified with ``key`` is modified
          :type callback: function
          :param args: Optional arguments to be passed to callback function
          :type args: any

Code listing
^^^^^^^^^^^^

.. literalinclude:: ./../../../../src/microcontroller/utils.py
   :language: python