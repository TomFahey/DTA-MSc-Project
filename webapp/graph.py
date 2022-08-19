from ipywidgets.widgets import Label, FloatProgress, Button
from ipywidgets.widgets import Layout, HBox, VBox
import numpy as np
import bqplot as bq
import asyncio


import settings
from utils import Programme


b_start = Button(
    description='Run',
    icon='play',
    button_style='warning',
    layout=Layout(width='135px', height='30px')
)

b_stop = Button(
    description='Stop',
    icon='stop',
    button_style='warning',
    layout=Layout(width='135px', height='30px')
)

b_reset = Button(
    description='Reset',
    icon='restart',
    button_style='warning',
    layout=Layout(width='135px', height='30px')
)

def start_click(b):
    settings.config['RUN'] = True
    
def stop_click(b):
    settings.config['RUN'] = False

def reset_click(b):
    settings.programme.__init__()
    settings.connected = False
    settings.data['PID'] = np.array([0.])
    settings.data['TEMP'] = np.array([0.]) 
    settings.data['TIME'] = np.array([0.])
    settings.config['RUN'] = False
    settings.config['MODE'] = False
    settings.config['LOG'] = False
    settings.config['TARGET'] = 25
    settings.config['PID'] = [1.0, 0.0, 0.0]

b_start.on_click(start_click)
b_stop.on_click(stop_click)
b_reset.on_click(reset_click)

command_box = HBox(
    children=(b_start, b_stop, b_reset),
    layout=Layout(width='405px', height='30px')
)

w1 = FloatProgress(
    value=0,
    min=0,
    max=639,
    description='Heating run:',
    style={'description_width': 'initial'},
    layout=Layout(width='180px', height='30px')
)

w2 = Label(
    value=F"Current temp: {str(np.round(settings.data['TEMP'][-1],2))} \u00b0 C",
    layout=Layout(width='230px', height='30px')
)

info_box = VBox(
    children=(w1,w2),
    layout=Layout(width='240px', height='90px')
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
    x=settings.data['TIME'],
    y=settings.data['TEMP'],
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#ff000f'],
)

ProgrammeTempLine = bq.Lines(
    x=settings.programme.x,
    y=settings.programme.y_temp,
    scales={'x': x_sc, 'y': y_sc_l},
    colors=['#3c9dd0'],
)

HeatLine = bq.Lines(
    x=settings.data['TIME'][1:],
    y=np.diff(settings.data['TEMP'], axis=0),
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#fa7e04'],
    opacities=[0.6]
)

ProgrammeHeatLine = bq.Lines(
    x=settings.programme.x,
    y=settings.programme.y_heat,
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#46ff33'],
)

DeltaTLine = bq.Lines(
    x=settings.data['TIME'],
    y=settings.data['DTEMP'],
    scales={'x': x_sc, 'y': y_sc_r},
    colors=['#ff0c0f'],
)

fig = bq.Figure(
    layout=Layout(width='900px', height='800px'),
    axes=[x_ax, y_ax_left, y_ax_right],
    marks=[TempLine, ProgrammeTempLine,HeatLine,ProgrammeHeatLine, DeltaTLine],
    fig_margin=dict(top=25, bottom=50, left=50, right=70)
)

app = VBox(
    children=(command_box, fig, info_box),
    layout=Layout(width='1000px', height='1000px', margin='0 0 0 0')
)


async def work():
    while True:
        try:
            temp = settings.reading['TEMP']
            temps = settings.data['TEMP']
            times = settings.data['TIME']
            dtemps = settings.data['DTEMP']
            w2.value = F"Current temp: {str(np.round(temp,2))} \u00b0 C"
            w1.value = 0
            TempLine.x = times
            TempLine.y = temps
            DeltaTLine.x = times
            DeltaTLine.y = dtemps
            ProgrammeTempLine.x = settings.programme.x
            ProgrammeTempLine.y = settings.programme.y_temp
            ProgrammeHeatLine.x = settings.programme.x
            ProgrammeHeatLine.y = 60*settings.programme.y_heat

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

            await asyncio.sleep(0.2)
        except:
            print('Graph work error')
            await asyncio.sleep(0.2)