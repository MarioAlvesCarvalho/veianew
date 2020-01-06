#!/bin/bash
#Data alteração 20005

php $MANAGER/servico/servicolinux.php5 stop &&
pkill -9 php &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 88.sh" &&
echo -e "****************" &&
veianew ;
