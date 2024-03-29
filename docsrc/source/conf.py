# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here.
import pathlib
import sys
#sys.path.insert(0, pathlib.Path(__file__).parents[2].resolve().as_posix())
#sys.path.insert(0, "/home/Pi/Pi-Pico-Prototype")
#sys.path.insert(0, "/home/pi/Pi-Pico-Prototype/src/microcontroller/")
PROJECT_ROOT_DIR = pathlib.Path(__file__).parents[2].resolve().as_posix()
sys.path.insert(0, PROJECT_ROOT_DIR + "/src/dashboard/")
sys.path.insert(0, PROJECT_ROOT_DIR + "/src/microcontroller/")

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'DIY DTA'
copyright = '2023, Tom Fahey'
author = 'Tom Fahey'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx.ext.duration',
    'sphinx.ext.doctest',
    'sphinx.ext.autodoc',
    'sphinx.ext.githubpages',
    'sphinx.ext.intersphinx',
    'jupyter_sphinx',
]

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'alabaster'
html_static_path = ['_static']

# -- Options for EPUB output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-epub-output

epub_show_urls = 'footnote'

# -- Options for Autosummary -------------------------------------------------
#autosummary_generate = True

# -- Options for Intersphinx -------------------------------------------------
intersphinx_mapping = {
    'python': ('https://docs.python.org/3', None),
    'ipywidgets': ('https://ipywidgets.readthedocs.io/en/latest/', 'ipywidgets.inv'),
    'serial_asyncio': ('https://pyserial-asyncio.readthedocs.io/en/latest/', 'serial_asyncio.inv'),
}