#!/bin/bash
#Data alteração 20275

unset APACHE2 &&
unset VEIANEW &&
export APACHE2="/usr/local/apache22" &&
export VEIANEW="${APACHE2}/VEIANEW" &&
wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777 ${VEIANEW}/master.zip &&
chmod +x ${VEIANEW}/master.zip &&
unzip -oq ${VEIANEW}/master.zip -d ${VEIANEW} &&
sleep 1 &&
rm -rf ${VEIANEW}/*.sh ;
cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ &&
chmod 775 ${VEIANEW}/*.sh ${VEIANEW}/*.vnw ;
chown root.root ${VEIANEW}/*.sh ${VEIANEW}/*vnw ;
rm -rf ${VEIANEW}/master.zip ${VEIANEW}/veianew-master &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "******************************************" &&
echo -e "    Instalação do VEIANEW concluida!!!    " &&
echo -e "       Execute o comando  'veianew'       " &&
echo -e "em qualquer lugar do terminal para usar!!!" &&
echo -e "******************************************" ;



https://github.com/MarioAlvesCarvalho/veianew/blob/master/01_Docker.sh


wget -N -v --tries=1 -P /usr/src/ https://github.com/MarioAlvesCarvalho/veianew/blob/master/01_Docker.sh && sh /usr/src/01_Docker.sh
