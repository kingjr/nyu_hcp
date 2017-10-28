# nyu_hcp
## Launch

VPN connection to vpn.nyu.edu

Then
```
ssh -L 6984:localhost:6984 jrk392@dumbo.hpc.nyu.edu
jupyter notebook --port=6984
```

On your local machine:
http://localhost:6984/tree


kill server
```
lsof nohup.out
kill -9 PID
```

launch server without appending 'nohup.out':
```
nohup jupyter notebook > /dev/null 2>&1&
```
