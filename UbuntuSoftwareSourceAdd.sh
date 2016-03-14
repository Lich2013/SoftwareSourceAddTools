#/bin/bash
source='mirrors.aliyun.com' #镜像源
mysql='mysql-apt-config_0.6.0-1_all.deb' #mysql源
sudo sed -ig  "s@//[^/]*@//$source@" /etc/apt/source.list
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:nginx/development
wget http://dev.mysql.com/get/$mysql | sudo dpkg -i $mysql
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install mysql-server nodejs nginx
