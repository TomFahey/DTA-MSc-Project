""" 
Widget definition module: Defines UI elements used for adjusting system 
settings, namely PID tuning parameters and the 'tick' interval of the
microcontroller.
"""
from ipywidgets.widgets import Accordion, FloatSlider, Layout
from IPython.core.display import display, HTML # IPython Notebook functions
from importlib import reload
from webapp.shared import appState


class ConfigTab(Accordion):
    """
    Customised subclass of :external:class:`ipywidgets.widgets.Accordion` 
    class, styled to provide a drawer (or 'accordion')-like interface,
    with multiple sliders for adjusting system parameters.

    The :class:`ConfigTab` object contains a number of :class:`ControlSlider`
    objects, which each control a system parameter that can be adjusted,
    such as PID tuning parameters.
    """
    def __init__(self, config= appState.config, **kwargs):
        """Initialse new ``ConfigTab`` object

        :param config: A dictionary of configuration parameters, defaults to 
            ``appState.config``
        :type config: _type_, optional
        :return: ``ConfigTab`` object
        :rtype: ``webapp.settings.ConfigTab``
        """
        self.config = config
        super().__init__(
            children= 
            [
                ControlSlider(self.config, 'KP'), 
                ControlSlider(self.config, 'KD'),
                ControlSlider(self.config, 'KI'),
                ControlSlider(self.config, 'INTERVAL')
            ],
            #layout=Layout(width='240px'),
            **kwargs
        )
        self.set_title(0, 'Proportional gain')
        self.children[0].value=self.config['KP']
        self.children[0].min=0
        self.children[0].step=0.5
        self.children[0].max=100
        self.set_title(1, 'Integral gain')
        self.children[1].value=self.config['KD']
        self.children[1].min=0
        self.children[1].step=0.5
        self.children[1].max=100
        self.set_title(2, 'Derivative gain')
        self.children[2].value=self.config['KI']
        self.children[2].min=0
        self.children[2].step=0.5
        self.children[2].max=100
        self.set_title(3, 'Time interval')
        self.children[3].value=self.config['INTERVAL']
        self.children[3].min=0
        self.children[3].step=0.05
        self.children[3].max=5

    def reset(self):
        self.__init__()
        for child in self.children:
            child.config = appState.config


class ControlSlider(FloatSlider):
    """
    Customised subclass of :external:class:`ipywidgets.widgets.FloatSlider`` 
    widget, modified so that it automatically takes a dictionary containing
    items it can modify (:param:`config`) and a target 'key' from the dictionary,
    specifying the specific item it should modify (:param:`target`).
    
    """
    def __init__(self, config, target, **kwargs):
        """
        Initialise a new ``ControlSlider`` object, to control the value of
        :param:`config`[:param:`target`].

        :param config: A dictionary of configuration parameters, defaults to 
            :attr:`webapp.shared.appState.config`
        :type config: ``dict``
        :param target: Dictionary key for the parameter in :param:`config` that
        the slider will control
        :type target: ``str``
            
        :return: :class:`ConfigTab` object
        :rtype: :class:`webapp.settings.ConfigTab`
        """
        super().__init__(
            value=1,
            min=0,
            max=100,
            step=0.05,
            disabled=False,
            continuous_update=False,
            orientation='horizontal',
            readout=True,
            readout_format='.2f',
            layout=Layout(width='62.5%'),
            **kwargs
            )
        self.config = config
        self.target = target
        self.observe(self.handle_slider_change, names='value')
    
    def handle_slider_change(self, change):
        self.config[self.target] = change['new']

# Define a slider widget for the target temperature
# Options are largely self-explanatory

app = ConfigTab(
    layout=Layout(margin='0 0 0 0',maxwidth='81.25%',maxheight='83.33%',
                  padding='0 0 0 0')
)
"""
Module top-level container widget - holds all the widgets defined in the
:mod:`webapp.settings` module, which make up the Settings tab in the 
dashboard app.

Allows the Settings tab to be imported into the dashboard app using the code
below:

:example:

>>> from webapp import settings
>>> display(settings.app)
"""