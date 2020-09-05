#!/bin/bash
#Data alteração 20249

php ${MANAGER}/servico/servicolinux.php5 start &
${APACHE2}/bin/apachectl start &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 69.sh" &&
echo -e "****************" &&
veianew ;
