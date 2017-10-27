#!/bin/bash
# Setup ipython profile
ipython profile create
echo "import matplotlib; matplotlib.use('Agg')" >> $HOME/.ipython/profile_default/ipython_config.py

# Setup .bashrc
echo 'export nyu_hcp=True' >> $HOME/.bashrc
source $HOME/.bashrc

# Setup jupyter notebook
PASSWD=$(ipython -c "import IPython;pwd=IPython.lib.passwd();print(pwd)")
jupyter notebook --generate-config -y
cp $HOME/nyu_hcp/jupyter_notebook_config.py $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.password = u'$PASSWD'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "import os;os.environ['nyu_hcp'] = 'True'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.InteractiveShellApp.matplotlib = 'inline'" >> $HOME/.jupyter/jupyter_notebook_config.py
