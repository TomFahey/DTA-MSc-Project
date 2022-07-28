### Import external libraries
import asyncio # Needed for asynchronous, non-blocking processing
import struct  # Module for converting byte representation of variables to Python objects
from IPython.core.display import display, HTML # IPython Notebook library functions
from ipywidgets import Tab, Layout # IPyWidgets - the widgets used for the UI e.g buttons, boxes, etc.
import numpy as np

### Import local modules - the pages of the UI app
import graph # Main page, with controls and graph of deltaT
import configure # Configuration page, for changing DTA settings
import imaging # Displays view from thermal imaging camera
import webapp.settings as settings # Not a page - this module holds the global variables (data, config)
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
        bytedata = await reader.read(16)
        u,temp,time = struct.unpack_from("3f", bytedata[0:12])
        settings.data = np.append(settings.data, [[u, temp, time]],axis=0)
        device_config = bytedata[12:]
        command_config = bytearray([
                settings.config['Power']*128,
                settings.config['TargetTemp'],
                settings.config['TargetHeat']*16,
                0
            ])
        if device_config != command_config:
            writer.write(command_config)
            await writer.drain()
        await asyncio.sleep(0.05)

async def main():
    server = await asyncio.start_server(work, 'localhost', 10501)
    addrs = ', '.join(str(addr) for addr in server.sockets)
    print(f'Serving on {addrs}')
    
    async with server:
        await server.serve_forever()


try:
    loop = asyncio.get_running_loop()
except RuntimeError:
    loop = None

if loop and loop.is_running():
    asyncio.run_coroutine_threadsafe(main(), loop)
    asyncio.run_coroutine_threadsafe(graph.work(), loop)