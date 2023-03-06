"""Top-level widget definition module: Handles setup and arrangement of
widgets defined in submodules, as well as connection of dashboard app
to microcontroller.
"""

from ipywidgets.widgets import VBox, Layout, Label, Select, Text, Button, HBox
### Import external libraries
import asyncio # Needed for asynchronous, non-blocking processing
from IPython.core.display import display, HTML # IPython Notebook functions
from ipywidgets import Tab, Layout # IPyWidgets - widgets used for UI e.g 
                                   # buttons, boxes, etc.
import ast
import numpy as np
from numpy import array
import logging
import traceback
from importlib import reload
import copy
from asyncio import sleep as asleep

### Import widget definition modules - the pages of the UI app
from webapp import graph     # Main tab, with controls and graph of deltaT
from webapp import programme # Tab for specifying the DTA programme
from webapp import settings  # Tab for configuring PID parameters and time interval
from webapp import export    # Tab for saving and exporting data to attached filestorage
### Import utility modules
from webapp.shared import appState  # Global variable used to share data between modules
                
# Some annoying CSS settings to make sure the UI fills the entire screen, without margins
display(HTML("<style>.jp-Cell { padding: 0 !important; }</style>"))
display(HTML("<style>.jp-Notebook { padding: 0 !important;}</style>"))
display(HTML("<style>.body { margin: 0 !important; }</style>"))
display(HTML("<style>.html { margin: 0 !important; }</style>"))


tab = Tab(
            layout=Layout(
                margin='0 0 0 0',
                width="100%",
                height="100%"
                ), # Tab widget - allows switching between children 'tabs'
            children = [
                graph.app, 
                programme.app, 
                settings.app, 
                export.app
                ] # Add widgets from submodules to the dashboard app
            )
# Set the titles for each page
tab.set_title(0, 'Main')
tab.set_title(1, 'Programme')
tab.set_title(2, 'Settings')
tab.set_title(3, 'Save')

display(tab)

    
async def work(reader, writer):
    """This is the routine that handles the datastream from the microcontroller,
    reading in uploaded sensor data and storing it in the global variables,
    as well as monitoring the microcontroller configuration, to ensure it
    is in sync with the user interface software.
    """
    global appState
    config = copy.deepcopy(appState.config)
    while appState.connected:
        try:
           # breakpoint()
            if config != appState.config:
                update = {key:appState.config[key] for key in appState.config.keys()
                    if config[key] != appState.config[key]}
                writer.write(b'CONFIG:' + str(update).encode('utf-8') +b'\n')
                config = appState.config.copy()
            msg = b'HISTORY:{}\n' if config['RUN'] else b'QUERY:{}\n'
            writer.write(msg)
            await writer.drain()
            msg = await reader.readline()
            msg = msg.split(b'\n')[0].decode('utf-8')
            data = ast.literal_eval(msg)
            for key,val in data.items():
                if key in appState.data:
                    if appState.config['RUN']:
                        appState.data[key] = np.append(appState.data[key], val)
                    else:
                        appState.data[key] = np.array(val).reshape(1,) if val else appState.data[key]
            await asyncio.sleep(2*appState.config['INTERVAL'])
        except Exception as e:
            print('Error in main loop')
            print(Exception)
            logging.error(traceback.format_exc())
            await asyncio.sleep(0.2)
    writer.close()
    #await writer.wait_closed()
            

async def main():
    global appState
    """This main function is called when the program is run, and sets up the
    TCP connection to the forwarding server that reads the data from the
    microcontroller over the serial port and forwards it over a TCP connection.
    """
    while True:
        # Wait for the connection to the forwarding server to be established
        reader, writer = await asyncio.open_connection('localhost', 10501)

        # Once connected, start work()
        appState.connected = True
        print('Connected to server')
        print('Entered main')
        await work(reader, writer)

        appState.programme.__init__()
        appState.data['PID'] = np.array([0.])
        appState.data['TEMPA'] = np.array([0.]) 
        appState.data['TEMPB'] = np.array([0.]) 
        appState.data['TEMPC'] = np.array([0.]) 
        appState.data['DTEMP'] = np.array([0.]) 
        appState.data['TIME'] = np.array([0.])
        appState.config['RUN'] = False
        appState.config['MODE'] = False
        appState.config['LOG'] = False
        appState.config['TARGET'] = 25
        appState.config['KP'] = 35.0
        appState.config['KI'] = 3.5
        appState.config['KD'] = 2.0
        appState.config['INTERVAL'] = 0.5
        tab.children[1].reset()
        tab.children[2].reset()

try:
    loop = asyncio.get_running_loop()
except RuntimeError:
    loop = None
    print('RuntimeError: No running loop found')
if loop and loop.is_running():
    #loop.set_debug(True)
    asyncio.run_coroutine_threadsafe(main(), loop)
    asyncio.run_coroutine_threadsafe(graph.work(), loop)
    asyncio.run_coroutine_threadsafe(appState.work(), loop)
else:
    print('Exited')