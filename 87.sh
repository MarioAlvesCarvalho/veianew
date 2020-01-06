#!/bin/bash
#Data alteração 20005

php $MANAGER/servico/servicolinux.php5 stop &&
pkill -9 php &&
php $MANAGER/servico/servicolinux.php5 start &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 87.sh" &&
echo -e "****************" &&
veianew ;
