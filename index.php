<?php
include("heda.php");


//error handling 
if (!$conn){
    die("Error".mysqli_connect_error());
}

// $sql = "select * from gpus";
// $result = mysqli_query($conn, $sql);
// $gpus = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>
    <link rel="stylesheet" href="style.css">
    <title>Tech Shop</title>
</head>
<body>
    <section id="productList">
        <div class="product" data-name="RAM">
            <h2>RAM</h2>
            <p>Description of RAM. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p>Price: $99.99</p>
            <button onclick="viewProduct('RAM')">View Details</button>
        </div>

        <div class="product" data-name="CPU">
            <h2>Laptop</h2>
            <p>For your everyday everywhere usage</p>
            <p></p>
            <button onclick="viewProduct('Laptop')"><a href = "laptoplist.php">View Details</a></button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>COOLER</h2>
            <p></p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Cooler')"><a href = "casing cooler.php">View Details</a></button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>Processor</h2>
            <p></p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Processor')"><a href>View Details</a></button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>GPU</h2>
            <p>Description of GPU. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('GPU')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>HDD/SSD</h2>
            <p>Description of Thermal Paste. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('HDD/SSD')">View Details</button>
        </div>

        <!-- Add more product elements as needed -->

    </section>

    <footer>
        <p>&copy; 2023 Tech Shop. All rights reserved.</p>
    </footer>

<!--Adding Javascript-->
<script type="text/javascript" src="main.js"></script>
</body>
</html>
