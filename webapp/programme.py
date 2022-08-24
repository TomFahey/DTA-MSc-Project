# Configuration tab for changing the DTA settings
# Defines a number of slider/text input widgets for adjusting settings
# such as target temperature and heating rate

# Import the widgets we need to use
from ipywidgets import widgets
from ipywidgets.widgets import FloatSlider, Button, IntSlider, Tab, Accordion
from ipywidgets.widgets import Layout, HBox
from IPython.core.display import display, HTML # IPython Notebook functions
from importlib import reload


import asyncio

# Import global settings, to be able to change the config
import settings
from utils import ResponsiveDict

class ProgrammeTab(widgets.Tab):
    def __init__(self,  **kwargs):
        global settings
        super().__init__(
            children =
            [
                *[StageTab(stage) for stage in settings.programme.stages],
                StageTab()
            ],
            **kwargs
        )
        for i, _ in enumerate(settings.programme.stages):
            self.set_title(i, 'Stage {}:'.format(i+1))
        self.set_title(len(settings.programme.stages), '+')
        self.selected_index = 0
        self.observe(self.new_tab_callback, names='selected_index')

    def new_tab_callback(self, change):
        tab_index = change['new']
        if tab_index == len(self.children)-1:
            self.add_tab()
        

    def add_tab(self):
        if len(settings.programme.stages) > 0:
            new_stage =settings.programme.stages[-1].copy()
            settings.programme.add_stage(new_stage)
        else:
            settings.programme.add_stage({'TEMP:': 23, 'HEAT': 0, 'HOLD': 0})
        tabs = [StageTab(stage) for stage in settings.programme.stages]
        self.children = [*tabs, StageTab()]
        for i, stage in enumerate(settings.programme.stages):
            self.set_title(i, 'Stage {}'.format(i+1))
        self.set_title(len(settings.programme.stages), '+')
        self.selected_index = len(self.children) - 2

    def reset(self):
        global settings
        reload(settings)
        self.__init__()
        for index, child in enumerate(self.children):
            if child.stage is not settings.programme.stages[index]:
                child.stage = settings.programme.stages[index]


class StageTab(widgets.Accordion):
    def __init__(self, stage=
        ResponsiveDict(
            {
               'TEMP': 23, 
               'HEAT': 0, 
               'HOLD': 0
            }
        ),
        **kwargs
    ):
        self.stage = stage
        super().__init__(
            children= 
            [
                ControlSlider(self.stage, 'TEMP'), 
                ControlSlider(self.stage, 'HEAT'),
                ControlSlider(self.stage, 'HOLD')
            ],
            layout=Layout(width='240px'),
            **kwargs
        )
        self.set_title(0, 'Target Temperature')
        self.children[0].value=self.stage['TEMP']
        self.children[0].min=24
        self.children[0].max=200
        self.set_title(1, 'Heating rate')
        self.children[1].value=abs(self.stage['HEAT'])
        self.children[1].min=0.001
        self.children[1].max=30
        self.set_title(2, 'Hold Time')
        self.children[2].value=self.stage['HOLD']
        self.children[2].min=0
        self.children[2].max=180

class ControlSlider(widgets.IntSlider):
    def __init__(self, stage, target, **kwargs):
        super().__init__(
            value=22,
            min=0,
            max=200,
            step=1,
            disabled=False,
            continuous_update=False,
            orientation='horizontal',
            readout=True,
            readout_format='d',
            layout=Layout(width='200px'),
            **kwargs
            )
        self.stage = stage
        self.target = target
        self.observe(self.handle_slider_change, names='value')
    
    def handle_slider_change(self, change):
        self.stage[self.target] = change['new']

# Define a slider widget for the target temperature
# Options are largely self-explanatory

# Define a slider widget for the target heating rate


# Define the callback function, which is called when the temperarture slider is changed
# The new value is provided within the parameter `change`
# This is then assigned to the global settings.config['TargetTemp'] variable

# Define the callback function, which is called when the heating rate slider is changed
# The new value is provided within the parameter `change`
# This is then assigned to the global settings.config['TargetHeat'] variable
    

# The observe function is used to monitor the changes of the slider widgets
# It takes as its parameters the callback function to call when a change is
# detected, as well as the value passed to that callback function

# Finally, define a horizontal box container for the slider widgets in the app
# This just serves to place the two widgets next to each other, as well as allowing
# us to wrap the page in a single container object, ready to pass to app.py
app = ProgrammeTab(
    layout=Layout(margin='0 0 0 0',maxwidth='260px',maxheight='200px',
                  padding='0 0 0 0')
)