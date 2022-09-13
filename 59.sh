#!/bin/bash
#Data alteração 22256

echo -e "#REV. 4"

shopt -s extglob
cd /usr/local/apache22/htdocs/manager &&
rm -rf !(Arquivos|certificados|ZMWSInfo.ini|exec_cmd_qz.php5|robo_qz.sh) &&
#rm -rf ${MANAGER}/* &&
rm -rf ${HTDOCS}/.*.zip.TEMP &&
#cp -rf ${HTDOCS}/certificados ${MANAGER}/ &&
#cp -rf ${HTDOCS}/ZMWSInfo_COMLOG.* ${MANAGER}/ZMWSInfo.ini &
cd /usr/local/apache22/htdocs/ &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 59.sh" &&
echo -e "****************" &&
veianew ;

