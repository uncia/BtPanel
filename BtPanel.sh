#!/bin/bash
while [ "$go" != 'y' ] && [ "$go" != 'n' ]
do
clear
read -p "
宝塔专业版破解补丁 By:Uncia

是否安装补丁？(y/n):" go;
done

if [ "$go" = 'n' ];then
	exit;
fi
startTime=`date +%s`
wget -O update.sh https://raw.githubusercontent.com/uncia/BtPanel/master/update_pro.sh && bash update.sh pro
cd /www/server/panel/class
mv common.py common.py.bak
wget -N --no-check-certificate https://raw.githubusercontent.com/uncia/BtPanel/master/common.zip
unzip common.zip
rm common.zip
rm /root/btpanel.sh
cd /www/server/panel/data
touch userInfo.json
chmod 444 userInfo.json
/etc/init.d/bt restart

echo "====================================="
echo "恭喜您,宝塔专业版破解补丁已成功安装!";