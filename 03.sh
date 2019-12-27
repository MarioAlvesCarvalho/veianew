#!/bin/bash
#Data alteração 19361

rsync -uv /Zanthus/Zeus/PATH_COMUM/so_r64/* /usr/src/libs_zanthus ; ldconfig ; sleep 1 ; veianew &
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 03.sh" &&
echo -e "****************" &&
veianew ;
