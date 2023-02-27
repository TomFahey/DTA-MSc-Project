Setup
=====

.. _installation:

Installation
------------

To install the user interface software on the Raspberry Pi, you can use the following commands:

.. code-block:: console

   $ git clone https://github.com/TomFahey/DTA-MSC-Project.git
   $ cd DTA-MSC-Project
   $ sudo python setup.py install

This will install the project, and all of its dependencies, after which the user interface service will start automatically.

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