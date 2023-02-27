#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.export import *
display(drive_select)


# In[2]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.export import *
display(filename_input)


# In[3]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.export import *
display(save_button)


# In[4]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.export import *
display(eject_button)


# In[5]:


import os
import sys

ROOT_DIR = os.path.abspath('../')
WEBAPP_PATH = ROOT_DIR + '/src/dashboard/'
sys.path.insert(0, WEBAPP_PATH)

from webapp.export import *
display(app)

