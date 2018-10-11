run:
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.2-cli php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.1-cli php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.0-cli php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:5.6-cli php bug.php
	-@docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:5.5-cli php bug.php
