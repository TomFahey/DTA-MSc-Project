.. _ref_micro_log:

log
---

.. py:module:: log
    :synopsis: Defines a :class:`Log` class, used for reading and caching
        data from sensors. 

    Defines the :class:`Log` class, which is responsible for collating 
    simultaneous readings from :class:`sensor.Sensor` objects and
    periodically pushing these to be sent to the computer, via the
    serial connection.
    

    .. py:class:: Log(interval, sensors=[])
        
       :param interval: Time interval between sensor readings,
           in seconds.
       :type interval: float
       :param sensors: List of :class:`sensor.Sensor` objects to
           read from, defaults to an empty list.
       :type sensors: list

       :ivar sensors: List of :class:`sensor.Sensor` objects to read from
       :type sensors: list
       :ivar config: Provides a dictionary-like interface for
           configuring the :class:`Log` object, such as specifying
           whether sensor readings should be saved.
       :type config: ResponsiveDict
       :ivar readings: Dictionary containing readings from each sensor
           in the :attr:`sensors` list.
       :type readings: dict
       :ivar interval: Time interval between sensor readings,
           in seconds.
       :type interval: float

       **Methods**:

       .. py:method:: add_sensor(new_sensor)

          Add a :class:`sensor.Sensor` object to the :attr:`Log.sensors`
          list.

          :param new_sensor: Sensor to add
          :type sensor: sensor.Sensor

       .. py:method:: update()

          Update the :attr:`Log.readings` dictionary with the latest
          readings from each sensor in the :attr:`Log.sensors` list.

       .. py:method:: read(self num_request)

          Read the latest readings from the :attr:`Log.readings` dictionary.

          :param num_request: Number of readings to return
          :type num_request: int
          :returns: Tuple of the form ``(readings, n)`` where ``readings``
              is a list of the latest ``n`` readings and ``n`` is the
              number of readings returned.
          :rtype: tuple

       .. py:method:: start()

          Start the :class:`Log` object's time sensor 

       .. py:method:: reset()

          Reset all sensors and readings


Code listing
^^^^^^^^^^^^

.. literalinclude:: ./../../../../src/microcontroller/log.py
   :language: python