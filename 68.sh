#!/bin/bash
#Data alteração 20249

sudo php ${MANAGER}/servico/servicolinux.php5 stop &&
sudo pkill -9 php &&
sudo ${APACHE2}/bin/apachectl stop &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 68.sh" &&
echo -e "****************" &&
veianew ;
