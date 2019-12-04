#!/bin/bash
#Data alteração 19338
wget -N -v --tries=1 -P $VEIANEW https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777  $VEIANEW/master.zip &&
chmod +x $VEIANEW/master.zip &&
unzip -oq $VEIANEW/master.zip &&
sudo cp -rf $VEIANEW/veianew-master/* $VEIANEW/

veianew_estruturado
