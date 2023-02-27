#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.graph import command_box
display(command_box)


# In[2]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.graph import fig
display(fig)


# In[3]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.graph import info_box
display(info_box)


# In[4]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.graph import app
display(app)

