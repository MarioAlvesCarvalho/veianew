#!/bin/bash
#Data alteração 20322

sudo php ${MANAGER}/servico/servicolinux.php5 stop
sudo pkill -9 php
sudo ${APACHE2}/bin/apachectl stop
pkill node*
sleep 1 &&
echo -e NODE ENCERRADO &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 65.sh" &&
echo -e "****************" &&
veianew ;
