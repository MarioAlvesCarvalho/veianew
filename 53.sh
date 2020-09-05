#!/bin/bash
#Data alteração 20249

sudo find ${HTDOCS}/ -iname '*.zlg' -exec rm -rf {} \; &
sudo find ${HTDOCS}/ -iname 'mirage_*.log' -exec rm -rf {} \; &
rm -rf /tmp/php_errors.log &
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 53.sh" &&
echo -e "****************" &&
veianew ;
