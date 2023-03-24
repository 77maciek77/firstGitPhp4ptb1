<?php
    
    class Db {
        public $host;
        public $db_user;
        public $db_password;
        public $db_name;
        
        function __construct() {
            require 'dbConfig.php';
            $this->host = $host;
            $this->db_user = $db_user;
            $this->db_password = $db_password;
            $this->db_name = $db_name;
        }

        public static function sayHello() {
            echo "Hello. I am db function.";
        }

        function sayHello2() {
            echo "Hello. I am db function.";
        }

        public function getUserByLogin($login) {
            require_once 'dbconfig.php';
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            if($conn->connect_errno==0) {
                $query = "SELECT * FROM users WHERE login = '$login'";
                $result = $conn->query($query);
                if($result->num_rows!=0) {
                    $user = mysqli_fetch_assoc($result);
                    return $user;
                }
            } else {
                echo "Nie udalo sie polaczyc z baza";
            }
            return [];
        }

        public function getUserByLoginAndPassword($login, $password) {
            require_once 'dbconfig.php';
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            
            $login = mysqli_real_escape_string($conn, $login);
            $password = mysqli_real_escape_string($conn, $password);
            
            if($conn->connect_errno==0) {
                $query = "SELECT * FROM users WHERE login = '$login' AND password= '$password'";
                $result = $conn->query($query);
                if($result->num_rows!=0) {
                    $user = mysqli_fetch_assoc($result);
                    return $user;
                }
            } else {
                echo "Nie udalo sie polaczyc z baza";
            }
            return [];
        }

        public function RegisterUser($login, $password, $name, $lname, $role, $age) {
            require_once 'dbconfig.php';
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            if($conn->connect_errno==0) {
                $query = "INSERT INTO `users`(`login`, `password`, `name`, `lname`, `role`, `age`) VALUES ('$login', '$password', '$name', '$lname', 'user', '$age')";
                if($conn->query($query)===TRUE) {
                    header("Location: ../index.php?login=$login&password=$password");
                }
                else{
                    header("Location: ../Pages/register.php");
                }
            } else {
                echo "Nie udalo sie polaczyc z baza";
            }
            return [];
        }

        function getAllUsers(){
            require_once 'dbConfig.php';
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            if($conn->connect_errno == 0 ){
                $query = "SELECT * FROM users";
                    $result = $conn->query($query);
                    if($result->num_rows > 0){
                        $users = [];
                        for($i = 0;$i<$result->num_rows;$i++){
                            $users[] = $result->fetch_assoc();
                        }
                        return $users;
                    }
                } 
            else{
                echo "Nie udalo sie ploaczyc z baza";
            }
            return [];
        }

        function removeUser($id){
            require_once 'dbConfig.php';
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            $query = "DELETE FROM users WHERE id = '$id'";
            $result = $conn->query($query);
        }

        function addUser($login, $password, $name, $lname, $age){
            require_once 'dbConfig.php';
            if(strlen($login)<=50 && strlen($password)<=20 && strlen($name)<=20 && strlen($lname)<=20) {
                $users = Db::getAllUsers();
                foreach($users as $user) {
                    $login_check = $user['login'];
                    if($login_check==$login){
                        header("Location: ../Pages/fail.php");
                    }
                }
                $conn = new mysqli(
                    $this->host,
                    $this->db_user,
                    $this->db_password,
                    $this->db_name);
                $query = "INSERT INTO `users`(`login`, `password`, `name`, `lname`, `role`, `age`) VALUES ('$login','$password','$name','$lname','user','$age')";
                $result = $conn->query($query);
            }
            else {
                header("Location: ../Pages/fail.php");
            }
        }

        function editUser($login, $password, $name, $lname, $age, $admin, $id){
            if($admin==true){$role="admin";}
            else {$role="user";}
            require_once 'dbconfig.php';
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            if($conn->connect_errno==0) {
                $query = "UPDATE `users` SET `login`='$login', `password`='$password', `name`='$name', `lname`='$lname', `role`='$role', `age`='$age' WHERE `id`='$id';";
                if($conn->query($query)===TRUE) {
                    header("Location: ../Pages/adminPage.php");
                }
                else{
                    header("Location: ../Pages/editPage.php");
                }
            } else {
                echo "Nie udalo sie polaczyc z baza";
            }
            return [];
        }

        function getContentById($id_key) {
            $language = isset($_COOKIE["language"]) ? $_COOKIE["language"] : "en";
            $conn = new mysqli(
                $this->host,
                $this->db_user,
                $this->db_password,
                $this->db_name);
            $query = "SELECT $language FROM languages WHERE key_id='$id_key'";
            $result = $conn->query($query);
            if($result->num_rows==1){
                return $result->fetch_assoc()[$language];
            }
            else {
                return Db::getContentById("notFoundMsg");
            }
        }

        static function getAllProducts(){
            require 'dbConfig.php';
            $conn = new mysqli(
                $host,
                $db_user,
                $db_password,
                $db_name);
            if($conn->connect_errno == 0 ){
                $query = "SELECT * FROM products";
                    $result = $conn->query($query);
                    if($result->num_rows > 0){
                        $users = [];
                        for($i = 0;$i<$result->num_rows;$i++){
                            $users[] = $result->fetch_assoc();
                        }
                        return $users;
                    }
                } 
            else{
                echo "Nie udalo sie ploaczyc z baza";
            }
            return [];
        }
    }
?>