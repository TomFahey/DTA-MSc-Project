from logging import PlaceHolder
from ipywidgets.widgets import Image, VBox, Layout, Label, Select, Text, Button, HBox
from datetime import datetime
import pandas as pd
import numpy as np
import os

from webapp.shared import appState

MOUNTDIR = '/media/pi/'
LOCALDIR = '/home/pi/data/'



def detect_mountpoints():
    mountpoints = [(dir, "/media/pi/" + dir) for dir in os.listdir(MOUNTDIR) if dir != "CIRCUITPY"]
    return mountpoints
    
label1 = Label('Mounted storage drives:')
drive_select = Select(
    options=[('Local storage', LOCALDIR)] + detect_mountpoints(),
    value=LOCALDIR,
    disabled=False,
    layout=Layout(width='87.5%', height='29.15%',margin='0 0 0 0')
)


label2 = Label('Filename:')
filename_input = Text(
    value='DATA-{}.csv'.format(datetime.now().strftime('%Y-%m-%d-%H-%M-%S')),
    disabled=False,
    layout=Layout(width='87.5%')
)


input_boxes = VBox(
    children=(label1, drive_select, label2, filename_input),
    layout=Layout(width='90.5%', height='75%', margin='0 0 0 0')
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
    path = drive_select.value + filename_input.value
    with open(path,'w') as f:
        for key,val in appState.runs[-1].items():
            f.write(f'{key}: ' + ', '.join(np.char.mod('%.2f', val)) +'\n')
    
def eject_click(b):
    pass

save_button.on_click(save_click)
eject_button.on_click(eject_click)

command_buttons = HBox(
    children=(save_button, eject_button),
    layout=Layout(width='90.5%', height='21%', margin='0 0 0 0')
)


app = VBox(
    children=(input_boxes, command_buttons),
    layout=Layout(width='94%', height='100%', margin='0 0 0 0')
)
   

