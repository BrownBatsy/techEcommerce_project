<?php
    include ("heda.php");
    $sql = "select * from laptops";
    $result = mysqli_query($conn, $sql);
    $laptops = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css?v=1.0">
    <title>Tech Shop</title>
</head>
<body>
    <section id="productDetails">
        <h2 id="productName"></h2>
        <p id="productDescription"></p>
        <p id="productPrice"></p>
        <div class="laptops d-flex flex-row flex-wrap w-100">
            <?php foreach ($laptops as $items): ?>
                    <div class="items d-flex flex-column container card-body align-items-center card my-3 mr-3">
                        <div class="model">
                           <b>Model:</b> 
                            <?php
                            echo $items['Model'] . " ";
                            ?>
                        </div>
                        <div class="price">
                            <b>Price:</b> 
                            <?php
                            echo $items['Price'] . " ";
                            ?>
                        </div>
                    </div>
            <?php endforeach; ?>
        </div>
    </section>

    <footer>
        <p>&copy; 2023 Tech Shop. All rights reserved.</p>
    </footer>

<!--Adding Javascript-->
<!-- <script src="main.js"></script> -->
</body>
</html>
