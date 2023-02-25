from ipywidgets.widgets import Layout, HBox, VBox
from IPython.core.display import display
import ipywidgets.widgets as widgets
import bqplot as bq
import numpy as np
import pickle as pkl
import ast

def load_data(filepath):
    data = None
    with open(filepath, 'rb') as f:
        data = pkl.load(f)
    return data

def fetch_data(file_path):
    global x_prog_time
    global y_prog_temp
    global y_prog_heat
    global x_read_time
    global y_read_temp
    global y_read_heat
    
    data = load_data(file_path)
    stages = [ast.literal_eval(item) for item in data['stages'] if type(item) is str]
    readings = data['data']
    config = data['config']


    x_prog_time, y_prog_temp, y_prog_heat = get_programme(stages, readings)
    x_read_data = np.array(readings['TIME'])
    y_read_data_temp = np.array(readings['TEMP'])
    y_read_data_dtemp = np.array(readings['DTEMP']) if 'DTEMP' in readings.keys() else np.zeros(y_read_data_temp.shape)
    x_read_time = x_read_data[x_read_data > 0.0]
    y_read_temp = y_read_data_temp[x_read_data > 0.0]
    y_read_dtemp = y_read_data_dtemp[x_read_data > 0.0]
    y_read_heat = 60*(y_read_temp-y_read_temp[1])/x_read_time
    
    return (x_prog_time, y_prog_temp, y_prog_heat, x_read_time, y_read_temp, y_read_dtemp, y_read_heat)

def get_programme(stages, readings):
        """
        Generates a plot of the temperature over time for the current programme
        Called each time a stage is added, removed, or has its paramaters updated
        """
        startingTemp = readings['TEMP'][2]
        stage_temps = [startingTemp, *[stage['TEMP'] for stage in stages]]
        stage_heats = [stage['HEAT'] for stage in stages]
        # Need to guard against potential divide by zero errors
        hold_times = [stage['HOLD'] for stage in stages]
    
        temp_diffs = np.ediff1d(stage_temps)
        stage_times = np.cumsum((60*(temp_diffs/stage_heats) + hold_times))
        time_marks = np.array(
            [
                [time_mark - hold_time, time_mark] for time_mark, hold_time 
                                            in zip(stage_times, hold_times)
            ]
            ,dtype=np.int32
            ).flatten()
        time_marks = np.array([0, *time_marks])
        heat_times = [slice(time_marks[i],time_marks[i+1]) for i,j in enumerate(time_marks[:-2])]
        total_time = time_marks[-1]
        time_steps = np.zeros(int(total_time))
        for i, time_slice in enumerate(heat_times[::2]):
                time_steps[time_slice] = stage_heats[i]/60
        y_heat = time_steps
        y_temp = startingTemp + np.cumsum(time_steps)
        x_time = np.arange(total_time)
        return (x_time, y_temp, 60*y_heat)
    
def update_graph(x_prog_time, y_prog_temp, y_prog_heat, x_read_time, y_read_temp, y_read_dtemp, y_read_heat):
    
    x_scale = bq.LinearScale(min=0, max=int(max(max(x_prog_time),max(x_read_time))))
    y_left_scale = bq.LinearScale(max=120, min=20)
    y_right_scale = bq.LinearScale(max=30, min=-30)
    
    TempLine.x = x_read_time
    TempLine.y = y_read_temp
    TempLine.scales={'x': x_scale, 'y': y_left_scale}
    DTempLine.x = x_read_time
    DTempLine.y = y_read_dtemp
    DTempLine.scales={'x': x_scale, 'y': y_right_scale}
    ProgrammeTempLine.x = x_prog_time
    ProgrammeTempLine.y = y_prog_temp
    ProgrammeTempLine.scales={'x': x_scale, 'y': y_left_scale}
    HeatLine.x = x_read_time
    HeatLine.y = y_read_heat
    HeatLine.scales={'x': x_scale, 'y': y_right_scale}
    ProgrammeHeatLine.x = x_prog_time
    ProgrammeHeatLine.y = y_prog_heat
    ProgrammeHeatLine.scales={'x': x_scale, 'y': y_right_scale}
    
    x_ax.scale=x_scale
    y_ax_left.scale=y_left_scale
    y_ax_right.scale=y_right_scale
    
    
    fig.marks=[TempLine, DTempLine, ProgrammeTempLine,HeatLine,ProgrammeHeatLine]
    fig.axes=[x_ax, y_ax_left, y_ax_right]
    
    
    return fig
    
