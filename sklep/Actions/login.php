<?php
    session_start();
    require_once '../Utils/Db.php';

    if(isset($_POST['login']) && isset($_POST['password'])) {
        
        $login = $_POST['login'];
        $password = $_POST['password'];
        /*
        Db::sayHello();
        $dbObj = new Db();
        $dbObj->sayHello2();
        */

        //$user = Db::getUserByLogin($login);
        $db = new DB();
        $user = $db->getUserByLoginAndPassword($login, $password);
        if(isset($user['login']) /*&& $user['password']==$password*/) {
            $_SESSION['logged'] = true;
            $_SESSION['user_name'] = $user['name'];
            $_SESSION['user_lastname'] = $user['lname'];
            if($user['role']=="admin") {
                $_SESSION['is_admin'] = true;
                header('Location: ../Pages/adminPage.php');
            } else {
                $_SESSION['is_admin'] = false;
                header('Location: ../Pages/main.php');
            }
        } else {
            header("Location: ../index.php?login=$login&password=$password");
        }
    }
?>