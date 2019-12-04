#!/bin/bash
#Data alteração 19338
wget -N -v --tries=1 -P $VEIANEW https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
unzip -oq $VEIANEW/master.zip &&
sudo cp -rf $VEIANEW/veianew-master/* $VEIANEW/ &&
