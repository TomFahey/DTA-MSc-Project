Basic Usage
===========

.. _web_app:

Background
------------

The user interface for the system is built using the `Jupyter Widgets <https://ipywidgets.readthedocs.io/en/stable/>`_ 
interactive browser controls for `Jupyter notebooks <https://jupyter.org/>`_, using `voila <https://voila.readthedocs.io/en/stable/index.html>`_
to render the notebook as a web application. More details on this can be found in the :doc:`software` section.

This automatically launches within the web browser, presenting the user interface on the touchscreen display.

.. _web_interface:

User Interface
--------------

The user interface is presented as a series of navigable tabs:

.. jupyter-execute::
    :hide-code:

    import os
    import sys

    ROOT_DIR = os.path.abspath('../')
    WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
    sys.path.insert(0, WEBAPP_PATH)

    from app import *


.. _web_interface_main:

Main page
^^^^^^^^^

.. figure:: ../images/UserInterfaceMainHighlight.png
   :align: center
   :scale: 50%
   :alt: Web app interface

The main page features the 

1. Nagivation bar, for switching between the user interface pages
2. Control bar - 
3. Activity graph
4. Information bar




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