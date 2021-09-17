<?php
require_once '../includes/OperationsDB.php';
$respnse = array();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['admno']) and isset($_POST['userID']) and isset($_POST['password']) and isset($_POST['time']) and isset($_POST['balance'])) {
        $db = new OperationsDB();
        $user = $db->createUser($_POST['admno'], $_POST['userID'], $_POST['password'], $_POST['time'], $_POST['balance']);
        if ($user == 1) {
            $respnse['error'] = false;
            $respnse['message'] = "User registered successfully";
        } else if ($user == 2) {
            $respnse['error'] = true;
            $respnse['message'] = "Some thing is error!";
        } else if ($user == 0) {
            $respnse['error'] = true;
            $respnse['message'] = "This user already exist!";
        }
    } else {
        $respnse['error'] = true;
        $respnse['message'] = "Require fields are missing!";
    }
}
echo json_encode($respnse);