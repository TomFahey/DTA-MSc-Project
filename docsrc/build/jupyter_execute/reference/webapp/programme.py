#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.programme import StageTab
display(StageTab())


# In[2]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.programme import ControlSlider
display(ControlSlider(stage={'R': 100}, target='R'))


# In[3]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.programme import *
display(app)

