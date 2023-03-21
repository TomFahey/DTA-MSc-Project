.. _ref_micro_pid:

PID
---

.. py:module:: pid
    :synopsis: Defines the :class:`PIDState` class, used for regulating PWM output to 
        the heating component.

    Defines the :class:`PIDState` class, which is responsible for controlling
    and regulating the PWM output to the H-bridge, based on the system mode, target
    temperature and heat rate.

    .. py:class:: PIDState(sensor, kp, ki, kd, Ts)

       :param sensor: The temperature sensor used for the PID control loop
       :type sensor: :class:`sensor.TempSensor`
       :param kp: The proportional gain of the PID control loop
       :type kp: float
       :param ki: The integral gain of the PID control loop
       :type ki: float
       :param kd: The derivative gain of the PID control loop
       :type kd: float
       :param Ts: The sampling period of the PID control loop
       :type Ts: float

       :ivar config: Provides a dictionary-like interface for
            configuring the :class:`PIDState` object, such as
            specifying output enable, ramp/hold mode, target
            heat rate / hold temperature and PID parameters.
       :vartype config: :class:`ResponsiveDict`
       :ivar e: The error signal of the PID control loop
       :vartype e: float
       :ivar u: The control signal of the PID control loop
       :vartype u: float

       .. py:method:: temp()
          
          :returns: The current temperature of the sensor used for the PID control loop
          :rtype: float

       .. py:method:: reset()

          Reset PID controller values to defaults

       .. py:method:: update()

          Calculate updated values for PWM output

Code listing
^^^^^^^^^^^^

.. literalinclude:: ./../../../../src/microcontroller/PID.py
   :language: python