.. _webapp_programme:

webapp.programme
----------------


.. automodule:: webapp.programme

   Widget definitions
   ^^^^^^^^^^^^^^^^^^

   |

   .. autoclass:: ProgrammeTab
      :members: new_tab_callback, add_tab, reset

   |

   .. autoclass:: StageTab

   .. jupyter-execute::
       :hide-code:

       import os
       import sys

       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)

       from webapp.programme import StageTab
       display(StageTab())

   |

   .. autoclass:: ControlSlider

   .. jupyter-execute::
       :hide-code:

       import os
       import sys

       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)

       from webapp.programme import ControlSlider
       display(ControlSlider(stage={'R': 100}, target='R'))

   |

   .. autodata:: app
      :annotation: <webapp.programme.ProgrammeTab>

   .. jupyter-execute::
       :hide-code:

       import os
       import sys

       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)

       from webapp.programme import *
       display(app)

|

Code listing
^^^^^^^^^^^^

.. literalinclude:: ../../../../src/dashboard/webapp/programme.py
    :language: python
