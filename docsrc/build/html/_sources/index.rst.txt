.. DTA documentation master file, created by
   sphinx-quickstart on Wed Feb 22 13:59:16 2023.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

#######################################################
DIY Differential Thermal Analyser Project documentation
#######################################################

"""""""
Welcome
"""""""

This documentation covers the design and use of a low cost Differential Thermal Analyser (DTA) instrument, developed as a part of a MSc Project at the University of Birmingham.

The aim of the project is to develop a DTA instrument that can be used in typical undegraduate labs, enabling students to analyse the behaviour of a reasonably broad range of 
polymers in response to heating. 

"""""""""""""""""""""""""""""
How to use the documentation:
"""""""""""""""""""""""""""""

The documentation is structured as follows:

* **Getting Started** - New users will want to start here, to get up to speed
* **Users Guides** - Guides on how to use the system, including more advanced use and debugging
* **Reference** - Reference documentation of hardware and software, useful for developers

.. _getting-started:

***************
Getting Started
***************

Check out the :doc:`start` section for further information, including how to
:ref:`install <installation>` the project.

.. toctree::
   :maxdepth: 2

   start/introduction
   start/components
   start/building
   start/setup


.. _user-guides:

***********
User Guides
***********

.. toctree::
   :maxdepth: 2

   usage/basic
   usage/advanced
   usage/debugging

.. _reference:

*********
Reference
*********

.. toctree::
   :maxdepth: 2

   reference/hardware
   reference/ui-software
   reference/micro-software
   reference/micro-example

******************
Indices and tables
******************

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
