#!/bin/bash
#Data alteração 19361

echo -e 'Aguarde, conectando no ftp.zanthus.com.br';  echo -e 'Atualizando bibliotecas para o PATH_COMUM!!!'; sleep 3 && wget -N -v --tries=2 -P ${PATH_COMUM}/so/ ftp://${FTP_COMPLEMENTARES}/so/* ; wget -N -v --tries=2 -P ${PATH_COMUM}/so_co5 ftp://${FTP_COMPLEMENTARES}/so_co5/* ; wget -N -v --tries=2 -P ${PATH_COMUM}/so_r64 ftp://${FTP_COMPLEMENTARES}/so_r64/* ; wget -N -v --tries=2 -P ${PATH_COMUM}/so_u64 ftp://${FTP_COMPLEMENTARES}/so_u64/* ; wget -N -v --tries=2 -P ${PATH_COMUM}/so_ubu ftp://${FTP_COMPLEMENTARES}/so_ubu/* ; sleep 1 && veianew &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 06.sh" &&
echo -e "****************" &&
veianew ;
