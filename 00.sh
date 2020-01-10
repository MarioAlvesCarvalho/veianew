#!/bin/bash
#Data alteração 20010
#REV. 1


if [ 'mount | grep 192.168.0.66' -gt 0 ]
then
    ##umount ${SERVER_VN}/*
    umount /Zanthus/Zeus/path_comum/0.66/*
else
  exit
fi

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 00.sh" &&
echo -e "****************" ;
