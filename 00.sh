
#!/bin/bash
#Data alteração 20010
#REV. 1

MOUNTPOINT_SERVER_VN_MODULOPHPPDV(){
mountpoint -q ${SERVER_VN_MODULOPHPPDV}
if [ $? == 0 ]
  then
    echo 'esta montado, vamos desmontar. '
    umount ${SERVER_VN_MODULOPHPPDV}
  }
  MOUNTPOINT_SERVER_VN_MODULOPHPPDV
else
  echo'.'
fi


#${SERVER_VN_MODULOPHPPDV}
#${SERVER_VN_SCRIPTS_VEIANEW}
#${SERVER_VN_MODULO_COMPILADO}


echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 00.sh" &&
echo -e "****************" ;
