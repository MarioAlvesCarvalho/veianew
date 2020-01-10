#!/bin/bash
#Data alteração 20010
#REV. 1


if [ 'mount | grep 192.168.0.66' -ne "0" ]
then
umount ${SERVER_VN}/* &&
fi



#exit &
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 00.sh" &&
echo -e "****************" ;
