#!/bin/bash
#Data alteração 19361

${COMANDO4} &&
sleep 4 &&
mv -f  ${HTDOCS}/modulo_compilado ${HTDOCS}/modulo_compilado_OLD &&
sleep 3 &&
mkdir ${HTDOCS}/modulo_compilado &&
chmod -R 777 ${HTDOCS}/modulo_compilado &&
rsync -ravzpt ${SERVER_VN_MODULO_COMPILADO}/* ${HTDOCS}/modulo_compilado/ &&
umount ${SERVER_VN_MODULO_COMPILADO}/ &&
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
