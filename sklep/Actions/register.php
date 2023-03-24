<?php
    if (isset($_POST['login']) && isset($_POST['password']) && isset($_POST['name']) && isset($_POST['lname']) && isset($_POST['age'])){
        require_once '../Utils/Db.php';
        $db = new DB();
        $db->addUser($_POST['login'], $_POST['password'], $_POST['name'], $_POST['lname'], $_POST['age']);
        header("Location: ../index.php");
    }
    else {
        header("Location: ../Pages/register.php");
    }
?>