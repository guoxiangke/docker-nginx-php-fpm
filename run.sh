#! /bin/bash
# if no git 
cd ./code
if [ -d .git ]; then
  	sudo git checkout .
	sudo git pull origin master
else
	cd ../
	rm ./code -rf
	git clone https://github.com/guoxiangke/api.git ./code

fi;
cd ../
sudo chmod 755 -R ./code
sudo chown -R www-data:www-data ./code
docker-compose -f ./docker-compose.yml up -d
