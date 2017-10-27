#!/bin/bash
# Update itself
cd $HOME/aws
git pull origin master
cd $HOME
sh $HOME/aws/update_all.sh
