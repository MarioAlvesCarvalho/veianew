#!/bin/bash
#Data alteração 21244
#REV. 5

if [ -d "${MANAGER}/Kernel/" ] ; then
echo -e "Validando ${MANAGER}/Kernel/"
sudo find ${MANAGER}/Kernel/ -iname 'TH*.TR*' -exec rm -rf {} \; &
echo -e "Conteudo da ${MANAGER}/Kernel/ excluido com sucesso."
else
echo -e "Diretorio ${MANAGER}/Kernel/ não existe, nada a ser feito."
fi

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 52.sh" &&
echo -e "****************" ;
