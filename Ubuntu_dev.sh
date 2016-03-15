#/bin/bash
source='mirrors.aliyun.com' #镜像源
mysql='mysql-apt-config_0.6.0-1_all.deb' #mysql源
node=4 #选用4或5
sudo sed -ig  "s@//[^/]*@//$source@" /etc/apt/sources.list
sudo apt-get update
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:nginx/development
sudo add-apt-repository -y ppa:chris-lea/redis-server
wget http://dev.mysql.com/get/$mysql | sudo dpkg -i $mysql
if [[ $node -eq 4 ]]; then
	curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
fi
if [[ $node -eq 5 ]]; then
	curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
fi
sudo apt-get upgrade
sudo apt-get install -y build-essential mysql-server nodejs nginx vim git nload htop redis-server tmux
