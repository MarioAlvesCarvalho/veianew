#!/bin/bash
#Data alteração 20324

echo -e "#REV. 2"

echo -e 'Aguarde, conectando no ftp.zanthus.com.br' &&
echo -e 'Atualizando bibliotecas para o PATH_COMUM!!!' &&
sleep 3 &&

if [ -d "${PATH_COMUM}/so" ] ; then
echo -e "Validando ${PATH_COMUM}/so ..."
else
echo -e "Criando diretorio ${PATH_COMUM}/so"
mkdir "${PATH_COMUM}/so"
chmod 777 "${PATH_COMUM}/so"
fi

if [ -d "${PATH_COMUM}/so_co5" ] ; then
echo -e "Validando ${PATH_COMUM}/so_co5 ..."
else
echo -e "Criando diretorio ${PATH_COMUM}/so_co5"
mkdir "${PATH_COMUM}/so_co5"
chmod 777 "${PATH_COMUM}/so_co5"
fi

if [ -d "${PATH_COMUM}/so_r64" ] ; then
echo -e "Validando ${PATH_COMUM}/so_r64 ..."
else
echo -e "Criando diretorio ${PATH_COMUM}/so_r64"
mkdir "${PATH_COMUM}/so_r64"
chmod 777 "${PATH_COMUM}/so_r64"
fi

if [ -d "${PATH_COMUM}/so_u64" ] ; then
echo -e "Validando ${PATH_COMUM}/so_u64 ..."
else
echo -e "Criando diretorio ${PATH_COMUM}/so_u64"
mkdir "${PATH_COMUM}/so_u64"
chmod 777 "${PATH_COMUM}/so_u64"
fi

if [ -d "${PATH_COMUM}/so_ubu" ] ; then
echo -e "Validando ${PATH_COMUM}/so_ubu ..."
else
echo -e "Criando diretorio ${PATH_COMUM}/so_ubu"
mkdir "${PATH_COMUM}/so_ubu"
chmod 777 "${PATH_COMUM}/so_ubu"
fi

if [ -d "${PATH_COMUM}/dlls" ] ; then
echo -e "Validando ${PATH_COMUM}/dlls ..."
else
echo -e "Criando diretorio ${PATH_COMUM}/dlls"
mkdir "${PATH_COMUM}/dlls"
chmod 777 "${PATH_COMUM}/dlls"
fi

wget -N --tries=2 -P ${PATH_COMUM}/so/    ${FTP_COMPLEMENTARES}/so/*      &&
wget -N --tries=2 -P ${PATH_COMUM}/so_co5 ${FTP_COMPLEMENTARES}/so_co5/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_r64 ${FTP_COMPLEMENTARES}/so_r64/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_u64 ${FTP_COMPLEMENTARES}/so_u64/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_ubu ${FTP_COMPLEMENTARES}/so_ubu/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_ubu ${FTP_COMPLEMENTARES}/dlls/*    &&

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 06.sh" &&
echo -e "****************" &&
veianew ;
