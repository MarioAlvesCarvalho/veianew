#!/bin/bash
#Data alteração 20253

${APACHE2}/bin/apachectl start &
mkdir ${MANAGER}/Logs &
chown -R zanthus.zanthus ${MANAGER}/Logs/ &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 99.sh" &&
echo -e "****************" &&
veianew ;
