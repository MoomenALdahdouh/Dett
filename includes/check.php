<?php
/*require_once dirname(__FILE__) . '/Connect.php';
$db = new Connect();
$db->connect();*/

require_once dirname(__FILE__) . '/OperationsDB.php';
$db = new OperationsDB();
$db->createUser('231','mooooo','lklk','sdkjsa','1');

