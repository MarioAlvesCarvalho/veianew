#!/bin/bash
#Data alteração 20252

echo -e "#REV. 1"

php ${MANAGER}/servico/servicolinux.php5 start &&
${APACHE2}/bin/apachectl start &&
chown -R zanthus.zanthus ${MANAGER}/Logs/
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 69.sh" &&
echo -e "****************" &&
veianew ;
