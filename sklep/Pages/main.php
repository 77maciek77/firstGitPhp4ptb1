<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Shop</title>
	<link rel="stylesheet" href="../Static/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script defer src="../static/js/script.js"></script>
</head>
<body>
    <header>
		<h1>Product Shop Wisniowa</h1>
        <?php
            session_start();
            if(!isset($_SESSION['logged'])) {
                header("location: ../index.php");
            }
            $cartProductCount=0;
            if(isset($_SESSION['cartProductsCount'])) {
                $cartProductCount=$_SESSION['cartProductsCount'];
            }
            require_once "../Utils/CMS.php";
            
        ?>
    <?= CMS::getContent("pageForLoggedMsg") ?><br>
    <?= CMS::getContent("user") ?>: <?=$_SESSION['user_name']?> <?=$_SESSION['user_lastname']?>
    <button onclick="location.href='../Actions/logout.php'"><?= CMS::getContent("logout") ?></button>
	</header>
	<nav>
		<a href="#">Home</a>
		<a href="#">Products</a>
		<a href="#">About</a>
		<a href="#">Contact</a>
        <a href="#" id="productsCounterLabel">Cart (<?php echo "$cartProductCount"?>)</a>
        <br>
	</nav>
    <div class="container">
        <?php
            require_once '../Utils/Db.php';
            $products = Db::getALLProducts();
            foreach($products as $product) {
                echo "<div class=\"product\">
                    <img src=\"{$product['smallImage']}\" alt=\"Product {$product['id']}\">
                    <h2>{$product['name']}</h2>
                    <p>{$product['description']}</p>
                    <button class='addProduct' data-id='{$product['id']}'>Add to Cart</button>
                </div>";
            }
        ?>
    </div>
</body>
</html>