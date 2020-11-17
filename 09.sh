#!/bin/bash
#Data alteração 20005

echo -e 'Aguarde, conectando no ftp.zanthus.com.br' &&
echo -e 'Copiando manager mais recente para sua pasta HTDOCS!!!' &&
sleep 3 &&
wget -N --tries=2 -P ${PATH_COMUM}/so/ ftp://${FTP_COMPLEMENTARES}/so/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_co5 ftp://${FTP_COMPLEMENTARES}/so_co5/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_r64 ftp://${FTP_COMPLEMENTARES}/so_r64/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_u64 ftp://${FTP_COMPLEMENTARES}/so_u64/*  &&
wget -N --tries=2 -P ${PATH_COMUM}/so_ubu ftp://${FTP_COMPLEMENTARES}/so_ubu/*  &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 09.sh" &&
echo -e "****************" &&
veianew ;
