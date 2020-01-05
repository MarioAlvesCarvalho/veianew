#!/bin/bash
#Data alteração 20005

sudo umount ${SERVER_VN_MODULOPHPPDV}/ &&
sleep 2 &&
${COMANDO2} &&
sleep 2 &&
sudo php ${HTDOCS}/modulo_compilado/equalizar_pastas.php &&
sudo zip -r ${HTDOCS}/Modulo_$(ls ${HTDOCS}/*.zip.TEMP).zip * &&
cp Modulo_$(ls ${HTDOCS}/*.zip.TEMP).zip ${SERVER_VN_MODULOPHPPDV}/ &&
umount $SERVER_VN_MODULOPHPPDV/ &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 52.sh" &&
echo -e "****************" ;
