#!/bin/bash
#Data alteração 20009

ListaArquivos_manut(){
if [ `find . -name '*anager*.zip' | wc -l` -gt 0 ]; then
clear; i=1

echo -e "#     ${Cor_Amarelo} OPÇÕES\t\b\b********************************  MANUTENÇÂO  ********************************${Cor_Preto}"
CASE='case $opt in'
CASE="${CASE}
   01B) ${VEIANEW}/01B.sh ;;
   BKP) ${VEIANEW}/BKP.sh ;;
   BKPMODULO) ${VEIANEW}/BKPMODULO.sh ;;
   *) echo 'OPÇÃO INVÁLIDA! TENTE NOVAMENTE'; sleep 2; clear; ListaArquivos_manut;;
esac"
clear
echo -e ""
#echo -e "\t\t***** MANUTENCAO *****"
echo -e ""
echo -e "#\t\b\b\b\b01B   ATUALIZAR VEIANEW BETA"
echo -e "#\t\b\b\b\b599   LIMPAR PACOTES MANAGER DO 'HTDOCS'"
echo -e "#\t\b\b\b\bBKP   BKP MANAGER +7 DIAS NO SERVIDOR"
echo -e "#\t\b\b\b\bBKPMODULO    BKP MODULOPHPPDV +7 DIAS NO SERVIDOR"
echo -e "#\t\b\b\b\b00    SAIR"
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

ListaArquivos_manut
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 99.sh" &&
echo -e "****************" &&
veianew ;
