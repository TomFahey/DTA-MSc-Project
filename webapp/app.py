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

### Import local modules - the pages of the UI app
import graph # Main page, with controls and graph of deltaT
import programme # Configuration page, for changing DTA settings
import config
import file
#import imaging # Displays view from thermal imaging camera
import settings # Not a page - this module holds the global variables 
                # (data, config) accessed by the other ones

### Setup top-level widget environment
tab = Tab(layout=Layout(margin='0 0 0 0',maxwidth="300",maxheight="220")) # Tab widget - allows switching 
                                           # between children 'tabs'

# Add .app variables from the imported pages, containing their 
# respective widgets 
tab.children = [graph.app, programme.app, config.app, file.app]#, imaging.app]
# Set the titles for each page
tab.set_title(0, 'Main')
tab.set_title(1, 'Programme')
tab.set_title(2, 'Config')
tab.set_title(3, 'Save')
#tab.set_title(2, 'Imaging')

# Some annoying CSS settings to make sure the UI fills the entire screen, without margins
display(HTML("<style>.jp-Cell { padding: 0 !important; }</style>"))
display(HTML("<style>.jp-Notebook { padding: 0 !important;}</style>"))
display(HTML("<style>.body { margin: 0 !important; }</style>"))
display(HTML("<style>.html { margin: 0 !important; }</style>"))
#display(HTML("<style>.jupyter-widgets { margin: 0 !important; }</style>"))

# Adds the 'tab' python object to the HTML webpage, populating it with our app
display(tab)

# This is the routine that handles the datastream from the microcontroller,
# reading in uploaded sensor data and storing it in the global variables,
# as well as monitoring the microcontroller configuration, to ensure it
# is in sync with the DTA Programme that has been programmed.

async def work(reader, writer):
    #breakpoint()
    config = copy.deepcopy(settings.appConfig)
    while settings.appConnected:
        try:
            if config != settings.appConfig:
                update = {key:settings.appConfig[key] for key in settings.appConfig.keys()
                    if config[key] != settings.appConfig[key]}
                writer.write(b'CONFIG:' + str(update).encode('utf-8') +b'\n')
                config = settings.appConfig.copy()
            msg = b'HISTORY:{}\n' if config['RUN'] else b'QUERY:{}\n'
            writer.write(msg)
            await writer.drain()
            msg = await reader.readline()
            msg = msg.split(b'\n')[0].decode('utf-8')
            data = ast.literal_eval(msg)
            for key,val in data.items():
                if key in settings.appData:
                    if settings.appConfig['RUN']:
                        settings.appData[key] = np.append(settings.appData[key], val)
                    else:
                        settings.appData[key] = np.array(val).reshape(1,) if val else settings.appData[key]
            await asyncio.sleep(2*settings.appConfig['INTERVAL'])
        except Exception as e:
            print('Error in main loop')
            print(Exception)
            logging.error(traceback.format_exc())
            await asyncio.sleep(0.2)
    writer.close()
    await writer.wait_closed()
        #await asyncio.sleep(0.2)

#async def write(writer):
#    while True:
#        config = settings.config.copy()
#        writer.write(bytes('CONFIG:' + str(config) +'\n', 'utf-8'))
#        writer.write(b'HISTORY:{}\n' if config['RUN'] else b'QUERY:{}\n')
#        await writer.drain()
#        await asyncio.sleep(0.5)

# This main function is called when the program is run, and sets up the
# TCP connection to the forwarding server that reads the data from the
# microcontroller over the serial port and forwards it over a TCP connection.
async def main():
    global tab
    global settings
    while True:
        breakpoint()
        reader, writer = await asyncio.open_connection('localhost', 10501)
        settings.appConnected = True
        #tab.children = [graph.app, configure.app]#, imaging.app]
        # Set the titles for each page
        #tab.set_title(0, 'Main')
        #tab.set_title(1, 'Config')
        print('Connected to server')
        #worktask = await work(reader, writer)
        print('Entered main')
        #loop.create_task(work(reader,writer))
        await work(reader, writer)
        breakpoint()
        settings.appProgramme.__init__()
        settings.appData['PID'] = np.array([0.])
        settings.appData['TEMP'] = np.array([0.]) 
        settings.appData['TIME'] = np.array([0.])
        settings.appConfig['RUN'] = False
        settings.appConfig['MODE'] = False
        settings.appConfig['LOG'] = False
        settings.appConfig['TARGET'] = 25
        settings.appConfig['PID'] = [1.0, 0.0, 0.0]
        #reload(settings)
        tab.children[1].reset()
        breakpoint()
        tab.children[2].reset()
        #coros = asyncio.gather(worktask)
        #await coros
    


try:
    loop = asyncio.get_running_loop()
except RuntimeError:
    loop = None
    print('RuntimeError: No running loop found')


if loop and loop.is_running():
    #loop.set_debug(True)
    asyncio.run_coroutine_threadsafe(main(), loop)
    asyncio.run_coroutine_threadsafe(graph.work(), loop)
    asyncio.run_coroutine_threadsafe(settings.work(), loop)
    #asyncio.run_coroutine_threadsafe(configure.work(tab.children[1]), loop)
    #loop.create_task(main())
    #loop.create_task(graph.work())
    #loop.create_task(settings.work())
else:
    print('Exited')