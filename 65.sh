#!/bin/bash
#Data alteração 20323

echo -e "#REV. 2"

php ${MANAGER}/servico/servicolinux.php5 stop
pkill -9 php
${APACHE2}/bin/apachectl stop
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
