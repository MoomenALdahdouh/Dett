<?php
require_once '../includes/OperationsDB.php';
$respnse = array();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['admno']) and isset($_POST['mobile']) and isset($_POST['date']) and isset($_POST['time']) and isset($_POST['action'])) {
        $db = new OperationsDB();
        $contactLog = $db->addPhoneLog($_POST['admno'], $_POST['mobile'], $_POST['date'], $_POST['time'], $_POST['action']);
        if ($contactLog == 0) {
            $respnse['error'] = false;
            $respnse['message'] = "This contact log signed successfully";
        } else if ($contactLog == 1) {
            $respnse['error'] = true;
            $respnse['message'] = "Some thing is error!";
        }
    } else {
        $respnse['error'] = true;
        $respnse['message'] = "Require fields are missing!";
    }
}
echo json_encode($respnse);