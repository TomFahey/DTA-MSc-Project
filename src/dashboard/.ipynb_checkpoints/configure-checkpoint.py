
# Configuration tab for changing the DTA settings
# Defines a number of slider/text input widgets for adjusting settings
# such as target temperature and heating rate

# Import the widgets we need to use
from ipywidgets import widgets
from ipywidgets.widgets import Label, FloatProgress, FloatSlider, Button, Output, IntSlider
from ipywidgets.widgets import Layout, HBox

# Import global settings, to be able to change the config
import settings

# Define a slider widget for the target temperature
# Options are largely self-explanatory
tempSlider = IntSlider(
    value=22,
    min=0,
    max=200,
    step=1,
    description='Temperature',
    disabled=False,
    continuous_update=False,
    orientation='vertical',
    readout=True,
    readout_format='d')

# Define a slider widget for the target heating rate
heatSlider = FloatSlider(
    value=1.,
    min=0,
    max=8,
    step=0.1,
    description='Heat:',
    disabled=False,
    continuous_update=False,
    orientation='vertical',
    readout=True,
    readout_format='d')


# Define the callback function, which is called when the temperarture slider is changed
# The new value is provided within the parameter `change`
# This is then assigned to the global settings.config['TargetTemp'] variable
def handle_temp_slider_change(change):
    settings.config['TargetTemp'] = change['new']

# Define the callback function, which is called when the heating rate slider is changed
# The new value is provided within the parameter `change`
# This is then assigned to the global settings.config['TargetHeat'] variable
def handle_heat_slider_change(change):
    settings.config['TargetHeat'] = change['new']
    

# The observe function is used to monitor the changes of the slider widgets
# It takes as its parameters the callback function to call when a change is
# detected, as well as the value passed to that callback function
tempSlider.observe(handle_temp_slider_change, names='value')
heatSlider.observe(handle_heat_slider_change, names='value')
    
# Finally, define a horizontal box container for the slider widgets in the app
# This just serves to place the two widgets next to each other, as well as allowing
# us to wrap the page in a single container object, ready to pass to app.py
app = HBox(
    children = (tempSlider, heatSlider),
    layout=Layout(width='270px', height='180px',margin='0 0 0 0')
)
    