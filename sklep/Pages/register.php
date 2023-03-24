<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="../Actions/register.php" method="POST">
        <label>Login</label><br>
        <input type="text" name="login" value="" required><br><br>
        <label>Haslo</label><br>
        <input type="text" name="password" value="" required><br><br>
        <label>Imie</label><br>
        <input type="text" name="name" value="" required><br><br>
        <label>Nazwisko</label><br>
        <input type="text" name="lname" value="" required><br><br>
        <label>Wiek</label><br>
        <input type="text" name="age" value="" required><br><br>
        <input type="submit" value="Zarejestruj sie">
    </form>
</body>
</html>