#!/bin/bash
#Data alteração 19361

 ${COMANDO1} ; ${COMANDO3}; sleep 3 &&  rsync -uv ${SERVER_VN_SCRIPTS_VEIANEW}/BKP_moduloPHPPDV.sh ${SERVER_VN_MODULOPHPPDV}/BKP_moduloPHPPDV.sh ; chmod -x ${SERVER_VN_MODULOPHPPDV}/BKP_moduloPHPPDV.sh && ${SERVER_VN_MODULOPHPPDV}/BKP_moduloPHPPDV.sh ; sleep 5 ; rm ${SERVER_VN_MODULOPHPPDV}/BKP_moduloPHPPDV.sh ; umount ${SERVER_VN_MODULOPHPPDV}/ ; sleep 2 ; veianew ;;
