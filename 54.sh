#!/bin/bash
#Data alteração 20249

sudo find ${MANAGER}/ -iname '*.zlg' -exec rm -rf {} \; &
sudo find ${MANAGER}/ -iname 'mirage_*.log' -exec rm -rf {} \; &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 54.sh" &&
echo -e "****************" &&
veianew ;
