<?php

$v = phpversion()." - ".\Phalcon\Version::get();

echo "Running test for ".$v.PHP_EOL;

$session = new \Phalcon\Session\Adapter\Files();
echo "Session instantiated".PHP_EOL;

$session->start();
echo "Session started".PHP_EOL;

$session->set('test', 'test');
echo "Session key set".PHP_EOL;

echo "\033[32m ".$v." EXITED SUCCESSFULLY\033[0m".PHP_EOL;
