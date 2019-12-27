#!/bin/bash
#Data alteração 19361

php $MANAGER/servico/servicolinux.php5 stop ; pkill -9 php && php $MANAGER/servico/servicolinux.php5 start ; sleep 1 && veianew &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 87.sh" &&
echo -e "****************" &&
veianew ;
