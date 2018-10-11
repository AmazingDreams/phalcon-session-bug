DOCKER_IMG := "amazingdreams/phalcon"

run:
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app ${DOCKER_IMG}:7.2 php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app ${DOCKER_IMG}:7.1 php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app ${DOCKER_IMG}:7.0 php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app ${DOCKER_IMG}:5.6 php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app ${DOCKER_IMG}:5.5 php bug.php

valgrind:
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.2-cli bash -c 'apt-get update && apt-get install -y valgrind && valgrind php bug.php'