tempSelection = widgets.Dropdown(
    options=["70", "90", "110"],
    value="70",
    description='Target temperature:',
)
heatSelection = widgets.Dropdown(
    options=["10", "15", "20", "25", "30"],
    value="10",
    description='Target heat rate:',
)

filenameSelection = widgets.Text(
    value=None,
    PlaceHolder='Enter filepath',
    disabled=False
)
    

(x_prog_time, y_prog_temp, y_prog_heat, x_read_time, y_read_temp, y_read_dtemp, y_read_heat) = fetch_data('./data/10-08/data-PID-tune-20.0-2.8-0.0-TEMP-70-HEAT-10')

x_scale = bq.LinearScale(min=0)
y_left_scale = bq.LinearScale(max=max(max(y_read_temp), max(y_prog_temp)), min=min(min(y_read_temp), min(y_prog_temp)))
y_right_scale = bq.LinearScale(max=max(max(y_read_heat), max(y_prog_heat)), min=min(min(y_read_heat), min(y_prog_heat)))

x_ax =  bq.Axis(
    label='Time (s)',
    scale=x_scale,
    num_ticks=16
)

y_ax_left = bq.Axis(
    label='Temperature (C)',
    scale=y_left_scale,
    orientation='vertical',
    tick_format='0.0f',
    num_ticks=13,
    side='left'
)

y_ax_right = bq.Axis(
    label='delta T ' + '(\u00B0C min^-1)',
    scale=y_right_scale,
    orientation='vertical',
    tick_format='0.2f',
    num_ticks=13,
    side='right'
)

TempLine = bq.Lines(
    x=x_read_time,
    y=y_read_temp,
    scales={'x': x_scale, 'y': y_left_scale},
    colors=['#ff000f'],
    labels=["Measured temperature"],
    display_legend=True
)

DTempLine = bq.Lines(
    x=x_read_time,
    y=y_read_dtemp,
    scales={'x': x_scale, 'y': y_right_scale},
    colors=['#ff00f0'],
    labels=["Measured delta-T"],
    display_legend=True
)

ProgrammeTempLine = bq.Lines(
    x=x_prog_time,
    y=y_prog_temp,
    scales={'x': x_scale, 'y': y_left_scale},
    colors=['#3c9dd0'],
    labels=["Programme temperature"],
    display_legend=True
)

HeatLine = bq.Lines(
    x=x_read_time,
    y=y_read_heat,
    scales={'x': x_scale, 'y': y_right_scale},
    colors=['#fa7e04'],
    opacities=[0.6],
    labels=["Measured heat rate"],
    display_legend=True
)

ProgrammeHeatLine = bq.Lines(
    x=x_prog_time,
    y=y_prog_heat,
    scales={'x': x_scale, 'y': y_right_scale},
    colors=['#46ff33'],
    labels=["Programme heat rate"],
    display_legend=True
)

fig = bq.Figure(
    layout=Layout(width='900px', height='800px'),
    axes=[x_ax, y_ax_left, y_ax_right],
    marks=[TempLine, ProgrammeTempLine,HeatLine,ProgrammeHeatLine],
    fig_margin=dict(top=25, bottom=50, left=50, right=70),
    legend_location='top-left'
)

def select_callback(change):
    global app
    file_path = './data/10-08/data-PID-tune-20.0-2.8-0.0-TEMP-{}-HEAT-{}'.format(tempSelection.value, heatSelection.value)
    data = fetch_data(file_path)
    app.children = (controls, update_graph(*data))
    
def filename_callback(change):
    global app
    breakpoint()
    data = fetch_data(change['new'])
    app.children = (controls, update_graph(*data))


tempSelection.observe(select_callback, names='value')
heatSelection.observe(select_callback, names='value')
filenameSelection.observe(filename_callback, names='value')

data = fetch_data('./data/24-08/data-PID-tune-35.0-2.0-3.5-multistage')
controls = HBox(children = (tempSelection, heatSelection, filenameSelection))
app = VBox(children = (controls, update_graph(*data)))
 
display(app)