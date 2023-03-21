Interface reference
===================

.. _ref_interface_overview:

Overview
--------

The previous sections covered the implementation of the system-level features
in the web app program [:doc:``_ref_ui_overview``], in addition to the
electronics integration and control handled by the microcontroller program
[:doc:``_ref_micro_overview``].

In order for these two programs to communicate with each other, an additional
python program

Whilst the previous sections covered the implementation of the high-level,
user-facing control of the system [:doc:``_ref_ui_overview``], as well as
the lower-level electronic control routines handled by the
[:doc:``_ref_micro_overview``], the means by which both programs communicate
with each other was not discussed in a lot of detail.











As previously mentioned in the the :doc:`basic` section, the dashboard-style 
user interface for the system is built using a `widget 
<https://ipywidgets.readthedocs.io/en/stable/>`_ based approach, that relies 
on the `Jupyter <https://jupyter.org/>`_ interactive computing platform.


This approach was chosen for the following reasons:

* As a Python-based project, the Jupyter platform is a natural fit, providing a
  popular, well-documented Python environment that is capable of producing rich
  interactive, web-based visualisations, using python libraries and code which 
  should be familiar to undergraduates who have a grounding in Python
  programming.
* Modern web browsers provide an ideal deployment platform for graphical
  applications, offering compatibility across a wide range of devices,
  operating systems and user interfaces (mouse, or touchscreen).

  
.. _ref_server_description:

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

.. literalinclude:: ../../../src/receive.py
    :language: python
