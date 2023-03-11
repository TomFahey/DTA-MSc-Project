Setup
=====

.. _installation:

Installation
------------

To install the user interface software on the Raspberry Pi, you can use the 
following commands:

.. code-block:: console

   $ git clone https://github.com/TomFahey/DTA-MSC-Project.git
   $ cd DTA-MSC-Project
   $ pip install -r requirements.txt
   $ sudo mkdir -p /usr/local/bin/DTA/dashboard
   $ sudo cp -r src/dashboard /usr/local/bin/DTA/
   $ sudo cp src/receive.py /usr/local/bin/DTA/
   $ sudo cp etc/systemd/* /etc/systemd/system/
   $ sudo systemctl daemon-reload
   $ sudo systemctl enable DTA-jupyter.service DTA-chrome.service DTA-interface.service
   $ sudo systemctl start DTA-jupyter.service DTA-chrome.service DTA-interface.service

This will install the project, and all of its dependencies, after which the 
user interface service will start automatically.

To disable the user interface service, you can use the following command:

.. code-block:: console

   $ sudo systemctl disable DTA-jupyter.service DTA-chrome.service DTA-interface.service
   $ sudo systemctl stop DTA-jupyter.service DTA-chrome.service DTA-interface.service

Before installing the microcontroller code to the Raspberry Pi Pico, you will need to
install the CircuitPython UF2 bootloader. To do this, you can follow the instructions
provided on the `Adafruit <https://learn.adafruit.com/getting-started-with-raspberry-pi-pico-circuitpython/circuitpython>`_
website.

Once CircuitPython is installed, to install the microcontroller code, simply mount the Pico's filesystem
and copy the contents of the ``src/microcontroller/`` directory to the root of the filesystem.

.. code-block:: console

   $ sudo cp -r src/microcontroller/* <PICO_MOUNTPOINT>

The microcontroller code will then be automatically compiled and flashed to the Pico. Once the
command completes, the Pico will automatically reboot.