#!/bin/bash
# ensure env variables
echo 'export aws=True' >> $HOME/.bashrc
source $HOME/.bashrc

echo  'import os' >> $HOME/.jupyter/jupyter_notebook_config.py
echo "os.environ['aws'] = 'True'" >> $HOME/.jupyter/jupyter_notebook_config.py

# Update all
conda update numpy setuptools numpy scipy matplotlib nose mayavi pandas h5py pil patsy pyside joblib -y
pip install nibabel --upgrade

cd $HOME/scikit-learn; git pull origin master; cd $HOME/
cd $HOME/mne-python; git pull origin master; cd $HOME/
cd $HOME/meeg-preprocessing; git pull origin master; cd $HOME/
cd $HOME/pyRiemann; git pull origin master; cd $HOME/
cd $HOME/h5io; git pull origin master; cd $HOME/

# Automatic notebook server at startup
nohup jupyter notebook &
