Advanced Usage
==============

.. _web:

The Jupyter environment
-----------------------

As mentioned in :ref:`_web_app`, the python code used for the user interface
runs inside a Jupyter environment.

The way this works, is that a Jupyter server is started in the root directory
of the project folder, which contains an IPython notebook called
``webapp.ipynb``, under the directory ``PROJECT_DIR/src/dashboard/``. This notebook
features a single cell, which uses the magic command ``%run`` to execute the top-level
python widget module, ``app.py``, which then loads the rest of the user interface
programme.  

.. figure:: ../images/UserInterfaceJupyter.png
   :align: center
   :scale: 50%
   :alt: Jupyter notebook environment

The standalone browser application is then deployed using the voila Jupyter
extension, which converts the notebook into html and javascript, allowing it
to be viewed as a standalone web application.

Using the Jupyter environment
-----------------------------

The dashboard-style web application is intended to provide a straightforward 
graphical user interface to control the system with, approximating those used
by commercial systems.

However, this comes with the limitations that the user is restricted to the
controls and features included by the interface, preventing them from directly
accessing the full details of the system.

For users wishing to access the deeper details of the system, the notebook
environment represents a potent tool, allowing users to interact directly
with system components in a Python environnment, equipped with the full
suite of graphical visualisation tools that Jupyter is known for. 


.. figure:: ../images/UserInterfaceJupyterUse.png
   :align: center
   :scale: 50%
   :alt: Jupyter notebook environment

   Inspecting system state and data with simple Python commands

.. figure:: ../images/UserInterfaceJupyterExplore.png
   :align: center
   :scale: 50%
   :alt: Jupyter notebook environment

   Calculating covariance matrix of temperature against time,
   using the Numpy library.