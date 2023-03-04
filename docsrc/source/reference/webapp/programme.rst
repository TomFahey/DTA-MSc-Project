.. _webapp_programme:

webapp.programme
----------------


.. automodule:: webapp.programme

   Widget layout
   ^^^^^^^^^^^^^

   .. figure:: ../../images/programme.png
      :align: center
      :scale: 50%
      :alt: Web app UI module structure

   |
   
   Widget objects
   ^^^^^^^^^^^^^^

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

   Helper classes
   ^^^^^^^^^^^^^^

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

|

Code listing
^^^^^^^^^^^^

.. literalinclude:: ../../../../src/dashboard/webapp/programme.py
    :language: python
