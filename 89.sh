#!/bin/bash
#Data alteração 20005

php ${MANAGER}/servico/servicolinux.php5 start &&
chown -R zanthus.zanthus ${MANAGER}/Logs/ &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 89.sh" &&
echo -e "****************" &&
veianew ;
