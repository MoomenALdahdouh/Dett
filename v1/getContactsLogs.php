<?php
require_once '../includes/OperationsDB.php';
$db = new OperationsDB();
$respnse = array();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['mobile'])) {
        $callLogs = $db->getContactsLogs($_POST['mobile']);
        if (!empty($callLogs)) {
            $respnse['error'] = false;
            $respnse['message'] = "Successfully";
            $respnse['callLogs'] = $callLogs;
        } else {
            $respnse['error'] = true;
            $respnse['message'] = "Error!";
        }
    } else {
        $respnse['error'] = true;
        $respnse['message'] = "Require fields are missing";
    }
}
echo json_encode($respnse);
