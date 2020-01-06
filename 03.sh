#!/bin/bash
#Data alteração 20005

rsync -uv /Zanthus/Zeus/PATH_COMUM/so_r64/* /usr/src/libs_zanthus &&
ldconfig &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 03.sh" &&
echo -e "****************" &&
veianew ;
