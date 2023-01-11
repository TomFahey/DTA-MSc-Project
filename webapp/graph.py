from ipywidgets.widgets import Label, FloatProgress, Button
from ipywidgets.widgets import Layout, HBox, VBox
import numpy as np
import bqplot as bq
from asyncio import sleep as asleep

import settings

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
    breakpoint()
    settings.appConfig['RUN'] = True
    
def stop_click(b):
    breakpoint()
    settings.appConfig['RUN'] = False


def reset_click(b):
    breakpoint()
    settings.appConfig['RUN'] = False
    settings.appConnected = False

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
    max=639,
    description='Heating run:',
    style={'description_width': 'initial'},
    layout=Layout(width='56%', height='33%')
)

w2 = Label(
    value=F"Current temp: {str(np.round(settings.appData['TEMP'][-1],2))} \u00b0 C",
    layout=Layout(width='72%', height='33%')
)

w3 = Label(
    value=F"Current \u0394T: {str(np.round(settings.appData['DTEMP'][-1],2))} \u00b0 C",
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
    num_ticks=6,
    side='left'
)

y_ax_right = bq.Axis(
    label='delta T (C)',
    scale=y_sc_r,
    orientation='vertical',
    tick_format='0.2f',
    num_ticks=6,
    side='right'
)

TempLine = bq.Lines(
    x=settings.appData['TIME'],
    y=settings.appData['TEMP'],
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#ff000f'],
)

ProgrammeTempLine = bq.Lines(
    x=settings.appProgramme.x,
    y=settings.appProgramme.y_temp,
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#3c9dd0'],
)

HeatLine = bq.Lines(
    x=settings.appData['TIME'][1:],
    y=np.diff(settings.appData['TEMP'], axis=0),
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#fa7e04'],
    opacities=[0.6]
)

ProgrammeHeatLine = bq.Lines(
    x=settings.appProgramme.x,
    y=settings.appProgramme.y_heat,
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#46ff33'],
)

DeltaTLine = bq.Lines(
    x=settings.appData['TIME'],
    y=settings.appData['DTEMP'],
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#ff0c0f'],
)

fig = bq.Figure(
    layout=Layout(width='100%', height='25em'),
    axes=[x_ax, y_ax_left, y_ax_right],
    marks=[TempLine, ProgrammeTempLine,HeatLine,ProgrammeHeatLine, DeltaTLine],
    fig_margin=dict(top=25, bottom=50, left=45, right=70)
)

app = VBox(
    children=(command_box, fig, info_box),
    layout=Layout(width='100%', height='100%', margin='0 0 0 0')
)


async def work():
    while True:
        try:
            temps = settings.appData['TEMP']
            times = settings.appData['TIME']
            dtemps = settings.appData['DTEMP']
            w2.value = F"Current temp: {str(np.round(temps[-1],2))} \u00b0 C"
            w3.value = F"Current \u0394T: {str(np.round(dtemps[-1],2))} \u00b0 C"
            w1.value = 0
            TempLine.x = times
            TempLine.y = temps
            DeltaTLine.x = times
            DeltaTLine.y = dtemps
            ProgrammeTempLine.x = settings.appProgramme.x
            ProgrammeTempLine.y = settings.appProgramme.y_temp
            ProgrammeHeatLine.x = settings.appProgramme.x
            ProgrammeHeatLine.y = 60*settings.appProgramme.y_heat

            HeatLine.x = times[1:]
            if len(temps) > 10:
                temps = np.array(temps)[np.array(times) > 0.0]
                times = np.array(times)[np.array(times) > 0.0]
                HeatLine.y = 60*((temps-temps[0])/times)
                y_sc_r.max = min(np.max(HeatLine.y),30)
                y_sc_r.min = max(np.min(HeatLine.y),-30)
            else:
                y_sc_r.max = 30
                y_sc_r.min = -30
            x_sc.max = float(max(max(TempLine.x), max(ProgrammeTempLine.x)))
            x_sc.min = 0.
            y_sc_l.max = float(max(max(TempLine.y), max(ProgrammeTempLine.y)))
            y_sc_l.min = float(min(min(TempLine.y), min(ProgrammeTempLine.y)))
            fig.marks = [TempLine, ProgrammeTempLine,HeatLine,ProgrammeHeatLine, DeltaTLine]
            fig.axes = [x_ax, y_ax_left, y_ax_right]

            await asleep(0.2)
        except Exception as e:
            print('Graph work error')
            print(e)
            await asleep(0.2)