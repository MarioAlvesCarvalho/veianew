#!/bin/bash
#Data alteração 19361

wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
unzip -oq ${VEIANEW}/master.zip &&
sudo cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 009.sh" &&
echo -e "****************" ;

###script MANUAL
###wget -N -v --tries=1 -P /usr/local/apache2/VEIANEW/ https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip && unzip -oq /usr/local/apache2/VEIANEW/master.zip -d /usr/local/apache2/VEIANEW/ && sudo cp -rf /usr/local/apache2/VEIANEW/veianew-master/* /usr/local/apache2/VEIANEW/ && chmod -R 777 /usr/local/apache2/VEIANEW/*  && rm -rf /usr/local/apache2/VEIANEW/master.zip && rm -rf /usr/local/apache2/VEIANEW/veianew-master && mv -f /bin/veianew /bin/veianew_velho && ln -s /usr/local/apache2/VEIANEW/veianew /bin/veianew ;
