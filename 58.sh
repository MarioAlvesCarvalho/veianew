#!/bin/bash
#Data alteração 20350
echo -e "#REV. 3"

if [ -d "${HTDOCS}/ZMWSINFO"] ; then
echo -e "Validando ${HTDOCS}/ZMWSINFO ..."
else
echo -e "Criando ${HTDOCS}/ZMWSINFO ..."
mkdir ${HTDOCS}/ZMWSINFO
fi

if [-e ${HTDOCS}/ZMWSInfo*.* ]; then
echo -e "Copiando ZMWSInfo para ${HTDOCS}/ZMWSINFO"
cp ${HTDOCS}/ZMWSInfo*.* ${HTDOCS}/ZMWSINFO 
else
echo -e "Não há ZMWSInfo para copiar!"
fi

ListaArquivos_ZMWSInfo(){
if [ `find /web/ -maxdepth 1 -name 'ZMWSInfo*.ini' | wc -l` -gt 0 ]; then
clear; i=1

echo -e "#     ${Cor_Amarelo} OPÇÕES\t\b\b********************************  ZMWSInfo Config  ********************************${Cor_Preto}"
CASE='case $opt in'
for zmws in `ls /web/ -1tr ZMWSInfo*.ini`
do
    echo -e "#\t\b\b\b\b$i    ${zmws}"
    CASE="${CASE}
  $i) cp ${HTDOCS}/ZMWSINFO/${zmws} ${MANAGER}/ZMWSInfo.ini && sleep 1 ;;"
  i=$((i+1))
done

CASE="${CASE}

   01B) ${VEIANEW}/01B.sh ;;
   BKP) ${VEIANEW}/BKP.sh ;;
   00)  ${VEIANEW}/00.sh ;;
   *) echo 'OPÇÃO INVÁLIDA! TENTE NOVAMENTE'; sleep 2; clear; ListaArquivos_manut;;
esac"
clear
echo -e ""
#echo -e "\t\t***** MANUTENCAO *****"
echo -e ""
echo -e "#\t\b\b\b\b01B          ATUALIZAR VEIANEW BETA"
echo -e "#\t\b\b\b\bBKP          BKP MANAGER +20 DIAS NO HTDOCS"
echo -e "#\t\b\b\b\b00           SAIR"
echo -e "#\t\b\b\b\b                                                                              ${Cor_FundoCinza} ${Cor_Vermelho} ${VERSION_VN} ${Cor_Preto}"
echo -ne "#${Cor_VerdeClaro}   INFORME A OPÇÃO DESEJADA: "
read -p "" opt
echo -e "${Cor_Preto}"
eval "${CASE}"

else
clear
echo -e "#\n#\n#\t NÃO HA PACOTES DO MANAGER DISPONIVEIS PARA EXTRAÇÃO\n#\n#"
sleep 2
clear
fi
}

ListaArquivos_ZMWSInfo
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 99.sh" &&
echo -e "****************" ;



#cp -rf ${HTDOCS}/ZMWSInfo_COMLOG.* ${MANAGER}/ZMWSInfo.ini &&
#sleep 1 &&

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 58.sh" &&
echo -e "****************" &&
veianew ;
