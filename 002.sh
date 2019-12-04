#!/bin/bash
#Data alteração 19338
wget -N -v --tries=1 -P $VEIANEW https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777  $VEIANEW/master.zip &&
chmod +x $VEIANEW/master.zip &&
unzip -oq $VEIANEW/master.zip &&
sudo cp -rf $VEIANEW/veianew-master/* $VEIANEW/ ; wait &&
sudo rm -rf $VEIANEW/master.zip &&
sudo rm -rf $VEIANEW/veianew-master &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "*****************" &&
echo -e "Termino do 002.sh" &&
echo -e "*****************" ;
