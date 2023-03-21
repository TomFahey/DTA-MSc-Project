.. _ref_webapp_graph:

webapp.graph
------------

.. automodule:: webapp.graph

   Widget layout
   ^^^^^^^^^^^^^

   .. figure:: ../../images/graph.png
      :align: center
      :scale: 50%
      :alt: Web app UI module structure

   |

   Widget objects
   ^^^^^^^^^^^^^^

   |

   .. autodata:: app
       :annotation: = ipywidgets.widgets.VBox(children=(command_box, fig, info_box))

   .. jupyter-execute::
       :hide-code:

       import os
       import sys
   
       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)
   
       from webapp.graph import app
       display(app)

   |

   .. autodata:: command_box
       :annotation: = ipywidgets.widgets.HBox(children=(b_start, b_stop, b_reset))

   .. jupyter-execute::
       :hide-code:

       import os
       import sys
   
       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)
   
       from webapp.graph import command_box
       display(command_box)

   |

   .. autodata:: fig
       :annotation: = bqplot.Figure(...)

   .. jupyter-execute::
       :hide-code:

       import os
       import sys
   
       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)
   
       from webapp.graph import fig
       display(fig)

   |

   .. autodata:: info_box
       :annotation: = ipywidgets.widgets.VBox(children=(w1, w2, w3))

   .. jupyter-execute::
       :hide-code:

       import os
       import sys
   
       ROOT_DIR = os.path.abspath('../')
       WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
       sys.path.insert(0, WEBAPP_PATH)
   
       from webapp.graph import info_box
       display(info_box)

   |

   Helper functions
   ^^^^^^^^^^^^^^^^

   .. autofunction:: work

|

Code listing
^^^^^^^^^^^^

.. literalinclude:: ../../../../src/dashboard/webapp/graph.py
    :language: python