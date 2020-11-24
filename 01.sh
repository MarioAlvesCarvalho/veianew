#!/bin/bash
#Data alteração 20329

echo -e "#REV. 6"

unset VEIANEW
VEIANEW="/usr/local/apache22/VEIANEW"  ##Tambem existe no veianew
wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777 ${VEIANEW}/master.zip &&
chmod +x ${VEIANEW}/master.zip &&
unzip -oq ${VEIANEW}/master.zip -d ${VEIANEW} &&
sudo rm -rf ${VEIANEW}/*.sh
sudo cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ &&
sudo chmod 775 ${VEIANEW}/*.sh ${VEIANEW}/*.vnw
sudo chown root.root ${VEIANEW}/*.sh ${VEIANEW}/*vnw
sudo rm -rf ${VEIANEW}/master.zip ${VEIANEW}/veianew-master


#### EXCLUINDO VEIANEW DE LOCAIS ANTIGOS
#VEIANEW_ANT1="/usr/local/apache22/VEIANEW/"
#VEIANEW_ANT2="/usr/src/VEIANEW/"
#
#if [ -d "${VEIANEW_ANT1}" ] ; then
#echo -e "Excluindo ${VEIANEW_ANT1} ..."
#rm -rf "${VEIANEW_ANT1}"
#else
#fi
#
#if [ -d "${VEIANEW_ANT2}" ] ; then
#echo -e "Excluindo ${VEIANEW_ANT2} ..."
#rm -rf "${VEIANEW_ANT2}"
#else
#fi

if [ -e "/bin/veianew_velho" ] ; then
echo -e "Excluindo /bin/veianew_velho ..."
rm -rf "/bin/veianew_velho"
else
fi

if [ -e "/bin/veianew.ini" ] ; then
echo -e "Excluindo /bin/veianew.ini ..."
rm -rf "/bin/veianew.ini"
else
fi


#Criando link limbolico
#VEIANEW_SIMB=`ll -ltr /bin/veianew* |  awk '{print $9 $10 $11}'`
#if [ ${VEIANEW_SIMB} == "/bin/veianew->/usr/local/VEIANEW/veianew" ] ; then
#echo -e "Validando ${VEIANEW_SIMB} ..."
#else
#rm -rf /bin/veianew
#ln -s ${VEIANEW}veianew /bin/veianew ;
#fi

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 01.sh" &&
echo -e "****************" ;

#### atualiza manual
#### unset VEIANEW && VEIANEW="/usr/local/apache22/VEIANEW" && wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip && chmod -R 777 ${VEIANEW}/master.zip && chmod +x ${VEIANEW}/master.zip && unzip -oq ${VEIANEW}/master.zip -d ${VEIANEW} && sudo rm -rf ${VEIANEW}/*.sh ; sudo cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ && sudo chmod 775 ${VEIANEW}/* sudo chown root.root ${VEIANEW}/* && sudo rm -rf ${VEIANEW}/master.zip ${VEIANEW}/veianew-master ;
