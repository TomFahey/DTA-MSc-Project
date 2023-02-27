#!/usr/bin/env python
# coding: utf-8

# In[1]:


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


# In[2]:


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


# In[3]:


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


# In[4]:


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


# In[5]:


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


# In[6]:


"""
Widget definition module: Handles saving data to local or mounted storage, in
CSV format.
"""
from ipywidgets.widgets import VBox, Layout, Label, Select, Text, Button, HBox
from datetime import datetime
import numpy as np
import os

try:
    from webapp.shared import appState
except ImportError:
    appState = None


MOUNTDIR = '/media/pi/'
LOCALDIR = '/home/pi/data/'


# Utility functions:

def detect_mountpoints():
    """
    Returns list of mounted storage devices as list of (name, path) tuples.

    Detects mounted block storage devices under ``/media/pi/`` directory, then
    returns them as a list of tuples, in the format ``(name, path)``, where
    ``name`` is the mountpoint name and ``path`` is the absolute path to the
    mountpoint.

    :return: ``[(name, path), ...]``
    :rtype: ``list(tuple(str, str)))``

    :Example:

    >>> print(detect_mountpoints())
    [('SanDisk', '/media/pi/SanDisk')]

    """
    mountpoints = [(dir, "/media/pi/" + dir) for dir in os.listdir(MOUNTDIR) if dir != "CIRCUITPY"]
    return mountpoints

def save_click(b):
    """Event handler for save_button.

    The callback function for the save_button widget. Saves data to mounted storage device or local
    storage, depending on selection in drive_select widget and filename in filename_input widget.

    :param b: Button widget that triggers the event
    :type b: ipywidgets.widgets.Button
    """
    path = drive_select.value + filename_input.value
    with open(path,'w') as f:
        for key,val in appState.runs[-1].items():
            f.write(f'{key}: ' + ', '.join(np.char.mod('%.2f', val)) +'\n')

def eject_click(b):
    """Event handler for eject_button.

    The callback function for the eject_button widget. Ejects the selected mounted storage device,
    specified by the drive_select widget.

    :param b: Button widget that triggers the event
    :type b: ipywidgets.widgets.Button
    """
    pass

# Widget definitions:

## Text label
label1 = Label('Mounted storage drives:')

drive_select = Select(
    options=[('Local storage', LOCALDIR)] + detect_mountpoints(),
    value=LOCALDIR,
    disabled=False,
    layout=Layout(width='87.5%', height='29.15%',margin='0 0 0 0')
) #: Selection dropdown widget, for selecting desired storage device


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

## Register save_click() function as event handler for save_button
save_button.on_click(save_click)
## Register eject_click() function as event handler for eject_button
eject_button.on_click(eject_click)

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


