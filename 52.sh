#!/bin/bash
#Data alteração 20009

##sudo umount ${SERVER_VN_MODULOPHPPDV}/ &
echo '1'
sleep 2 &&

echo '2'
sudo php ${HTDOCS}/modulo_compilado/equalizar_pastas.php &&

echo '3'
sudo zip -r ${PATH_COMUM}/moduloPHPPDV/Modulo_$(ls ${HTDOCS}/*.zip.TEMP | sed 's/^.*htdocs\///').zip ${HTDOCS}/modulo_compilado/ &&

echo '4'
${COMANDO2} &&

echo '5'
sleep 2 &&

echo '6'
cp ${PATH_COMUM}/moduloPHPPDV/Modulo_$(ls ${HTDOCS}/*.zip.TEMP | sed 's/^.*htdocs\///').zip ${SERVER_VN_MODULOPHPPDV}/ &&

echo '7'
umount $SERVER_VN_MODULOPHPPDV/ &&

echo 'fim'
##comando real
##sudo zip -r /Zanthus/Zeus/path_comum/moduloPHPPDV/Modulo_$(ls /usr/local/apache22/htdocs/*.zip.TEMP | sed 's/^.*htdocs\///').zip /usr/local/apache22/htdocs/modulo_compilado/ &&
##cp /Zanthus/Zeus/path_comum/moduloPHPPDV/Modulo_$(ls /usr/local/apache22/htdocs/*.zip.TEMP | sed 's/^.*htdocs\///').zip /Zanthus/Zeus/path_comum/0.66/MODULOPHPPDV/ &&

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 52.sh" &&
echo -e "****************" ;
