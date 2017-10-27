import os
os.environ['nyu_hcp'] = 'True'
c = get_config()

# Kernel config
c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook

# Notebook config
# c.NotebookApp.certfile = os.path.expanduser('~/certs/mycert.pem') #location of your certificate file
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False  # so that the ipython notebook does not opens up a browser by default
# It is a good idea to put it on a known, fixed port
c.NotebookApp.port = 8888
# The encrypted password will be generated in nyu_hcp/user_setup.sh
