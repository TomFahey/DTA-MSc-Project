.. _app:

app
---


.. automodule:: app

   Widget layout
   ^^^^^^^^^^^^^

   .. figure:: ../images/app.png
      :align: center
      :scale: 50%
      :alt: Web app UI module structure

   |

   Widget objects
   ^^^^^^^^^^^^^^

   |

   .. autodata:: tab
      :annotation: <ipywidgets.widgets.Tab>

   .. jupyter-execute::
        :hide-code:

        import os
        import sys
   
        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)
   
        from app import *

   |

   Helper functions
   ^^^^^^^^^^^^^^^^

   .. autofunction:: work

   .. autofunction:: main

|

Code listing
^^^^^^^^^^^^

.. literalinclude:: ../../../src/dashboard/app.py
    :language: python