<?php

define('HOST', 'localhost');
define('USER', 'root');
define('PASSWORD', '');
define('DB', 'test');

$DSN = "mysql:host=" . HOST . ";dbname=" . DB;

$connect = new PDO($DSN, USER, PASSWORD);

$connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$connect->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
