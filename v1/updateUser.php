<?php
require_once '../includes/OperationsDB.php';
$respnse = array();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['userID']) and isset($_POST['time']) and isset($_POST['balance'])) {
        $db = new OperationsDB();
        $user = $db->updateUser($_POST['userID'], $_POST['time'], $_POST['balance']);
        if (!empty($user)) {
            $respnse['error'] = false;
            $respnse['message'] = "User update successfully";
            $respnse['user'] = $user;
        } else if ($user == 1) {
            $respnse['error'] = true;
            $respnse['message'] = "Some thing is error!";
        }
    } else {
        $respnse['error'] = true;
        $respnse['message'] = "Require fields are missing!";
    }
}
echo json_encode($respnse);