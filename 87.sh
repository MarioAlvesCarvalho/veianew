#!/bin/bash
#Data alteração 20248

php $MANAGER/servico/servicolinux.php5 stop &&
pkill -9 php &&
php $MANAGER/servico/servicolinux.php5 start &&
mkdir ${MANAGER}/Logs &&
chown -R zanthus.zanthus ${MANAGER}/Logs/ &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 87.sh" &&
echo -e "****************" &&
veianew ;
