"""  UI Tab module: Main tab for user interface. Features controls for starting a run, graph of specified
     heating programme and temperature profile during run, as well as current temperature.
"""
from ipywidgets.widgets import Label, FloatProgress, Button
from ipywidgets.widgets import Layout, HBox, VBox
import numpy as np
import bqplot as bq
from asyncio import sleep as asleep

from webapp.shared import appState


# Control buttons
b_start = Button(
    description='Run',
    icon='play',
    button_style='warning',
    layout=Layout(width='28%', height='100%')
)
b_stop = Button(
    description='Stop',
    icon='stop',
    button_style='warning',
    layout=Layout(width='28%', height='100%')
)
b_reset = Button(
    description='Reset',
    icon='restart',
    button_style='warning',
    layout=Layout(width='28%', height='100%')
)

def start_click(b):
    global appState
    appState.config['RUN'] = True
    
def stop_click(b):
    global appState
    appState.config['RUN'] = False


def reset_click(b):
    global appState
    #breakpoint()
    appState.config['RUN'] = False
    appState.connected = False

b_start.on_click(start_click)
b_stop.on_click(stop_click)
b_reset.on_click(reset_click)

command_box = HBox(
    children=(b_start, b_stop, b_reset),
    layout=Layout(width='87.5%', height='10%')
)

w1 = FloatProgress(
    value=0,
    min=0,
    max=1800,
    description='Heating run:',
    style={'description_width': 'initial'},
    layout=Layout(width='56%', height='33%')
)

w2 = Label(
    value=F"Current temp: {str(np.round(appState.data['TEMPA'][-1],2))} \u2103",
    layout=Layout(width='72%', height='33%')
)

w3 = Label(
    value=F"Current \u0394T: {str(np.round(appState.data['DTEMP'][-1],2))} K",
    layout=Layout(width='72%', height='33%')
)

info_box = VBox(
    children=(w1,w2,w3),
    layout=Layout(width='75%', height='15%')
)

x_sc = bq.LinearScale(min=0)
y_sc_l = bq.LinearScale()
y_sc_r = bq.LinearScale()

x_ax = bq.Axis(
    label='Time (s)',
    scale=x_sc,
    num_ticks=6
)

y_ax_left = bq.Axis(
    label='Temperature (C)',
    scale=y_sc_l,
    orientation='vertical',
    tick_format='0.0f',
    num_ticks=7,
    side='left'
)

y_ax_right = bq.Axis(
    label=F"\u0394T (K)",
    scale=y_sc_r,
    orientation='vertical',
    tick_format='0.1f',
    num_ticks=7,
    side='right'
)

MeasuredTempLine = bq.Lines(
    x=appState.data['TIME'],
    y=appState.data['TEMPA'],
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#ff000f'],
    display_legend=True,
    labels=['Measured']
)

SampleTempLine = bq.Lines(
    x=appState.data['TIME'],
    y=appState.data['TEMPB'],
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#0000ff'],
    display_legend=True,
    labels=['Sample']
)

ReferenceTempLine = bq.Lines(
    x=appState.data['TIME'],
    y=appState.data['TEMPC'],
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#3c9dd0'],
    display_legend=True,
    labels=['Reference']
)

ProgrammeTempLine = bq.Lines(
    x=appState.programme.x,
    y=appState.programme.y_temp,
    scales={'x': x_sc, 'y': y_sc_l},
    line_style='dashed',
    colors=['#ff000f'],
    display_legend=True,
    labels=['Programme']
)

HeatLine = bq.Lines(
    x=appState.data['TIME'][1:],
    y=np.diff(appState.data['TEMPA'], axis=0),
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#f7a500'],
    opacities=[0.6]
)

ProgrammeHeatLine = bq.Lines(
    x=appState.programme.x,
    y=appState.programme.y_heat,
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#46ff33'],
    line_style='dashed'
)

DeltaTLine = bq.Lines(
    x=appState.data['TIME'],
    y=appState.data['DTEMP'],
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#f7a500'],
    display_legend=True,
    labels=[F"\u0394T"]
)

fig = bq.Figure(
    layout=Layout(width='100%', height='25em'),
    axes=[x_ax, y_ax_left, y_ax_right],
    marks=[MeasuredTempLine, ProgrammeTempLine,ProgrammeHeatLine, DeltaTLine],
    fig_margin=dict(top=25, bottom=50, left=45, right=70),
    legend_location='top-right'
)

app = VBox(
    children=(command_box, fig, info_box),
    layout=Layout(width='100%', height='100%', margin='0 0 0 0')
)


async def work():
    """ Refresh loop for graph and temperature readouts

        This function continously updates the graph and temperature readout for the tab, depending on
        the current programme and data. 
    """
    global appState
    while True:
        try:

            # Values to be updated
            TempA = appState.data['TEMPA']  # RTD 1 - measuring reference temperature
            TempB = appState.data['TEMPB']  # RTD 2 - measuring sample temperature
            TempC = appState.data['TEMPC']  # TC 1 - measuring plate temperature
            dtemps = appState.data['DTEMP'] # TC 2 - measuring sample-reference delta
            times = appState.data['TIME']

            # Update labels
            w1.value = 0 # TODO
            w2.value = F"Current temp: {str(np.round(TempC[-1],2))} \u2103"
            w3.value = F"Current \u0394T: {str(np.round(dtemps[-1],2))} K"

            # Update plot lines
            MeasuredTempLine.x = times
            MeasuredTempLine.y = TempC
            SampleTempLine.x = times
            SampleTempLine.y = TempB
            ReferenceTempLine.x = times
            ReferenceTempLine.y = TempA
            DeltaTLine.x = times
            DeltaTLine.y = dtemps
            ProgrammeTempLine.x = appState.programme.x
            ProgrammeTempLine.y = appState.programme.y_temp
            ProgrammeHeatLine.x = appState.programme.x
            ProgrammeHeatLine.y = 60*appState.programme.y_heat


            HeatLine.x = times[1:]
            if len(TempC) > 10:
                TempA = np.array(TempA)[np.array(times) > 0.0]
                TempB = np.array(TempB)[np.array(times) > 0.0]
                TempC = np.array(TempC)[np.array(times) > 0.0]
                times = np.array(times)[np.array(times) > 0.0]
                #HeatLine.y = 60*((TempA-TempA[0])/times)
                y_sc_r.max = max(min(np.max(HeatLine.y),30), 1)
                y_sc_r.min = min(max(np.min(HeatLine.y),-30), -1)
            else:
                y_sc_r.max = 30
                y_sc_r.min = -30
            x_sc.max = float(max(max(MeasuredTempLine.x), max(ProgrammeTempLine.x)))
            x_sc.min = 0.
            y_sc_l.max = float(max(max(MeasuredTempLine.y), max(ProgrammeTempLine.y)))
            y_sc_l.min = float(min(min(MeasuredTempLine.y), min(ProgrammeTempLine.y)))
            fig.marks = [MeasuredTempLine, SampleTempLine, ReferenceTempLine, ProgrammeTempLine, ProgrammeHeatLine, DeltaTLine]
            fig.axes = [x_ax, y_ax_left, y_ax_right]
            await asleep(0.2)
        except ValueError:
            await asleep(0.2)
        except Exception as e:
            print('Graph work error')
            print(e)
            await asleep(0.2)