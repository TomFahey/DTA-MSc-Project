#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.settings import *
display(app)


# In[2]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.settings import ControlSlider
from webapp.shared import appState

app = ControlSlider(appState.config, 'KP')
display(app)

