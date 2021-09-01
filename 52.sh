#!/bin/bash
#Data alteração 21244
#REV. 4

if [ -d "${MANAGER}/Kernel/" ] ; then
echo -e "Validando ${MANAGER}/Kernel/"
sudo find ${MANAGER}/Kernel/ -iname 'TH*.TR*' -exec rm -rf {} \; &
fi

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 52.sh" &&
echo -e "****************" ;
