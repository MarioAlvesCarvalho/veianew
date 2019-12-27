#!/bin/bash
#Data alteração 19361
echo -e "linha 1"
${COMANDO4} &&

echo -e "linha 2"
sleep 4 &&

echo -e "linha 3"
mv -f ${HTDOCS}/modulo_compilado ${HTDOCS}/modulo_compilado_OLD &&

echo -e "linha 3"
sleep 3 &&

echo -e "linha 4"
mkdir ${HTDOCS}/modulo_compilado &&
wait &&

echo -e "linha 5"
chmod -R 777 ${HTDOCS}/modulo_compilado &&

echo -e "linha 6"
sleep 3 &&

echo -e "linha 7"
rsync -ravzpt ${SERVER_VN_MODULO_COMPILADO}/* ${HTDOCS}/modulo_compilado/
wait &

echo -e "linha 8"
##umount ${SERVER_VN_MODULO_COMPILADO}/ &&

echo -e "linha 9"
rm -rf ${HTDOCS}/modulo_compilado_OLD &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e 'Atualização do Modulo_Compilado concluída com sucesso!!!' &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 02.sh" &&
echo -e "****************" &&
veianew ;
