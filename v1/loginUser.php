<?php
require_once '../includes/OperationsDB.php';
$respnse = array();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['userID']) and isset($_POST['password'])) {
        $db = new OperationsDB();
        $userData = $db->loginUserAndGet($_POST['userID'], $_POST['password']);
        if (!empty($userData)) {
            $respnse['error'] = false;
            $respnse['message'] = "Login Successfully!";
            $respnse['user'] = $userData;
            $db->addHistoryLogin($_POST['userID']);
            //$db->getPhoneCall();
        } else {
            $respnse['error'] = true;
            $respnse['message'] = "You have not account! create new Account";
        }
    } else {
        $respnse['error'] = true;
        $respnse['message'] = "Require fields are missing";
    }
}
echo json_encode($respnse);