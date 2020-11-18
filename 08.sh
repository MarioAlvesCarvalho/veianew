#!/bin/bash
#Data alteração 20185

echo -e "#REV. 1"

cp /web/manager/Logs/`date +%Y%m%d`/zeusmanager.zlg ${PATH_COMUM}/zeusmanager`date +%Y%m%d`.zlg
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 08.sh" &&
echo -e "****************"
veianew ;
