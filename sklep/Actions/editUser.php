<?php
    if (isset($_POST['login']) && isset($_POST['password']) && isset($_POST['name']) && isset($_POST['lname']) && isset($_POST['age'])){
        require_once '../Utils/Db.php';
        $db = new DB();
        $db->editUser($_POST['login'], $_POST['password'], $_POST['name'], $_POST['lname'], $_POST['age'], $_POST['admin'], $_GET['id']);
        header("Location: ../Pages/adminPage.php");
    }
    else {
        header("Location: ../Pages/editPage.php");
    }
?>