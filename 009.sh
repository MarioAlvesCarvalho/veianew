#!/bin/bash
#Data alteração 19361

wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip && unzip -oq ${VEIANEW}/master.zip && sudo cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 009.sh" &&
echo -e "****************" ;
