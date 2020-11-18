#!/bin/bash
#Data alteração 20249

echo -e "#REV. 1"

node ${HTDOCS}/comet_zanthus/src/server-chat.js >> ${HTDOCS}/comet_zanthus/LOGS_NODE_$(date +%d%m%y).zlg &
sleep 1 &
echo -e NODE INICIADO &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 79.sh" &&
echo -e "****************" &&
veianew ;
