
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

echo 'inicio 1'

i='0'
while [ $i = '0' ]; do
  echo 'antes mountpoint'
  mountpoint  ${SERVER_VN_MODULOPHPPDV}
  if [$? == 0 ]
  then
    echo 'esta montado, vamos desmontar. '
    umount ${SERVER_VN_MODULOPHPPDV}
  else
    i='1'
  fi
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
