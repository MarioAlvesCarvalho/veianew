#!/bin/bash
#Data alteração 20282

####umount ${SERVER_VN}/*
echo -e "TESTE _ BKP6"
###chmod 750 * ${SERVER_VN_MODULOPHPPDV}

ANOMES=$(date +'%Y-%m')
#export ANOMES_1=$(date +'%Y-%m' -d '-1 month')
#export ANOMES_2=$(date +'%Y-%m' -d '-2 month')
#export ANOMES_3=$(date +'%Y-%m' -d '-3 month')

#$COMANDO1 &
#$COMANDO1 &
#$COMANDO1 &
sleep 2
echo -e "antes do for"
for ARQ_BKP in `find ${HTDOCS}/ -name '*anager*.zip' -atime +15 -exec ls -lt {} \; | awk '{print $9}' `; do
ANOMES_ARQ_BKP=$(ls --full-time ${ARQ_BKP} | awk '{print $6}' | cut -c1-15)

echo -e "antes do if"
if [ "${ANOMES}" = "${ANOMES_ARQ_BKP}" ]; then
###mkdir -p ${DESTINO_BKP}/${ANOMES}
## TESTE _rm -rf ${ARQ_BKP}
echo -e "estou dentro do if"
cp -rf  ${ARQ_BKP}  ${HTDOCS}/EXCLUIDO/${ARQ_BKP}
echo -e "Pacotes do Manager com mais de 15 dias foram excluidos com sucesso."
else
echo -e "Não há pacotes do Manager com mais de 15 dias"
fi
done

#$COMANDO2 &
#$COMANDO2 &
#$COMANDO2 &
#sleep 2
#
#for ARQ_BKPMODULO in `find ${DIR_BKPMODULO}/*.zip -ctime +4 -exec ls -lt {} \; | awk '{print $9}' `; do
#ANOMES_ARQ_BKPMODULO=$(ls --full-time ${ARQ_BKPMODULO} | awk '{print $6}' | cut -c1-7)
#
#if [ "${ANOMES}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
#mkdir -p ${DESTINO_BKPMODULO}/${ANOMES}
#mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/${ANOMES}
#
#else
#if [ "${ANOMES_1}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
#mkdir -p ${DESTINO_BKPMODULO}/${ANOMES_1}
#mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/$ANOMES_1
#
#else
#if [ "${ANOMES_2}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
#mkdir -p ${DESTINO_BKPMODULO}/${ANOMES_2}
#mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/${ANOMES_2}
#
#else
#if [ "${ANOMES_3}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
#mkdir -p ${DESTINO_BKPMODULO}/${ANOMES_3}
#mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/${ANOMES_3}
#
#fi
#fi
#fi
#fi
#done

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "***********************" &&
echo -e "Termino do BKP.sh" &&
echo -e "***********************" &&
veianew ;
