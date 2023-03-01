.. _webapp_export:

webapp.export
-------------


.. automodule:: webapp.export

   .. jupyter-execute::
        :hide-code:
   
        import os
        import sys
   
        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)
   
        from webapp.export import *
        display(app)

   |

   Helper functions
   ^^^^^^^^^^^^^^^^

   |

   .. autofunction:: detect_mountpoints

   .. autofunction:: save_click

   .. autofunction:: eject_click

   |

   Widget definitions
   ^^^^^^^^^^^^^^^^^^^

   |

   .. autodata:: drive_select
      :annotation: <ipywidgets.widgets.Select>


   .. jupyter-execute::                                                                             
        :hide-code:
 
        import os
        import sys

        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)

        from webapp.export import *
        display(drive_select)

   |

   .. autodata:: filename_input
      :annotation: <ipywidgets.widgets.Text>


   .. jupyter-execute::                                                                             
        :hide-code:
 
        import os
        import sys

        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)

        from webapp.export import *
        display(filename_input)

   |

   .. autodata:: save_button
      :annotation: <ipywidgets.widgets.Button>

    
   .. jupyter-execute::                                                                             
        :hide-code:
 
        import os
        import sys

        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)

        from webapp.export import *
        display(save_button)

   |

   .. autodata:: eject_button
      :annotation: <ipywidgets.widgets.Button>


   .. jupyter-execute::                                                                             
        :hide-code:
 
        import os
        import sys

        ROOT_DIR = os.path.abspath('../')
        WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
        sys.path.insert(0, WEBAPP_PATH)

        from webapp.export import *
        display(eject_button)

   |

   .. autodata:: app
      :annotation: <ipywidgets.widgets.VBox>


|

Code listing
^^^^^^^^^^^^

.. literalinclude:: ./../../../../src/dashboard/webapp/export.py
   :language: python
