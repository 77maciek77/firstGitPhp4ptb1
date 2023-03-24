<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glowna</title>
    <link rel='stylesheet' href='../Static/css/style.css'>
</head>
<body>
    
    <?php
        session_start();
        if (isset($_SESSION["logged"])) {
            header("Location: ./Pages/main.php");
            die;
        }

        $login = isset($_GET['login']) ? $_GET['login'] : "";
        $password = isset($_GET['password']) ? $_GET['password'] : "";
        $input_class = ($login || $password) ? "red_input" : "";
        
        //$language = isset($_POST['selectedLanguage']) ? $_POST['selectedLanguage'] : "en";
        if(isset($_POST['selectedLanguage'])) {
            $language = $_POST['selectedLanguage'];
            setcookie("language", $language, strtotime("+30 days"));
            $_COOKIE["language"] = $language;
        }
        $language = $_COOKIE["language"] ? $_COOKIE["language"] : "en";
    ?>

    <form method="post">
        <select name="selectedLanguage" onchange="this.form.submit()">
            <option value="en" <?= $language == "en" ? "selected" : "" ?>>EN</option>
            <option value="pl" <?= $language == "pl" ? "selected" : "" ?>>PL</option>
            <option value="de" <?= $language == "de" ? "selected" : "" ?>>DE</option>
        </select>
    </form>

    <form action="./Actions/login.php" method="POST">
        <label>
            <?php
                require_once "./Utils/CMS.php";
                echo CMS::getContent("user");
            ?>
        </label><br>
        <input class="<?=$input_class?>" type="text" name="login" value="<?=$login?>" required><br><br>
        <label><?= CMS::getContent("password") ?></label><br>
        <input class="<?=$input_class?>" type="password" name="password" value="<?=$password?>" required><br><br>
        <input type="submit" value="<?= CMS::getContent("login") ?>">
    </form>
    <button onclick="location.href='../Pages/register.php'"><?= CMS::getContent("register") ?></button> 
</body>
</html>
