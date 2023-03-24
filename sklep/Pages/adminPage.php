<?php
    session_start();
    if(!isset($_SESSION['logged']) || !$_SESSION['is_admin']) {
        header("location: ../index.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dokument</title>
    <link rel='stylesheet' href='../Static/css/style.css'>
</head>
<body>

    <?php require_once "../Utils/CMS.php";?>
    <table>
        <tr>
            <th>id</th>
            <th>login</th>
            <th><?= CMS::getContent("password") ?></th>
            <th><?= CMS::getContent("name") ?></th>
            <th><?= CMS::getContent("lname") ?></th>
            <th><?= CMS::getContent("role") ?></th>
            <th><?= CMS::getContent("age") ?></th>
            <th><?= CMS::getContent("edit") ?></th>
            <th><?= CMS::getContent("delete") ?></th>
            <th>Is Admin</th>
        </tr>
        <?php
            require_once '../utils/Db.php';
            $db = new DB();
            $users = $db->getAllUsers();
            foreach($users as $user) {
                $id = $user['id'];
                $is_admin = ($user['role'] === "admin") ? "checked" : "";
                echo 
                "<tr>"
                    ."<td>{$user['id']}</td>"
                    ."<td>{$user['login']}</td>"
                    ."<td>{$user['password']}</td>"
                    ."<td>{$user['name']}</td>"
                    ."<td>{$user['lname']}</td>"
                    ."<td>{$user['role']}</td>"
                    ."<td>{$user['age']}</td>"
                    ."<td>"
                        ."<a href='../Pages/editPage.php?id=$id'>"
                        ."<button>Edytuj</button>"
                    ."</th>"
                    ."<td>"
                        ."<a href='../Actions/removeUser.php?id=$id'>"
                        ."<button>Usun</button."
                    ."<td>"
                    ."<td><input type='checkbox' $is_admin></td>"
                ."</tr>";
            }
        ?>
    </table>
    <button onclick="location.href='../Actions/logout.php'"><?= CMS::getContent("logout") ?></button> 
</body>
</html>