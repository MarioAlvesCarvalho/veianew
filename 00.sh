
#!/bin/bash
#Data alteração 20010
#REV. 2

mountpoint  ${SERVER_VN_MODULOPHPPDV}
if [$? == 0 ]
then
    echo 'esta montado, vamos desmontar'
    umount ${SERVER_VN_MODULOPHPPDV}
else
    echo 'NAO montado, vamos sair'
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
