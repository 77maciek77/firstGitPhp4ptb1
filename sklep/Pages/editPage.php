<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php
        $id = $_GET["id"];
        require_once "../Utils/CMS.php";
    ?>

    <form action=<?= "../Actions/editUser.php?id=$id"?> method="POST">
        <label>Login</label><br>
        <input type="text" name="login" value="" required><br><br>
        <label><?= CMS::getContent("password") ?></label><br>
        <input type="text" name="password" value="" required><br><br>
        <label><?= CMS::getContent("name") ?></label><br>
        <input type="text" name="name" value="" required><br><br>
        <label><?= CMS::getContent("lname") ?></label><br>
        <input type="text" name="lname" value="" required><br><br>
        <label><?= CMS::getContent("age") ?></label><br>
        <input type="text" name="age" value="" required><br><br>
        <label>Admin</label><br>
        <input type="checkbox" name="admin"><br><br>
        <input type="submit" value="Edytuj uzytkownika">
    </form>
</body>
</html>