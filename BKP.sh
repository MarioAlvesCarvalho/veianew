!/bin/bash
#Data alteração 20282

####umount ${SERVER_VN}/*
echo -e "TESTE_BKP21"
###chmod 750 * ${SERVER_VN_MODULOPHPPDV}

###ANOMES=$(date +'%Y-%m')
#export ANOMES_1=$(date +'%Y-%m' -d '-1 month')
#export ANOMES_2=$(date +'%Y-%m' -d '-2 month')
#export ANOMES_3=$(date +'%Y-%m' -d '-3 month')

#$COMANDO1 &
#$COMANDO1 &
#$COMANDO1 &
sleep 1
unset ARQ_BKP
echo -e "antes do for"
####for ARQ_BKP in `find /web/ -name '*anager*.zip' -ctime +5 -exec ls -lt {} \; | awk '{print $9}' ` ; do

for ARQ_BKP in `find  /web/ -maxdepth 1  -name *anager*.zip -mtime +20 -exec ls -lt {} \; | awk '{print $9}' `
do

#####ANOMES_ARQ_BKP=$(ls --full-time ${ARQ_BKP} | awk '{print $6}' | cut -c1-15)
##ARQ_BKP = `find ${HTDOCS}/ -name '*anager*.zip' -atime +20 -exec ls -lt {} \; | awk '{print $9}' `

echo -e "antes do if"
if [ -f ${ARQ_BKP}  ] ; then
echo -e "estou dentro do if"
mv -f  ${ARQ_BKP}  /web/EXCLUIDO/
echo -e "Pacote "${ARQ_BKP}" foi gerado a mais de 20 e sera excluido !!!"
else
echo -e "estou dentro do else"
echo -e "Não há pacotes do Manager com mais de 20 dias !!!"
fi
echo -e "depois do ultimo if, e antes do done"
done


echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "***********************" &&
echo -e "Termino do BKP.sh" &&
echo -e "***********************" &&
echo -e "***********************"
