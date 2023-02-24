Building
========

Assuming that you have all of the required components listed in the :doc:`components` sections, building the system is 
relatively straightforward.

.. _solder-jumpers:

Setting the solder jumpers
--------------------------

Before using the interface boards for the first time, you will need to set the four solder jumpers on the :ref:`microcontroller
interface board <microcontroller_interface_board>`, according to the temperature sensing breakout boards you intend to use. 

Each solder jumper has three pads, which collectively form a switch. To use the Adafruit *MAX31865* (RTD sensors) at Header 1,
for example, you should solder the middle pad to the 'RTD' pad on the right. Likewise, for the *MAX31856* (Thermocouple sensors),
solder the middle pad to the 'TC' pad on the left. All four solder jumpers can be continuously reconfigured, as required.

.. figure:: /images/SolderJumperCloseup.png
    :width: 800px
    :align: center
    :alt: Solder jumpers on the interface board, with SJ2 configured for RTD sensors.

    **Solder jumpers on the interface board, with example of SJ2 configured for RTD sensors.**

.. _connections:

Connecting up the boards
------------------------

The figure below shows the connections for the interface boards:

.. figure:: /images/BoardConnectionDiagram.png
    :width: 800px
    :align: center
    :alt: Connections for the interface boards

After connecting the HAT-MDD10A to the :ref:`motor controller interface board <motor_controller_interface_board>`, the
vertically stacked terminal blocks should be connected together like so:

.. figure:: /images/MotorHatWiring.png
    :width: 800px
    :align: center
    :alt: Stacked terminal blocks

It is a good idea to use slightly longer wires for the connections between the terminals, so that the motor controller can
be lifted off the interface board, without having to disconnect the wires.

The temperature breakout boards connect to the microcontroller interface board via the female 8-pin headers. In the case of the MAX31856,
which has a 9-pin male header, the 9th pin (DRDY) is not used, so can be left unconnected.
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