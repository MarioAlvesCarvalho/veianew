#!/bin/bash
#Data alteração 20249

php ${MANAGER}/servico/servicolinux.php5 stop &&
pkill -9 php &&
${APACHE2}/bin/apachectl stop &&
php ${MANAGER}/servico/servicolinux.php5 start &&
${APACHE2}/bin/apachectl start &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 67.sh" &&
echo -e "****************" &&
veianew ;
