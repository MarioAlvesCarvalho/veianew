
#!/bin/bash
#Data alteração 20010
#REV. 5

mountpoint -q ${SERVER_VN_MODULOPHPPDV}
if [ $? == 0 ]
then
    umount ${SERVER_VN_MODULOPHPPDV}
fi

mountpoint -q ${SERVER_VN_SCRIPTS_VEIANEW}
if [ $? == 0 ]
then
    umount ${SERVER_VN_SCRIPTS_VEIANEW}
fi

mountpoint -q ${SERVER_VN_MODULO_COMPILADO}
if [ $? == 0 ]
then
    umount ${SERVER_VN_MODULO_COMPILADO}
fi

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 00.sh" &&
echo -e "****************" ;
