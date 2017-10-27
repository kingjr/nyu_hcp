#!/bin/bash
# Update itself
cd $HOME/nyu_hcp
git pull origin master
cd $HOME
sh $HOME/nyu_hcp/update_all.sh
