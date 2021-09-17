<?php
require_once '../includes/OperationsDB.php';
$db = new OperationsDB();
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    echo $db->getContacts();
}
