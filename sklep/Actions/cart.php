<?php
    /*require_once '../Utils/CartUtils.php';

    print_r(CartUtils::$products);
    echo CartUtils::$productsCounter;
    
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        echo $id;
        CartUtils::$products[] = $id;
        header("Location: ../Pages/main.php?cartProductsCount=" . ++CartUtils::$productsCounter);
    }*/
    session_start();

    if(isset($_GET['id'])){
        if(isset($_SESSION['cartProductsCount'])) {
            $_SESSION['cartProductsCount']++;
        }
        else {
            $_SESSION['cartProductsCount'] = 1;
        }
        $cartProductsCount = $_SESSION['cartProductsCount'] ?? 0;
        echo json_encode([
            "answer" => "OK", 
            "cartProductsCount" => "$cartProductsCount"
        ]);
    }
    
?>