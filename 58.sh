#!/bin/bash
#Data alteração 20350
echo -e "#REV. 5"
sleep 1

if [ -d "${HTDOCS}/ZMWSINFO" ]; then
echo -e "Validando ${HTDOCS}/ZMWSINFO ..."
else
echo -e "Criando ${HTDOCS}/ZMWSINFO ..."
mkdir ${HTDOCS}/ZMWSINFO
fi

file_zmws=`ls ${HTDOCS}/ZMWSInfo*.* | wc -l`
  if [ $file_zmws -gt 0 ]
    then
      echo -e "Movendo ZMWSInfo para ${HTDOCS}/ZMWSINFO ..."
      mv ${HTDOCS}/ZMWSInfo*.* ${HTDOCS}/ZMWSINFO/
      chmod 750 ${HTDOCS}/ZMWSINFO/*
  else
    echo -e "Não há ZMWSInfo para copiar!"
  fi

ListaArquivos_ZMWSInfo(){
if [ `find ${HTDOCS}/ZMWSINFO -maxdepth 1 -iname  ZMWSInfo*.* | wc -l` -gt 0 ]; then
clear; i=1

echo -e "#     ${Cor_Amarelo} OPÇÕES\t\b\b********************************  ZMWSInfo Config  ********************************${Cor_Preto}"
CASE='case $opt in'
for zmws in `ls -1tr ${HTDOCS}/ZMWSINFO/ZMWSInfo*.* | awk -F"/" '{print $7}'`
do
    echo -e "#\t\b\b\b\b$i    ${zmws}"
     CASE="${CASE}
  $i) cp ${HTDOCS}/ZMWSINFO/${zmws} ${MANAGER}/ZMWSInfo.ini && sleep 1 ;;"
  i=$((i+1))
done

CASE="${CASE}
   581)  ${VEIANEW}/581.sh ;;
   00)  ${VEIANEW}/00.sh ;;
   *) echo 'OPÇÃO INVÁLIDA! TENTE NOVAMENTE'; sleep 2; clear; ListaArquivos_ZMWSInfo;;
esac"
#clear
echo -e ""
echo -e "\t\b\b\b\b***** ZMWSInfo *****"
echo -e ""
echo -e "#\t\b\b\b\b581          CRIAR ZMWSInfo.ini"
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
echo -e "Termino do 58.sh" &&
echo -e "****************" &&

veianew ;
