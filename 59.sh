#!/bin/bash
#Data alteração 20249

echo -e "#REV. 1"

rm -rf ${MANAGER}/* &&
rm -rf ${HTDOCS}/*.zip.TEMP &&
cp -rf ${HTDOCS}/certificados ${MANAGER}/ &&
cp -rf ${HTDOCS}/ZMWSInfo_COMLOG.* ${MANAGER}/ZMWSInfo.ini &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 59.sh" &&
echo -e "****************" &&
veianew ;
