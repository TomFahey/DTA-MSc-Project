from ipywidgets.widgets import Label, FloatProgress, FloatSlider, Button, Output
from ipywidgets.widgets import AppLayout, Layout, HBox, VBox
from IPython.core.display import display, HTML
import numpy as np
import time
import re
import bqplot as bq
import threading

flag = False
counter = 2

with open("/home/pi/log.txt", 'r') as f:
    data = f.readlines()
    
datavals = [[float(i) for i in re.findall(r'[0-9]{1,}\.[0-9]{1,}', j)] for j in data]
valarray = np.array(datavals).T[1:,:].T
x = valarray[0:counter,1]
y = valarray[0:counter,0]

b_start = Button(
    description='Start',
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
    global flag
    flag = True
    
def stop_click(b):
    global flag
    flag = False

b_start.on_click(start_click)
b_stop.on_click(stop_click)

command_box = HBox(
    children=(b_start, b_stop),
    layout=Layout(width='270px', height='30px')
)

w1 = FloatProgress(
    value=counter,
    min=0,
    max=639,
    description='Heating run:',
    style={'description_width': 'initial'},
    layout=Layout(width='180px', height='30px')
)

w2 = Label(
    value=F"Current temp: {str(np.round(y[-1],2))} \u00b0 C",
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
    x=x,
    y=y,
    scales={'x': x_sc, 'y': y_sc}
)

fig = bq.Figure(
    layout=Layout(width='260px', height='240px'),
    axes=[x_ax, y_ax],
    marks=[Line],
    fig_margin=dict(top=25, bottom=50, left=20, right=10)
)

#display_box = VBox(
#    children=(fig),
#    layout=Layout(width='320px', height='270px')
#)

app = VBox(
    children=(command_box, fig, info_box),
    layout=Layout(width='280px', height='450px')
)

def work():
    global x
    global y
    global counter

    while True:
        if flag:

            counter += 1
            x = valarray[0:counter,1]
            y = valarray[0:counter,0]

            w1.value = counter
            w2.value = F"Current temp: {str(np.round(y[-1],2))} \u00b0 C"

            Line.x = x
            Line.y = y

            time.sleep(0.05)

thread = threading.Thread(target=work)

display(app)
##display(HTML("<style>.container { width:100% !important; }</style>"))
thread.start()