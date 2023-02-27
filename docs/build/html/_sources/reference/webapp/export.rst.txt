.. _webapp_export:

webapp.export
-------------

.. jupyter-execute::
    :hide-code:

    from IPython.core.display import display 
    from ipywidgets.widgets import Image, VBox, Layout, Label, Select, Text, Button, HBox
    from datetime import datetime
    import numpy as np

    MOUNTDIR = '/media/pi/'
    LOCALDIR = '/home/pi/data/'

    label1 = Label('Mounted storage drives:')
    drive_select = Select(
        options=[('Local storage', LOCALDIR)],
        value=LOCALDIR,
        disabled=False,
        layout=Layout(width='87.5%', height='29.15%',margin='0 0 0 0')
    )


    label2 = Label('Filename:') #: Text label
    filename_input = Text(
        value='DATA-{}.csv'.format(datetime.now().strftime('%Y-%m-%d-%H-%M-%S')),
        disabled=False,
        layout=Layout(width='87.5%')
    ) #: Text input widget, for entering desired filename


    input_boxes = VBox(
        children=(label1, drive_select, label2, filename_input),
        layout=Layout(width='90.5%', height='75%', margin='0 0 0 0')
    ) #: Vertical box widget, containing above widgets


    save_button = Button(
        description='Save data',
        disabled=False,
        button_style='success', 
        tooltip='Save readings to mounted storage drive',
        icon='download' 
    ) #: Button widget, "Save data"


    eject_button = Button( 
        description='Eject disk',
        disabled=False,
        button_style='success',
        tooltip='Eject mounted storage drive',
        icon='eject'
    ) #: Button widget, "Eject disk"

    # Horizontal box widget, containing button widgets
    command_buttons = HBox(
        children=(save_button, eject_button),
        layout=Layout(width='90.5%', height='21%', margin='0 0 0 0')
    )

    # Vertical box widget, containing all widgets
    app = VBox(
        children=(input_boxes, command_buttons),
        layout=Layout(width='94%', height='100%', margin='0 0 0 0')
    )

    display(app)


.. automodule:: webapp.export

   Helper Functions:
   ^^^^^^^^^^^^^^^^^

   .. autofunction:: detect_mountpoints

   .. autofunction:: save_click

   .. autofunction:: eject_click

   UI Widget declarations:
   ^^^^^^^^^^^^^^^^^^^^^^^

   .. autodata:: drive_select
      :annotation: <ipywidgets.widgets.Select>

   .. jupyter-execute::                                                                             
       :hide-code:
 
       from IPython.core.display import display 
       from ipywidgets.widgets import Image, VBox, Layout, Label, Select, Text, Button, HBox
       from datetime import datetime
       import numpy as np
 
       MOUNTDIR = '/media/pi/'
       LOCALDIR = '/home/pi/data/'
 
       drive_select = Select(
           options=[('Local storage', LOCALDIR)],
           value=LOCALDIR,
           disabled=False,
           layout=Layout(width='87.5%', height='29.15%',margin='0 0 0 0')
       )

       display(drive_select)

   .. autodata:: filename_input
      :annotation: <ipywidgets.widgets.Text>

   .. jupyter-execute::                                                                             
       :hide-code:
 
       from IPython.core.display import display 
       from ipywidgets.widgets import Image, VBox, Layout, Label, Select, Text, Button, HBox
       from datetime import datetime
       import numpy as np
 
       MOUNTDIR = '/media/pi/'
       LOCALDIR = '/home/pi/data/'
 
       filename_input = Text(
           value='DATA-{}.csv'.format(datetime.now().strftime('%Y-%m-%d-%H-%M-%S')),
           disabled=False,
           layout=Layout(width='87.5%')
       ) 

       display(filename_input)

   .. autodata:: save_button
      :annotation: <ipywidgets.widgets.Button>
    
   .. jupyter-execute::                                                                             
       :hide-code:
 
       from IPython.core.display import display 
       from ipywidgets.widgets import Button
       import numpy as np
 
       save_button = Button(
           description='Save data',
           disabled=False,
           button_style='success', 
           tooltip='Save readings to mounted storage drive',
           icon='download' 
       ) #: Button widget, "Save data"

       display(save_button)

   .. autodata:: eject_button
      :annotation: <ipywidgets.widgets.Button>

   .. jupyter-execute::                                                                             
       :hide-code:
 
       from IPython.core.display import display 
       from ipywidgets.widgets import Button
       import numpy as np
 
       eject_button = Button( 
           description='Eject disk',
           disabled=False,
           button_style='success',
           tooltip='Eject mounted storage drive',
           icon='eject'
       ) #: Button widget, "Eject disk"

       display(eject_button)

Module code listing:
^^^^^^^^^^^^^^^^^^^^

.. jupyter-execute:: ./../../../../src/dashboard/webapp/export.py
