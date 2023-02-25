from logging import PlaceHolder
from ipywidgets.widgets import Image, VBox, Layout, Label, Select, Text, Button, HBox
from datetime import datetime
import pandas as pd
import os


import settings

def detect_mountpoints():
    mountpoints = os.listdir('/media/pi/')
    if 'CIRCUITPY' in mountpoints: 
        mountpoints.remove('CIRCUITPY')
    return mountpoints if len(mountpoints) > 0 else None
    
label1 = Label('Mounted storage drives:')
drive_select = Select(
    options=['Local storage'],
    value=None,
    disabled=False,
    layout=Layout(width='280px', height='70px',margin='0 0 0 0')
)

label2 = Label('Filename:')
filename_input = Text(
    value='DATA-{}.csv'.format(datetime.now().strftime('%Y-%m-%d-%H-%M-%S')),
    PlaceHolder='Enter filename',
    disabled=False,
    layout=Layout(width='280px')
)


input_boxes = VBox(
    children=(label1, drive_select, label2, filename_input),
    layout=Layout(width='290px', height='180px', margin='0 0 0 0')
)


save_button = Button(
    description='Save data',
    disabled=False,
    button_style='success', 
    tooltip='Save readings to mounted storage drive',
    icon='download' 
)

eject_button = Button( 
    description='Eject disk',
    disabled=False,
    button_style='success',
    tooltip='Eject mounted storage drive',
    icon='eject'
)

def save_click(b):
    pass
    
def eject_click(b):
    settings.config['RUN'] = False

save_button.on_click(save_click)
eject_button.on_click(eject_click)

command_buttons = HBox(
    children=(save_button, eject_button),
    layout=Layout(width='290px', height='50px', margin='0 0 0 0')
)


app = VBox(
    children=(input_boxes, command_buttons),
    layout=Layout(width='300px', height='240x', margin='0 0 0 0')
)
   

