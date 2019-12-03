 $COMANDO1 ; $COMANDO3; sleep 3 &&
   rsync -uv $PATH_015_SCRIPTS_VEIANEW/BKP_manager.sh $manager/BKP_manager.sh ;
  chmod -x $manager/BKP_manager.sh &&
   $manager/BKP_manager.sh ;
   sleep 5 ;
   rm $manager/BKP_manager.sh ;

if umount MANAGER
   umount $manager/ ;


   sleep 2
 ; veianew ;;
