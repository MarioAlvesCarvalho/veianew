#!/bin/bash
#Data alteração 20322

echo -e "TESTE_BKP25"
unset ARQ_BKP

for ARQ_BKP in `find ${HTDOCS} -maxdepth 1  -name '*anager*.zip' -mtime +20 -exec ls -lt {} \; | awk '{print $9}' `
echo -e "***Não há pacotes do Manager com mais de 20 dias !!!"
do
echo -e "Excluindo pacotes do manager com mais de 20 dias!!!"

if [ -f ${ARQ_BKP}  ] ; then
mv -f  ${ARQ_BKP}  ${HTDOCS}/EXCLUIDO/
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
veianew
