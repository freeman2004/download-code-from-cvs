#!/bin/bash
# cp file from A place to tftp
DATE=`date +%Y%m%d-%H-%M`
StartTime=`date` 
NowFolder=`pwd`
folder=$DATE'-puma6'

cd $NowFolder
mkdir $folder
cd $folder
source /opt/export_env
cvs checkout UBEE_D3_CableRG
cd -
chmod 777 $DATE -Rf
echo '*************************************************'
echo 'Download finish'
echo '*************************************************'
sleep 5

#cd ./$DATE/UBEE_D3_CableRG/Porting/Build/
#sh ./run_vgwsdk.sh
#cd -

StartTime1=`date` 

echo 'Start time = '$StartTime
echo 'End time = '$StartTime1

cp $NowFolder'/config'  $folder'/UBEE_D3_CableRG/Porting/Build'
cd $folder'/UBEE_D3_CableRG/Porting/Build'
make 




#Reference :
# DATE=`date +%Y%m%d-%k-%M`
# http://en.wikipedia.org/wiki/Date_%28Unix%29
