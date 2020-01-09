#!/bin/bash
#Data alteração 20009

$COMANDO1 &
$COMANDO3 &

for ARQ_BKP in `find ${DIR_BKP}/*.zip -ctime +4 -exec ls -lt {} \; | awk '{print $9}' `; do
ANOMES_ARQ_BKP=$(ls --full-time arq | awk '{print $6}' | cut -c1-7)

if [ "${ANOMES}" = "${ANOMES_ARQ_BKP}" ]; then
mkdir -p ${DESTINO_BKP}/${ANOMES}
mv -f -v ${ARQ_BKP} ${DESTINO_BKP}/${ANOMES}

else
if [ "${ANOMES_1}" = "${ANOMES_ARQ_BKP}" ]; then
mkdir -p ${DESTINO_BKP}/${ANOMES_1}
mv -f -v ${ARQ_BKP} ${DESTINO_BKP}/$ANOMES_1

else
if [ "${ANOMES_2}" = "${ANOMES_ARQ_BKP}" ]; then
mkdir -p ${DESTINO_BKP}/${ANOMES_2}
mv -f -v ${ARQ_BKP} ${DESTINO_BKP}/${ANOMES_2}

else
if [ "${ANOMES_3}" = "${ANOMES_ARQ_BKP}" ]; then
mkdir -p ${DESTINO_BKP}/${ANOMES_3}
mv -f -v ${ARQ_BKP} ${DESTINO_BKP}/${ANOMES_3}

fi
fi
fi
fi
done
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "*****************" &&
echo -e "Termino do BKP.sh" &&
echo -e "*****************" &&
veianew ;
