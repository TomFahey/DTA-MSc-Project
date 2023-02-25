from ipywidgets.widgets import Image, VBox, Layout, Label

with open("./cuppa_240x240.gif", "rb") as file:
    image = file.read()

img = Image(
    value = image,
    format='gif',
)

app = VBox(
    children = (img, Label(value='Thermal Imaging Camera')),
    layout=Layout(width='270px', height='240px', margin='0 0 0 0')
)

