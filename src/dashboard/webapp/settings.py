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
    Simple customised extension of ``ipywidgets.widgets.Accordion`` class,
    featuring a set of ``ControlSlider`` widgets as children.

    :param config: A dictionary of configuration parameters, defaults to 
        ``appState.config``
    :type config: ``dict``, optional
    :return: ``ConfigTab`` object
    :rtype: ``webapp.settings.ConfigTab``
    :example:

    >>> from webapp.settings import ConfigTab
    >>> app = ConfigTab(
    ...     layout=Layout(margin='3 3 3 3',maxwidth='81.25%',maxheight='83.33%',
    ...                   padding='0 0 0 0')
    ... )
    ...
    >>> display(app)
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
    """_summary_
    Simple customised extension of ``ipywidgets.widgets.FloatSlider`` class, 
    builds in the required callback function for ``FloatSlider.observe``, as
    ``handle_slider_change(self, change)``.
    
    :param config: A dictionary of configuration parameters, defaults to 
        ``appState.config``
    :type config: ``dict``, optional
    :param target: Dictionary key for the parameter in ``config`` that the
        slider will control
    :return: ``ConfigTab`` object
    :rtype: ``webapp.settings.ConfigTab``
    """
    def __init__(self, config, target, **kwargs):
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
Container widget, which holds all the widgets used for the 'Settings' tab.
Allows tab to be added to the dashboard app using the example code below.

:ivar app: ``ConfigTab`` object, containing ``ControlSlider`` widgets to
    adjust system settings
:vartype app: ``webapp.settings.ConfigTab``

:example:

>>> from webapp import settings
>>> display(settings.app)
"""