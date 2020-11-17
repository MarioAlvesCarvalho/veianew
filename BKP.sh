#!/bin/bash
#Data alteração 20322

echo -e "TESTE_BKP25"
unset ARQ_BKP

for ARQ_BKP in `find ${HTDOCS} -maxdepth 1  -name '*anager*.zip' -mtime +20 -exec ls -lt {} \; | awk '{print $9}' `
do
if [ -f ${ARQ_BKP}  ] ; then
mv -f  ${ARQ_BKP}  ${HTDOCS}/EXCLUIDO/
echo -e "Pacote "${ARQ_BKP}" foi gerado a mais de 20 e sera excluido !!!"
else
echo -e "Não há pacotes do Manager com mais de 20 dias !!!"
fi
done

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "***********************" &&
echo -e "Termino do BKP.sh" &&
echo -e "***********************" &&
echo -e "***********************"
