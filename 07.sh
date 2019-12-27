#!/bin/bash
#Data alteração 19361

wget -N -v --tries=1 -P ${VEIANEW}/veianew_estruturado ftp://${VEIANEW}/veianew_estruturado &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 07.sh" &&
echo -e "****************" ;
