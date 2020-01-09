#!/bin/bash
#Data alteração 20009

export ANOMES=$(date +'%Y-%m')
export ANOMES_1=$(date +'%Y-%m' -d '-1 month')
export ANOMES_2=$(date +'%Y-%m' -d '-2 month')
export ANOMES_3=$(date +'%Y-%m' -d '-3 month')

$COMANDO1 &
$COMANDO2 &

for ARQ_BKPMODULO in `find ${DIR_BKPMODULO}/*.zip -ctime +4 -exec ls -lt {} \; | awk '{print $9}' `; do
ANOMES_ARQ_BKPMODULO=$(ls --full-time arq | awk '{print $6}' | cut -c1-7)

if [ "${ANOMES}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
mkdir -p ${DESTINO_BKPMODULO}/${ANOMES}
mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/${ANOMES}

else
if [ "${ANOMES_1}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
mkdir -p ${DESTINO_BKPMODULO}/${ANOMES_1}
mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/$ANOMES_1

else
if [ "${ANOMES_2}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
mkdir -p ${DESTINO_BKPMODULO}/${ANOMES_2}
mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/${ANOMES_2}

else
if [ "${ANOMES_3}" = "${ANOMES_ARQ_BKPMODULO}" ]; then
mkdir -p ${DESTINO_BKPMODULO}/${ANOMES_3}
mv -f -v ${ARQ_BKPMODULO} ${DESTINO_BKPMODULO}/${ANOMES_3}

fi
fi
fi
fi
done
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "***********************" &&
echo -e "Termino do BKPMODULO.sh" &&
echo -e "***********************" &&
veianew ;
