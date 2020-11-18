#!/bin/bash
#Data alteração 20323

echo -e "#REV. 2"

php ${MANAGER}/servico/servicolinux.php5 stop
pkill -9 php
${APACHE2}/bin/apachectl stop
pkill node*
sleep 1 &&
echo -e NODE ENCERRADO $&
sleep 2 &
${APACHE2}/bin/apachectl start &&
sleep 1 &
php ${MANAGER}/servico/servicolinux.php5 start &
node ${HTDOCS}/comet_zanthus/src/server-chat.js >> ${HTDOCS}/comet_zanthus/LOGS_NODE_$(date +%d%m%y).ZL1 &
chown -R zanthus.zanthus ${MANAGER}/Logs/ &&
sleep 2 &&
echo -e NODE INICIADO &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 64.sh" &&
echo -e "****************" &&
veianew ;
