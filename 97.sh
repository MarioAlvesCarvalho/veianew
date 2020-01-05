#!/bin/bash
#Data alteração 19361

$APACHE2/bin/apachectl stop &
$APACHE2/bin/apachectl start &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 97.sh" &&
echo -e "****************" &&
veianew ;
