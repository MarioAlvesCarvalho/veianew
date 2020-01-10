
#!/bin/bash
#Data alteração 20010
#REV. 2


#i="10"
#for i in +1
#mountpoint  ${SERVER_VN_MODULOPHPPDV}
#if [$? == 0 ]
#  then
#    echo 'esta montado, vamos desmontar. '
#    umount ${SERVER_VN_MODULOPHPPDV}
#else
#  echo 'caiu no else.'
#fi



i="0"
until [ $i = "1" ]; do
  mountpoint  ${SERVER_VN_MODULOPHPPDV}
  if [$? == 0 ]
    then
      echo 'esta montado, vamos desmontar. '
      umount ${SERVER_VN_MODULOPHPPDV}
  else
    i='expr $i + 1'
done









#${SERVER_VN_MODULOPHPPDV}
#${SERVER_VN_SCRIPTS_VEIANEW}
#${SERVER_VN_MODULO_COMPILADO}


echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 00.sh" &&
echo -e "****************" ;
