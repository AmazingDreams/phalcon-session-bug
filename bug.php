<?php

echo "Running test for ".phpversion().PHP_EOL;

$session = new \Phalcon\Session\Adapter\Files();
echo "Session instantiated".PHP_EOL;

$session->start();
echo "Session started".PHP_EOL;

$session->set('test', 'test');
echo "Session key set".PHP_EOL;

echo "\033[32m ".phpversion()." EXITED SUCCESSFULLY\033[0m".PHP_EOL;
