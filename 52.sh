#!/bin/bash
#Data alteração 20013
#REV. 1

##sudo umount ${SERVER_VN_MODULOPHPPDV}/ &
echo '.'
sleep 2 &&

echo '..'
sudo php ${HTDOCS}/modulo_compilado/equalizar_pastas.php &&

echo '...'
cd ${HTDOCS}/modulo_compilado/
sudo zip -r ${PATH_COMUM}/moduloPHPPDV/Modulo_$(ls ${HTDOCS}/*.zip.TEMP | sed 's/^.*htdocs\///').zip * &&

echo '... .'
umount $SERVER_VN_MODULOPHPPDV/
umount $SERVER_VN_MODULOPHPPDV/
umount $SERVER_VN_MODULOPHPPDV/
umount $SERVER_VN_MODULOPHPPDV/
${COMANDO2} &&

echo '... ..'
sleep 2 &&

echo '... ...'
cp ${PATH_COMUM}/moduloPHPPDV/Modulo_$(ls ${HTDOCS}/*.zip.TEMP | sed 's/^.*htdocs\///').zip ${SERVER_VN_MODULOPHPPDV}/ &&

# renomeando no SERVER_VN_MODULOPHPPDV de .zip.TEMP.zip para .zip
echo '... ... .'
cd  ${SERVER_VN_MODULOPHPPDV}
for arquivo in *.zip.TEMP.zip
do
newname=$(basename ${arquivo} zip.TEMP.zip)zip
mv ${arquivo} ${newname}
done

# renomeando no PATH_COMUM de .zip.TEMP.zip para .zip
echo '... ... ..'
cd  ${PATH_COMUM}/moduloPHPPDV/
for arquivo in *.zip.TEMP.zip
do
newname=$(basename ${arquivo} zip.TEMP.zip)zip
mv ${arquivo} ${newname}
done

echo '... ... ...'
sleep 1 &&

echo '... ... ... .'
umount $SERVER_VN_MODULOPHPPDV/ &&

echo '.   .'
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
