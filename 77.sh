#!/bin/bash
#Data alteração 20249

pkill node* &
sleep 1 &&
echo -e NODE ENCERRADO &&
node ${HTDOCS}/comet_zanthus/src/server-chat.js &
sleep 2 &&
echo -e NODE REINICIADO &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 77.sh" &&
echo -e "****************" &&
veianew ;
