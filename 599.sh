#!/bin/bash
#Data alteração 20323

echo -e "#REV. 1"

unset ARQ_BKP

for ARQ_BKP in `find ${HTDOCS} -maxdepth 1  -name '*anager*.zip' -mtime +20 -exec ls -lt {} \; | awk '{print $9}' `
do
echo -e "Excluindo pacotes do Manager com mais de 20 dias!!!"
if [ -f ${ARQ_BKP}  ] ; then
rm -rf  ${ARQ_BKP}
else
echo -e "Não há pacotes do Manager com mais de 20 dias !!!"
fi
done

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "***********************" &&
echo -e "Termino do 599.sh" &&
echo -e "***********************" &&
veianew
