#!/bin/bash
# Setup ipython profile
ipython profile create
echo "import matplotlib; matplotlib.use('Agg')" >> $HOME/.ipython/profile_default/ipython_config.py

# Setup .bashrc
echo 'export nyu_hcp=True' >> $HOME/.bashrc
source $HOME/.bashrc

# Setup jupyter notebook
PASSWD=$(ipython -c "import IPython;pwd=IPython.lib.passwd();print(pwd)")
cd
jupyter notebook --generate-config
jupyter notebook password
echo "import os;os.environ['nyu_hcp'] = 'True'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 6984" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.InteractiveShellApp.matplotlib = 'inline'" >> $HOME/.jupyter/jupyter_notebook_config.py
