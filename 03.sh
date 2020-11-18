#!/bin/bash
#Data alteração 20005

echo -e "#REV. 1"

rsync -uv ${PATH_COMUM}/so_r64/* /usr/src/libs_zanthus &&
ldconfig &&
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 03.sh" &&
echo -e "****************" &&
veianew ;
