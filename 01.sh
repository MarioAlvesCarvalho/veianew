#!/bin/bash
#Data alteração 20252

wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777  ${VEIANEW}/master.zip &&
chmod +x ${VEIANEW}/master.zip &&
unzip -oq ${VEIANEW}/master.zip -d ${VEIANEW} &&
sudo cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ &&
sudo rm -rf ${VEIANEW}/master.zip &&
sudo rm -rf ${VEIANEW}/veianew-master &&
sudo chmod 775 ${VEIANEW}/*.sh &&
sudo chown root.root ${VEIANEW}/*.sh &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 01.sh" &&
echo -e "****************" ;

#### atualiza manual
##wget -N -v --tries=1 -P /usr/local/apache22/htdocs/VEIANEW https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip && chmod -R 777  /usr/local/apache22/htdocs/VEIANEW/master.zip && chmod +x /usr/local/apache22/htdocs/VEIANEW/master.zip && unzip -oq /usr/local/apache22/htdocs/VEIANEW/master.zip -d /usr/local/apache22/htdocs/VEIANEW && sudo cp -rf /usr/local/apache22/htdocs/VEIANEW/veianew-master/* /usr/local/apache22/htdocs/VEIANEW/ && sudo rm -rf /usr/local/apache22/htdocs/VEIANEW/master.zip && sudo rm -rf /usr/local/apache22/htdocs/VEIANEW/veianew-master && sudo chmod 775 /usr/local/apache22/htdocs/VEIANEW/*.sh && rm -rf /bin/veianew && ln -s /usr/local/apache2/VEIANEW/veianew /bin/veianew;
