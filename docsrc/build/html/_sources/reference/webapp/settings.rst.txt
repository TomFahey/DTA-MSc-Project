.. _webapp_settings:

webapp.settings
---------------


.. automodule:: webapp.settings

    Widget layout
    ^^^^^^^^^^^^^

    .. figure:: ../../images/settings.png
       :align: center
       :scale: 50%
       :alt: Web app UI module structure

    |

    Widget objects
    ^^^^^^^^^^^^^^

    |

    .. autodata:: app
        :annotation: = ConfigTab(config=appState.config)

    .. jupyter-execute::
        :hide-code:
    
        import os
        import sys
    
        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)
    
        from webapp.settings import *
        display(app)

    |

    Helper classes
    ^^^^^^^^^^^^^^

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

|

Code listing
^^^^^^^^^^^^

.. literalinclude:: ../../../../src/dashboard/webapp/settings.py
    :language: python