#!/bin/bash
#Data alteração 20249

${APACHE2}/bin/apachectl stop &
rm -rf ${HTDOCS}/*.zip.TEMP &
rsync -uv ${HTDOCS}/\"${arq}\" ${MANAGER} &&
unzip -oq ${MANAGER}/\"${arq}\" -d ${MANAGER} &&
touch ${HTDOCS}/\"${arq}.TEMP\" &&
echo -e '#\tEXTRACAO CONCLUIDA' &&
chown -R zanthus.zanthus * &&
chmod -R 777 * &&
${APACHE2}/bin/apachectl start &&
mkdir ${MANAGER}/Logs &&
chown -R zanthus.zanthus ${MANAGER}/Logs/
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do EXTRAIR.sh" &&
echo -e "****************" &&
