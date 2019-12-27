GNU nano 2.3.1                                         Arquivo: 002.sh                                                                              Modificado

#!/bin/bash
#Data alteração 19338

wget -N -v --tries=1 -P $VEIANEW https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777  $VEIANEW/master.zip &&
chmod +x $VEIANEW/master.zip &&
unzip -oq $VEIANEW/master.zip -d $VEIANEW &&
sudo cp -rf $VEIANEW/veianew-master/* $VEIANEW/ &&
sudo rm -rf $VEIANEW/master.zip &&
sudo rm -rf $VEIANEW/veianew-master &&
sudo chmod 775 $VEIANEW/*.sh &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 01.sh" &&
echo -e "****************" ;
