#!/bin/bash
#Data alteração 21243

echo -e "#REV. 1"

#echo -e 'Essa opção não está ativa!!!' &&
#sleep 3 &&
#veianew


echo -e 'Aguarde, conectando no ftp.zanthus.com.br' &&
echo -e 'Copiando manager mais recente para sua pasta HTDOCS!!!' &&
php -f 09_baixar_manager.php5 "/Zanthus/Zeus/TESTE/"


sleep 3 &&

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 09.sh" &&
echo -e "****************" &&
veianew ;
