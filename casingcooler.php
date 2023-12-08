<?php
    include ("heda.php");
    $sql = "select * from casingcoolers";
    $result = mysqli_query($conn, $sql);
    $casingcoolers = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Tech Shop</title>
</head>
<body>
    <section id="productDetails">
        <h2 id="productName"></h2>
        <p id="productDescription"></p>
        <p id="productPrice"></p>
        <div class="Container border mb-3">
            <table class="table">
            <?php foreach ($casingcoolers as $items): ?>
                    <tr>
                    <td><?php
                            echo  "<h6>".$items['Model'] ."</h6>". "Price: ". "<b>". $items['Price'] . "</b> BDT ";
                            ?></td>
                    <td>
                        <form method="POST" action="cart.php">
                            <input type="hidden" name="model" value="<?=$items['Model']?>">
                            <input type="hidden" name="price" value="<?=$items['Price']?>">
                            <input type="submit" class="btn btn-primary"value="ADD TO CART"></input>
                        </form>
                        <!-- <Button class="btn btn-primary" onclick="testFun($items)"value="ADD TO CART"></Button> -->
                    </td>
                </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </section>

    <footer>
        <p>&copy; 2023 Tech Shop. All rights reserved.</p>
    </footer>

<!--Adding Javascript-->
<!-- <script src="main.js"></script> -->
</body>
</html>
