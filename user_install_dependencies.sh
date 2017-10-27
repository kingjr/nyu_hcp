#!/bin/bash
# Install depencies
conda install numpy setuptools numpy scipy matplotlib nose mayavi pandas h5py pil patsy pyside joblib

git clone https://github.com/scikit-learn/scikit-learn; cd scikit-learn; python setup.py install; cd ~/
git clone https://github.com/mne-tools/mne-python; cd mne-python; python setup.py install; cd ~/
git clone https://github.com/mne-tools/mne-sandbox; cd mne-sandbox; python setup.py install; cd ~/
git clone https://github.com/dengemann/meeg-preprocessing; cd meeg-preprocessing; python setup.py install; cd ~/
git clone https://github.com/alexandrebarachant/pyRiemann; cd pyRiemann; python setup.py install; cd ~/
git clone https://github.com/kingjr/jr-tools; cd jr-tools; python setup.py install; cd ~/
git clone https://github.com/h5io/h5io; cd h5io/; python setup.py install; cd ~/

# Add working projects
git clone https://github.com/kingjr/valentin-eeg
git clone https://github.com/kingjr/decoding_unconscious_maintenance
git clone https://github.com/kingjr/meg_perceptual_decision_symbols
