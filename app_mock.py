import dash
from dash.dependencies import Input, Output, State
import dash_daq as daq
from dash_daq import DarkThemeProvider
import dash_html_components as html
import dash_core_components as dcc

import numpy as np
from scipy import signal

app = dash.Dash(
    __name__, meta_tags=[{"name": "viewport", "content": "width=device-width"}]
)
app.config["suppress_callback_exceptions"] = True
server = app.server

axis_color = {"dark": "#EBF0F8", "light": "#506784"}
marker_color = {"dark": "#f2f5fa", "light": "#2a3f5f"}

theme = {
    "dark": False,
    "primary": "#447EFF",
    "secondary": "#D3D3D3",
    "detail": "#D3D3D3",
}

init_input = {
    "DTA": True,
    "DSC": True,
    "temperature_input": 80,
    "heat_input": 0,
}


def num_inputs(cur_input):
    return html.Div(
        [
            daq.NumericInput(
                value=cur_input["temperature_input"],
                id="temperature-input",
                label="Temperature Target (°C)",
                labelPosition="bottom",
                size=70,
                theme=theme["primary"],
                max=200,
                min=50,
                style={"backgroundColor": "transparent"},
                className="four columns",
            ),
            daq.NumericInput(
                value=cur_input["heat_input"],
                id="heat-input",
                label="Heating Rate (°C/s)",
                labelPosition="bottom",
                size=70,
                theme=theme["primary"],
                max=8,
                min=0,
                className="four columns",
            ),
        ],
        className="num_inputs",
    )


def led_displays(cur_input):
    return html.Div(
        [
            daq.LEDDisplay(
                id="temperature-display",
                size=20,
                value=cur_input["temperature_input"],
                label="Temperature Target (°C)",
                labelPosition="bottom",
                color=theme["primary"],
                className="four columns",
            ),
            daq.LEDDisplay(
                id="heat-display",
                size=20,
                value=cur_input["heat_input"],
                label="Amplitude (mV)",
                labelPosition="bottom",
                color=theme["primary"],
                className="four columns",
            ),
        ],
        className="led-displays",
    )


#def radioitem(cur_input, cur_tab):
#    return html.Div(
#        className="radio-items",
#        children=[
#            dcc.RadioItems(
#                id="function-type",
#                options=[
#                    {"label": "Sine", "value": "SIN"},
#                    {"label": "Square", "value": "SQUARE"},
#                    {"label": "Ramp", "value": "RAMP"},
#                ],
#                value=cur_input[cur_tab]["function_type"],
#                labelStyle={"display": "inline-block"},
#            )
#        ],
#    )


def power_setting_div(cur_inputs):
    if cur_inputs is None or len(cur_inputs) == 0:
        cur_inputs = init_input
    return html.Div(
        className="row power-settings-tab",
        children=[
            # Title
            html.Div(
                className="Title",
                children=html.H3(
                    "Power", id="power-title", style={"color": theme["primary"]}
                ),
            ),
            # Power Controllers
            html.Div(
                className="power-controllers",
                children=[
                    html.Div(
                        [
                            daq.PowerButton(
                                id="DTA",
                                on=cur_inputs["DTA"],
                                label="DTA",
                                labelPosition="bottom",
                                color=theme["primary"],
                            )
                        ],
                        className="six columns",
                    ),
                    html.Div(
                        [
                            daq.PowerButton(
                                id="DSC",
                                on=cur_inputs["DSC"],
                                label="DSC",
                                labelPosition="bottom",
                                color=theme["primary"],
                            )
                        ],
                        className="six columns",
                    ),
                ],
            ),
        ],
    )


def function_setting_div(cur_input):
    if cur_input is None or len(cur_input) == 0:
        cur_input = init_input
    return html.Div(
        className="row power-settings-tab",
        children=[
            html.Div(
                className="Title",
                style={"color": theme["primary"]},
                children=html.H3("Function", id="function-title"),
            ),
            html.Div(
                children=[
                    # Numeric Input Boxes
                    num_inputs(cur_input),
                    # LED Displays
                    led_displays(cur_input),
                ]
            ),
        ],
    )


# Main App
app.layout = html.Div(
    id="main-page",
    children=[
        # Header
        html.Div(
            id="header",
            className="banner row",
            children=[
                # Logo and Title
                html.Div(
                    className="banner-logo-and-title",
                    children=[
                        html.H2(
                            "DTA-DSC Configuration Panel"
                        ),
                    ],
                ),
            ],
        ),
        # LEFT PANEL - SETTINGS
        html.Div(
            className="five columns",
            children=[
                html.Div(
                    id="left-panel",
                    children=[
                        html.Div(
                            id="dark-theme-components",
                            className="left-panel-controls",
                            style={"height": 705},
                            children=DarkThemeProvider(
                                theme=theme,
                                children=[
                                    power_setting_div(None),
                                    function_setting_div(None),
                                    ],
                                ),
                            )
                        ],
                    )
                ],
            ),
        dcc.Store(id="control-inputs", data={}),
    ],
)


@app.callback(
    [
        Output("DTA", "on"),
        Output("DSC", "on"),
        Output("temperature-input", "value"),
        Output("heat-input", "value"),
    ],
    [Input("control-inputs", "data")],
    [
        State("DTA", "on"),
        State("DSC", "on"),
    ],
)
def update_controls(cur_inputs, dta_on, dsc_on):

    td = cur_inputs
    return (
        td["DTA"],
        td["DSC"],
        td["temperature_input"],
        td["heat_input"],
        #td["function_type"],
    )


# update control values
@app.callback(
    Output("control-inputs", "data"),
    [
        Input("DTA", "on"),
        Input("DSC", "on"),
        Input("temperature-input", "value"),
        Input("heat-input", "value"),
    ],
    [State("control-inputs", "data")],
)
def update_control_values(
    dta_on, dsc_on, temperature, heat, cur_inputs#, wave
):
    cur_inputs.update(
            dict(
                DTA=dta_on,
                DSC=dsc_on,
                temperature_input=temperature,
                heat_input=heat,
            )
    )
    return cur_inputs



# Callbacks for knob inputs
@app.callback(Output("temperature-display", "value"), [Input("temperature-input", "value")])
def update_temperature_display(value):
    return value


@app.callback(Output("heat-display", "value"), [Input("heat-input", "value")])
def update_amplitude_display(value):
    return value

if __name__ == "__main__":
    app.run_server(debug=True)
