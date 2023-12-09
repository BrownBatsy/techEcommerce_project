<?php
include("heda.php");

if (isset($_POST["model"]) && $_POST["price"]) {
    $productName = ($_POST['model']);
    $productPrice = ($_POST['price']);
    // $productQuantity = array();

    if (in_array($productName, $_SESSION["productNameArr"])) {
        $existProduct = array_search($productName, $_SESSION["productNameArr"]);
        // echo $existProduct;
        $_SESSION["productQuantityArr"][$existProduct] += 1;
    } else {
        array_push($_SESSION["productNameArr"], $productName);
        array_push($_SESSION["productPriceArr"], $productPrice);
        array_push($_SESSION["productQuantityArr"], 1);
    }

    $_SESSION['total'] = array_sum($_SESSION['productPriceArr']);

    // print_r($_SESSION["productNameArr"]);
    // foreach ($_SESSION["productNameArr"] as $key => $product) {
    //     echo $key;
    // }
    // echo "<br>";
    // print_r ($_SESSION["productPriceArr"]);
    // echo "<br>";
    // print_r ($_SESSION["productQuantityArr"]);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Computer Components Store - Cart</title>
    <link rel="stylesheet" href="style.css">
    <!-- Add your own stylesheet or customize the styles inline -->
    <style>
        .cart-container {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
        }

        th,
        td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        .cart-btn {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            display: inline-block;
            border-radius: 5px;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <div class="cart-container m-5">
        <h2>Your Shopping Cart</h2>
        <table>
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <!-- Add rows for each item in the cart dynamically -->
                <?php foreach ($_SESSION['productNameArr'] as $key => $product): ?>

                    <tr>
                        <td>
                            <?= $product ?>
                        </td>
                        <td>
                            <?= $_SESSION['productPriceArr'][$key] ?>
                        </td>
                        <td>
                            <?= $_SESSION['productQuantityArr'][$key] ?>
                        </td>
                        <td>
                            <?= $_SESSION['productPriceArr'][$key] * $_SESSION['productQuantityArr'][$key] ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
                
                <?php
                session_start();

// Clear all cart-related session variables
                unset($_SESSION["productNameArr"]);
                unset($_SESSION["productPriceArr"]);
                unset($_SESSION["productQuantityArr"]);
                unset($_SESSION["total"]);

// Redirect back to the cart page
                header("Location: cart.php");
                exit();
                ?>


                <!-- Add more rows as needed -->
            </tbody>
        </table>

        <h3>Total:
            <?= $_SESSION['total'] ?> BDT
        </h3>

        <a href="clear.php" class="cart-btn">Proceed to Checkout</a>
        <a href="cart.php" class="cart-btn">Clear Cart</a>
    </div>
</body>

</html>