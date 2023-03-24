<?php
    session_start();
    if(!isset($_SESSION['role']) || $_SESSION['role']!="admin") {
        header("Location: ../index.php");
    }
    if (isset($_GET['id'])){
        require_once '../Utils/Db.php';
        $db = new DB();
        $db->removeUser($_GET['id']);
        header("Location: ../Pages/adminPage.php");
    }
?>