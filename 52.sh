#!/bin/bash
#Data alteração 20006

echo -e '0'
#sudo umount ${SERVER_VN_MODULOPHPPDV}/ &&

echo -e '1'
sleep 2 &&

echo -e '2'
sudo php ${HTDOCS}/modulo_compilado/equalizar_pastas.php &&

echo -e '3'
sudo zip -r ${HTDOCS}/modulo_compilado ${HTDOCS}/Modulo_$(ls ${HTDOCS}/*.zip.TEMP).zip * &&

echo -e '4'
${COMANDO2} &&

echo -e '5'
sleep 2 &&

echo -e '6'
cp Modulo_$(ls ${HTDOCS}/*.zip.TEMP).zip ${SERVER_VN_MODULOPHPPDV}/ &&

echo -e '7'
umount $SERVER_VN_MODULOPHPPDV/ &&

echo -e '8'
sleep 1 &&

echo -e '9 fim'
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 52.sh" &&
echo -e "****************" ;
