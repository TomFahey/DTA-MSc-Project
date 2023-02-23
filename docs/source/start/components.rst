Components
==========

.. _ShelfParts:

Off-the-Shelf Parts
-------------------

The system utilises the following components:

* Raspberry Pi Model B (3+/4), running Raspbian Buster, or newer - `Raspberry Pi 4 Model B <https://www.raspberrypi.com/products/raspberry-pi-4-model-b/>`_.
* Official Raspberry Pi 7" Touchscreen Display - `7" Touchscreen Display <https://www.raspberrypi.org/products/raspberry-pi-touch-display/>`_.
* Raspberry Pi Pico microcontroller - `Raspberry Pi Pico <https://www.raspberrypi.org/products/raspberry-pi-pico/>`_.
* Micro USB cable
* Breakout boards from Adafruit, including:

    * 2x Adafruit MAX31865 RTD Temperature Sensor boards - `MAX31865 RTD Sensor <https://www.adafruit.com/product/3328>`_
    * 2x Adafruit MAX31856 Thermocouple Amplifier boards - `MAX31856 Thermocouple Amplifier <https://www.adafruit.com/product/3263>`_

* Temperature sensors:

    * 2x 4-wire PT100 RTD sensors - `PT100 RTD Sensor <https://uk.rs-online.com/web/p/rtd-sensors/8919141>`_
    * 2x Type T thermocouples - `Type T Thermocouple <https://uk.rs-online.com/web/p/thermocouples/0158907>`_
    * 1x Type (K/T) thermocouple - `Type (K/T) Thermocouple <https://uk.rs-online.com/web/p/thermocouples/0158907>`_

* Motor Controller board by Cytron Technologies: HAT-MDD10 - `HAT-MDD10 <https://www.cytron.io/p-hat-mdd10>`_

    .. image:: /images/HAT-MDD10A.jpg
        :width: 400px
        :align: center
        :alt: HAT-MDD10 Motor Controller board

* 2x 12V DC motors - `12V DC Motor <https://uk.rs-online.com/web/p/dc-motors/0908152>`_
* An adjustable DC Power Supply, capable of providing up to 20V at 5A or greater
* A capable thermoelectric module (TEC) device, able to pump >10W of heat

.. _CustomParts:

Interface boards
----------------

A set of PCB interface boards are used to connect the microcontroller, breakout boards and other components, the
files of which are available in the `Github repository. <https://github.com/TomFahey/DTA-MSc-Project/tree/master/pcb>`_

These consist of the following:

* Microcontroller and temperature sensor interface board

    .. image:: /images/MicrocontrollerTemperatureSensorBoard.png
        :width: 400px
        :align: center
        :alt: Microcontroller and temperature sensor interface board

    Interfaces with the Raspberry Pi Pico microcontroller and the temperature sensor
    breakout boards.

* Motor controller interface board

    .. image:: /images/MotorControllerBoard.png
        :width: 400px
        :align: center
        :alt: Motor controller interface board

    Interfaces with the HAT-MDD10 motor controller board, via the 40-pin GPIO header, as
    well as the DC power supply.

* Thermoelectric module interface board

    .. image:: /images/ThermoelectricModuleBoard.png
        :width: 400px
        :align: center
        :alt: Thermoelectric module interface board

    Interfaces with the thermoelectric module(s)

The boards connected to each other via Molex 6-pin Micro-Fit cables, available `here. <https://uk.rs-online.com/web/p/wire-to-board-cables/2134263>`_

..
    Creating recipes
    ----------------

    To retrieve a list of random ingredients,
    you can use the ``lumache.get_random_ingredients()`` function:

    .. autofunction:: lumache.get_random_ingredients

    The ``kind`` parameter should be either ``"meat"``, ``"fish"``,
    or ``"veggies"``. Otherwise, :autofunction`lumache.get_random_ingredients`
    will raise an exception.

    .. autoexception:: lumache.InvalidKindError

    >>> import lumache
    >>> lumache.get_random_ingredients()
    ['shells', 'gorgonzola', 'parsley']