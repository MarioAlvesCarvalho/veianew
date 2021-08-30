#!/bin/bash
#Data alteração 21242
#REV. 3

sudo find ${MANAGER}/Kernel/ -iname 'TH*.TR*' -exec rm -rf {} \; &

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 52.sh" &&
echo -e "****************" ;
