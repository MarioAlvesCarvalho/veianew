#!/bin/bash
#Data alteração 20252

echo -e "#REV. 1"

cp -rf ${HTDOCS}/ZMWSInfo_COMLOGFULL.* ${MANAGER}/ZMWSInfo.ini &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 56.sh" &&
echo -e "****************" &&
veianew ;
