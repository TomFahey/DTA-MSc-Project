### Import external libraries
import asyncio # Needed for asynchronous, non-blocking processing
import ast     # Needed for parsing ascii messages to python objects
from IPython.core.display import display, HTML # IPython Notebook library functions
from ipywidgets import Tab, Layout # IPyWidgets - the widgets used for the UI e.g buttons, boxes, etc.
import numpy as np

### Import local modules - the pages of the UI app
import graph # Main page, with controls and graph of deltaT
import configure # Configuration page, for changing DTA settings
import imaging # Displays view from thermal imaging camera
import settings as settings # Not a page - this module holds the global variables (data, config)
                # accessed by the other ones

### Setup top-level widget environment
tab = Tab(layout=Layout(margin='0 0 0 0')) # Tab widget - provides ability to switch between children 'tabs'
# Add .app variables from the imported pages, containing their respective widgets 
tab.children = [graph.app, configure.app, imaging.app]
# Set the titles for each page
tab.set_title(0, 'Main')
tab.set_title(1, 'Config')
tab.set_title(2, 'Imaging')

# Some annoying CSS settings to make sure the UI fills the entire screen, without margins
display(HTML("<style>.jp-Cell { padding: 0 !important; }</style>"))
display(HTML("<style>.jp-Notebook { padding: 0 !important;}</style>"))
display(HTML("<style>.body { margin: 0 !important; }</style>"))
display(HTML("<style>.html { margin: 0 !important; }</style>"))
#display(HTML("<style>.jupyter-widgets { margin: 0 !important; }</style>"))

# Adds the 'tab' python object to the HTML webpage, populating it with our app
display(tab)

# This is the routine that the run 
async def work(reader, writer):
    while True:
        msg = await reader.readline()
        try:
            msg = ast.literal_eval(msg.decode('utf-8'))
            if b'DATA' in msg:
                for key,val in zip(msg.keys(), msg.values()):
                    if key in settings.data.keys():
                        settings.data[key] = np.append(settings.data[key], val)
            elif b'ACK' in msg:    
                for key,val in zip(msg.keys(), msg.values()):
                    if key in settings.device_config.keys():
                        settings.device_config[key] = val
            if settings.device_config != settings.local_config:
                writer.write(str(settings.device_config).encode('utf-8'))
                await writer.drain()
        except NameError as err:
            pass
        except SyntaxError as err:
            pass
        await asyncio.sleep(0.05)

async def main():
    reader, writer = await asyncio.open_connection('localhost', 10501)
    await work(reader, writer)


try:
    loop = asyncio.get_running_loop()
except RuntimeError:
    loop = None

if loop and loop.is_running():
    asyncio.run_coroutine_threadsafe(main(), loop)
    asyncio.run_coroutine_threadsafe(graph.work(), loop)