<?php
class Connect
{
    public function __construct()
    {
    }

    function connect()
    {
        $servername = "localhost";
        $username = "moomen";
        $password = "9124279";
        $dbname = "dett";
        /*$servername = "localhost";
        $username = "shiks9gc_api";
        $password = "Api@shikshasolutions";
        $dbname = "shiks9gc_api";*/
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    }
}

