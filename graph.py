from ipywidgets.widgets import Label, FloatProgress, Button
from ipywidgets.widgets import Layout, HBox, VBox
import numpy as np
import bqplot as bq
import asyncio


import settings


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

def start_click(b):
    settings.config['Power'] = 1
    
def stop_click(b):
    settings.config['Power'] = 0

b_start.on_click(start_click)
b_stop.on_click(stop_click)

command_box = HBox(
    children=(b_start, b_stop),
    layout=Layout(width='260px', height='30px')
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
    value=F"Current temp: {str(np.round(settings.data[-1,1],2))} \u00b0 C",
    layout=Layout(width='230px', height='30px')
)

info_box = VBox(
    children=(w1,w2),
    layout=Layout(width='240px', height='90px')
)

x_sc = bq.LinearScale()
y_sc = bq.LinearScale()

x_ax = bq.Axis(
    label='Time (s)',
    scale=x_sc,
    num_ticks=8
)


y_ax = bq.Axis(
    #label='Temperature (C)',
    scale=y_sc,
    orientation='vertical',
    tick_format='0.0f',
    num_ticks=8
)

Line = bq.Lines(
    x=settings.data[:,2],
    y=settings.data[:,1],
    scales={'x': x_sc, 'y': y_sc}
)

fig = bq.Figure(
    layout=Layout(width='260px', height='240px'),
    axes=[x_ax, y_ax],
    marks=[Line],
    fig_margin=dict(top=25, bottom=50, left=20, right=10)
)

app = VBox(
    children=(command_box, fig, info_box),
    layout=Layout(width='300px', height='450px', margin='0 0 0 0')
)


async def work():
    while True:
        if settings.config['Power'] == 1:
            w1.value = 0
            temp = settings.data[-1,1]
            w2.value = F"Current temp: {str(np.round(temp,2))} \u00b0 C"

            Line.x = settings.data[:,2]
            Line.y = settings.data[:, 1]

        await asyncio.sleep(0.05)