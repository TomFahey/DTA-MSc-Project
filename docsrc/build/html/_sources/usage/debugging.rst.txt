Debugging
=========

.. _usage_debugging_systemd:

Checking systemd service units
------------------------------

If you are having problems with loading the user interface, the easiest thing to
check is whether the service units are running. You can check this by running

.. code-block:: bash

   $ sudo systemctl status DTA-jupyter.service
   $ sudo systemctl status DTA-interface.service
   $ sudo systemctl status DTA-chrome.service

These should return messages that look like the following:

.. code-block:: bash

   ● DTA-jupyter.service - Jupyter server instance serving web accessible GUI for connected DTA instrument
      Loaded: loaded (/etc/systemd/system/DTA-jupyter.service; enabled; vendor preset: enabled)
      Active: active (running) since Wed 2023-03-01 10:43:22 GMT; 24h ago
    Main PID: 19453 (jupyter-server)
       Tasks: 1 (limit: 4915)
      CGroup: /system.slice/DTA-jupyter.service
              └─19453 /usr/bin/python3 /home/pi/.local/bin/jupyter-server /home/pi/Pi-Pico-Prototype

   Mar 01 10:43:39 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:39.918 ServerApp] notebook_shim | extension was successfully loaded.
   Mar 01 10:43:39 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:39.928 LabApp] JupyterLab extension loaded from /home/pi/.local/lib/pytho
   Mar 01 10:43:39 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:39.929 LabApp] JupyterLab application directory is /home/pi/.local/share/
   Mar 01 10:43:39 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:39.967 ServerApp] jupyterlab | extension was successfully loaded.
   Mar 01 10:43:40 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:40.005 ServerApp] voila.server_extension | extension was successfully loa
   Mar 01 10:43:40 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:40.009 ServerApp] Serving notebooks from local directory: /home/pi/Pi-Pic
   Mar 01 10:43:40 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:40.009 ServerApp] Jupyter Server 1.18.1 is running at:
   Mar 01 10:43:40 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:40.009 ServerApp] http://localhost:8888/
   Mar 01 10:43:40 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:40.010 ServerApp]  or http://127.0.0.1:8888/
   Mar 01 10:43:40 raspberrypi jupyter-server[19453]: [I 2023-03-01 10:43:40.010 ServerApp] Use Control-C to stop this server and shut down all ke

The above output shows that the service is running (``Active: active (running)``) and provides the
``STDOUT`` and ``STDERR`` streams from the service. If the service is not running, the ``STDOUT``
messages should provide a clue to what the problem might be.

.. _usage_debugging_jupyter:

Jupyter Lab Debugging
---------------------

For debugging when developing your own extensions for the project, the Jupyter environment provides a
useful debugging tool, shown next to the Kernel selection button in the top right of the Jupyter Lab
interface:

.. figure:: ../images/UserInterfaceJupyterDebugHighlight.png
   :align: center
   :scale: 50%
   :alt: Web app UI module structure

Clicking this button will enable the debugging tool, allowing you to set breakpoints in your code,
that will pause the execution of your code when the breakpoint is reached. This can be useful for
checking the values of variables, as your code is running, to make sure that they are what you
expect them to be. To include a breakpoint in your code, simply add the following line:

.. code-block:: python

   breakpoint()
