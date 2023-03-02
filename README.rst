DIY DTA
=======

Description
-----------

This project contains the assorted code and schematics used in the design of a low-cost Differential Thermal Analysis device. This design utilises off-the-shelf parts, in
conjunction with open source software, to provide a kit-based setup allowing users to explore basic application of the DTA technique, in an intuitive and low-cost manner.

Components
----------

The parts used in this design include:

* Raspberry Pi 4 Model B, running RaspbianOS (Buster)
* Raspberrry Pi Pico microcontroller
* Adafruit MAX31865 and MAX31856 temperature sensing breakout boards
* T-type thermocouple
* RTD sensors
* Cytron HAT-MDD10 motor controller board
* Adjustable DC Power Supply
* Custom PCB boards

Structure
---------

The repository consists of three main parts:

1. The webapp folder contains the python code and .ipynb notebooks which implement the widget-based user interface. This is intended to be run on a small board computer (SBC), such as a Raspberry Pi Model B (preferably running Raspbian OS), using the JupyterLab web-based interactive development environment. voila-dashboard, is used as a server extension within Jupyter, for deployment as a standalone web application.
2. The microcontroller folder contains the python code to be run on a CircuitPython compatible microcontroller (Raspberry Pi Pico), which interfaces with the SBC via USB.
3. The pcb folder contains the Autodesk Eagle files for the PCBs used by the system.

Documentation
-------------

The documentation for this project is available at `DIY-DTA <https://tomfahey.github.io/DTA-MSc-Project/>`_