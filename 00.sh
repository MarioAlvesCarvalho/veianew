#!/bin/bash
#Data alteração 20010
#REV. 1


if [ 'mount | grep 192.168.0.66' -gt 0 ]
    umount ${SERVER_VN}/* &&
else
  exit 
fi

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 00.sh" &&
echo -e "****************" ;
