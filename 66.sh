#!/bin/bash
#Data alteração 20249

${APACHE2}/bin/apachectl start &
sleep 1 &
php ${MANAGER}/servico/servicolinux.php5 start &
node ${HTDOCS}/comet_zanthus/src/server-chat.js >> ${HTDOCS}/comet_zanthus/LOGS_NODE_$(date +%d%m%y).ZL1 &
sleep 2 &&
echo -e NODE INICIADO &

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 66.sh" &&
echo -e "****************" &&
veianew ;
