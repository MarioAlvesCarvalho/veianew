#!/bin/bash
#Data alteração 20010
#REV. 1

wget -N -v --tries=1 -P $VEIANEW https://github.com/MarioAlvesCarvalho/veianew/archive/BETA.zip
chmod -R 777  $VEIANEW/BETA.zip
chmod +x $VEIANEW/BETA.zip
rm -rf $VEIANEW/*.sh
unzip -oq $VEIANEW/BETA.zip -d $VEIANEW
sudo cp -rf $VEIANEW/veianew-BETA/* $VEIANEW/
sudo rm -rf $VEIANEW/BETA.zip
sudo rm -rf $VEIANEW/veianew-BETA
sudo chmod 775 $VEIANEW/*.sh
echo -e ""
echo -e ""
echo -e ""
echo -e 'Atualização do veianew BETA concluida com sucesso!!!'
echo -e ""
echo -e "*****************"
echo -e "Termino do 01B.sh"
echo -e "*****************" ;
