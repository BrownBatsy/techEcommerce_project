<?php
$sql = "select * from laptops";
$result = mysqli_query($conn, $sql);
$lp = mysqli_fetch_all($result, MYSQLI_ASSOC);
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
    <nav>
        <div class="logo">
            <img src="./Shop%20Logo.F.png" alt="logo">
        </div>
        <div class="items">
            <a href="index.php">Home</a>
            <a target="_blank" href="https://matias.ma/nsfw/" id="showProducts">Products</a>
            <input type="text" id="searchInput" placeholder="Search products...">
        </div>
    </nav>
    <?php
        require_once("head.php")
        $sql = "select * from laptpos";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) != 0);
        while ($row = mysql_fetch_array($result)) {
    ?>
    <section id="productList">
        <div class="product" data-name="RAM">
            <img src="macy.jpg" alt="Cooler Image">
            <h2> <?php echo $row[0] ?> </h2>
            <p>Description of RAM. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p>Price: $99.99</p>
            <button onclick="viewProduct('Laptop', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="CPU">
            <h2>Laptop2</h2>
            <p>Description of CPU. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Laptop2', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>Laptop3</h2>
            <p>Description of Cooler. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Laptop3', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>Laptop4</h2>
            <p>Description of Casing. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Laptop4', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>Laptop5</h2>
            <p>Description of GPU. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Laptop5', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>Laptop6</h2>
            <p>Description of Thermal Paste. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Laptop6', '$99.99')">View Details</button>
        </div>

        <!-- Add more product elements as needed -->

    </section>

    <section id="productDetails" style="display: none;">
        <h2 id="productName"></h2>
        <p id="productDescription"></p>
        <p id="productPrice"></p>
        <button onclick="goBack()">Go Back</button>
    </section>

    <section id="productDetails" style="display: none;">
        <h2 id="productName"></h2>
        <p id="productDescription"></p>
        <p id="productPrice"></p>
        <table>
            <tr>
                <th>
                    Brand
                </th>
                <th>
                    Model
                </th>
                <th>
                    Chip
                </th>
                <th>
                    Memory
                </th>
                <th>
                    GPU_Clock
                </th>
                <th>
                    Memory_Clock
                </th>
            </tr>
            <?php foreach($gpus as $items): ?>
                <div class="container d-flex justify-content-center card my-3 w-75">
                    <div class="card-body text-center">
                            <tr>
                                <td>
                                    <?php
                                    echo $items['Brand'] . " ";
                                    ?>
                                </td>
                                <td>
                                    <?php
                                    echo $items['Model'] . " ";
                                    ?>
                                </td>
                                <td>
                                    <?php
                                    echo $items['Chip'] . " ";
                                    ?>
                                </td>
                                <td>
                                    <?php
                                    echo $items['Memory'] . " ";
                                    ?>
                                </td>
                                <td>
                                    <?php
                                    echo $items['GPU_Clock'] . " ";
                                    ?>
                                </td>
                                <td>
                                    <?php
                                    echo $items['Memory_Clock'] . " ";
                                    ?>
                                </td>
                            </tr>
                    </div>
                </div>
            <?php endforeach; ?>
        </table>
        <button onclick="goBack()">Go Back</button>
    </section>

    <footer>
        <p>&copy; 2023 Tech Shop. All rights reserved.</p>
    </footer>

<!--Adding Javascript-->
<script src="main.js"></script>
</body>
</html>
