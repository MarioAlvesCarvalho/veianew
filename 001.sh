#!/bin/bash
#Data alteração 19361

rm -rf /bin/veianew_OLD ; cp /bin/veianew /bin/veianew_OLD ; ${COMANDO3} ; sleep 3 ; rsync -uv ${SERVER_VN_SCRIPTS_VEIANEW}/veianew_ATUALIZADO_BETA /bin/veianew_ATUALIZADO_BETA ; echo -e "${HOSTNAME}" >> ${SERVER_VN_SCRIPTS_VEIANEW}/LOGVERSION_veianew.VNL; date >> ${SERVER_VN_SCRIPTS_VEIANEW}/LOGVERSION_veianew.VNL; echo -e "${VERSION_VN}" >> ${SERVER_VN_SCRIPTS_VEIANEW}/LOGVERSION_veianew.VNL; echo -e "-----------------------------" >> ${SERVER_VN_SCRIPTS_VEIANEW}/LOGVERSION_veianew.VNL; umount ${SERVER_VN_SCRIPTS_VEIANEW}/ ; mv /bin/veianew_ATUALIZADO_BETA /bin/veianew && sleep 1 ; echo -e "" ; echo -e "" ;  echo -e 'Atualização do veianew BETA concluida com sucesso!!!' ; echo -e "" ; echo -e "" ;;
