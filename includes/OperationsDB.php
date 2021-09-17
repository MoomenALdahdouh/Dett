<?php

class OperationsDB
{

    public function __construct()
    {

    }

    public function conn()
    {
        require_once dirname(__FILE__) . '/Connect.php';
        $db = new Connect();
        return $db->connect();
    }

    //Create new user
    public function createUser($admno, $userID, $password, $time, $balance)
    {
        //Check if exist
        if ($this->isUserExist($userID, $password)) {
            return 0;
        }
        $stmt = $this->conn()->prepare("INSERT INTO phonecall( admno,userID, password, time,balance) VALUES (:admno,:userID,:password,:time,:balance)");
        $stmt->bindParam(':admno', $admno);
        $stmt->bindParam(':userID', $userID);
        $stmt->bindParam(':password', $password);
        $stmt->bindParam(':time', $time);
        $stmt->bindParam(':balance', $balance);
        if ($stmt->execute()) {
            return 1;
        } else {
            return 2;
        }
    }

    //Check user is exists
    function isUserExist($userID, $password)
    {
        /*require_once dirname(__FILE__) . '/Connect.php';
        $db = new Connect();
        $conn = $db->connect();*/
        $stmt = $this->conn()->prepare("SELECT id FROM phonecall WHERE userID = :userID AND password = :password");
        $stmt->bindParam(':userID', $userID);
        echo $userID;
        $stmt->bindParam(':password', $password);
        $stmt->execute();
        echo $stmt->rowCount();
        /*$stmt->store_result();*/
        return $stmt->rowCount() > 0;
    }

    function loginUserAndGet($userID, $password)
    {
        $stmt = $this->conn()->prepare("SELECT * FROM phonecall WHERE userID = :userID AND password = :password");
        $stmt->bindParam(':userID', $userID);
        $stmt->bindParam(':password', $password);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
        } else
            $result = '';

        return $result;
    }

    //Get contacts
    function getContacts()
    {
        $stmt = $this->conn()->prepare("SELECT * FROM contacts");
        $stmt->execute();
        $result = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $result['contacts'][] = $row;
        }
        //print_r(json_encode($result));
        return json_encode($result);
    }

    //Get contacts Logs
    function getContactsLogs($mobile)
    {
        $stmt = $this->conn()->prepare("SELECT * FROM phonelog WHERE mobile = :mobile");
        $stmt->bindParam(':mobile', $mobile);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } else
            $result = '';
        /*
          $result = array();
          while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $result['contactLogs'][] = $row;
        }
        //print_r(json_encode($result));
        return json_encode($result);
        return $result;*/
        return $result;
    }

    //Add history login
    function addHistoryLogin($userID)
    {
        $stmt = $this->conn()->prepare("SELECT * FROM usercontact WHERE userID = :userID LIMIT 1");
        $stmt->bindParam(':userID', $userID);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            $row = $stmt->fetch();
            //print_r($row);
            $stmt = $this->conn()->prepare("INSERT INTO historylogin( userID, phone, date, time) VALUES (:userID,:phone,:date,:time)");
            $phone = $row['phone'];
            $date = date("Y/m/d");
            $time = date("h:i:sa");
            $stmt->bindParam(':userID', $userID);
            $stmt->bindParam(':phone', $phone);
            $stmt->bindParam(':date', $date);
            $stmt->bindParam(':time', $time);
            $stmt->execute();
            /*//$this->updateUserTime($date, $time, $userID);
            $stmt = $this->conn()->prepare("UPDATE usercontact SET date= ?,time=? WHERE userID = ?");
            if ($stmt->execute(array($date, $time, $userID))) {
                //echo 'Data'.$stmt->rowCount() > 0;
            } else {
                // echo 'Failed Update';
            }*/
        }
    }

    //TODO:
    function updateUser($userID, $time, $balance)
    {
        //$stmt = $this->conn()->prepare("INSERT INTO historylogin( userID, phone, date, time) VALUES (:userID,:phone,:date,:time)");
        $stmt = $this->conn()->prepare("UPDATE phonecall SET time= ?,balance=? WHERE userID = ?");
        if ($stmt->execute(array($time, $balance, $userID))) {
            $result = $this->getUser($userID);
        } else {
            $result = '';
        }
        return $result;
    }

    //Get user
    function getUser($userID)
    {
        $stmt = $this->conn()->prepare("SELECT * FROM phonecall WHERE userID = :userID");
        $stmt->bindParam(':userID', $userID);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
        } else
            $result = '';
        return $result;
    }

    public function addPhoneLog($admno, $mobile, $date, $time, $action)
    {
        $stmt = $this->conn()->prepare("INSERT INTO phonelog( admno, mobile, date, time,action) VALUES (:admno,:mobile,:date,:time,:action)");
        $stmt->bindParam(':admno', $admno);
        $stmt->bindParam(':mobile', $mobile);
        $stmt->bindParam(':date', $date);
        $stmt->bindParam(':time', $time);
        $stmt->bindParam(':action', $action);
        if ($stmt->execute()) {
            return 0;
        } else {
            return 1;
        }
    }

}

//$stmt = $this->conn->prepare("INSERT INTO user( userID, password, admno, timeLimit) VALUES ('userID','password','admno','timeLimit')");