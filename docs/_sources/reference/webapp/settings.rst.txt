.. _webapp_settings:

webapp.settings
^^^^^^^^^^^^^^^

.. jupyter-execute::
    :hide-code:

    import os
    import sys

    ROOT_DIR = os.path.abspath('../')
    WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
    sys.path.insert(0, WEBAPP_PATH)

    from webapp.settings import *
    display(app)

.. automodule:: webapp.settings

    Widget definitions
    ^^^^^^^^^^^^^^^^^^

    |

    .. autoclass:: ConfigTab

    |

    .. autoclass:: ControlSlider

    |

    .. jupyter-execute::
        :hide-code:

        import os
        import sys

        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)

        from webapp.settings import ControlSlider
        from webapp.shared import appState

        app = ControlSlider(appState.config, 'KP')
        display(app)

    .. autodata:: app

    .. jupyter-execute::
        :hide-code:

        display(app)

Code listing
^^^^^^^^^^^^

.. literalinclude:: ../../../../src/dashboard/webapp/settings.py
    :language: python