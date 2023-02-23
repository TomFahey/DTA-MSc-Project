Building
========

.. _build:

Build
-----

The DTA utilises the following off-the-shelf parts:

* Raspberry Pi Model B (3+/4), running Raspbian Buster, or newer - `Raspberry Pi OS <https://www.raspberrypi.org/software/>`_.
* Official Raspberry Pi 7" Touchscreen Display - `7" Touchscreen Display <https://www.raspberrypi.org/products/raspberry-pi-touch-display/>`_.
* Raspberry Pi Pico microcontroller - `Raspberry Pi Pico <https://www.raspberrypi.org/products/raspberry-pi-pico/>`_.
* Breakout boards from Adafruit, including:

    * 2x Adafruit MAX31865 RTD Temperature Sensor boards - `MAX31865 RTD Sensor <https://www.adafruit.com/product/3328>`_
    * 2x Adafruit MAX31856 Thermocouple Amplifier boards - `MAX31856 Thermocouple Amplifier <https://www.adafruit.com/product/3263>`_

* Temperature sensors:

    * 2x 4-wire PT100 RTD sensors - `PT100 RTD Sensor <https://www.adafruit.com/product/3328>`_
    * 2x Type T thermocouples - `Type T Thermocouple <https://www.adafruit.com/product/269>`_
    * 1x Type (K/T) thermocouple - `Type (K/T) Thermocouple <https://www.adafruit.com/product/3263>`_

* Motor Controller board by Cytron Technologies: HAT-MDD10 - `HAT-MDD10 <https://www.cytron.io/p-hat-mdd10>`_
* An adjustable DC Power Supply, capable of providing up to 20V at 5A or greater

As well as a number of custom PCBs, the files for which can be found on the project Github page.

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