	#! /bin/bash
	if [ -z "$1" ]
	then
	     ProjectName="api"
	else
		ProjectName=$1
	fi
	if [ -z "$1" ]
	then
	     GitUrl="https://github.com/guoxiangke/api.git"
	else
		GitUrl=$2
	fi
	echo your github url $GitUrl
	echo Your ProjectName is : $ProjectName

	Branch="docker_"
	GitBranch=$Branch$ProjectName

	echo your github Branch must be $GitBranch
	cd ./code
	if [ -d .git ]; then
	  	sudo git checkout .
	  	sudo git fetch
	  	sudo git checkout $GitBranch
		sudo git pull origin $GitBranch
	else
		cd ../
		rm ./code -rf
		git clone $GitUrl ./code

	fi;

	cd ../
	# sudo chmod 755 -R ./code
	# sudo chown -R www-data:www-data ./code
	docker-compose -p $ProjectName -f ./docker-compose.yml up -d  --build --remove-orphans

	###import databses example!!!!
	# docker exec -it api_db_1 bash
	# mysql -udrupal -pdrupal
	# use drupal;
	# set autocommit =1;
	# source /sql/api.sql;

	###import old files for drupal example!!!!