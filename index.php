<?php
//Making sure the server reloads the file each time the file is changed
$etag = md5_file("main.js");
header("ETag: $etag");

//database connection establishment 
//databse name: techdata // modify this part when needed 
$server="localhost";
$username="root";
$password="";
$database="techdata";
$conn = mysqli_connect($server, $username, $password, $database);


//$conn=mysqli_connect($server, $student_id, $user_name, $email, $department, $admitted_semester, $password, $database);
//The mysqli_connect() function expects the parameters in the following order: host, username, password, database

//error handling 
if (!$conn){
    die("Error".mysqli_connect_error());
}

$sql = "select * from gpus";
$result = mysqli_query($conn, $sql);
$gpus = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Tech Shop</title>
</head>
<body>
    <nav>
        <div class="logo">
            <img src="./Shop%20Logo.F.png" alt="logo">
        </div>
        <div class="items">
            <a href="index.html">Home</a>
            <a target="_blank" href="https://matias.ma/nsfw/" id="showProducts">Products</a>
            <input type="text" id="searchInput" placeholder="Search products...">
        </div>
    </nav>

    <section id="productList">
        <div class="product" data-name="RAM">
            <h2>RAM</h2>
            <p>Description of RAM. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p>Price: $99.99</p>
            <button onclick="viewProduct('RAM', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="CPU">
            <h2>Laptop</h2>
            <p>Description of CPU. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Laptop', '$99.99')"><a href = "laptoplists.php">View Details</a></button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>COOLER</h2>
            <p>Description of Cooler. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Cooler', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>Processor</h2>
            <p>Description of Casing. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('Processor', '$99.99')"><a href>View Details</a></button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>GPU</h2>
            <p>Description of GPU. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('GPU', '$99.99')">View Details</button>
        </div>

        <div class="product" data-name="Cooler">
            <h2>HDD/SSD</h2>
            <p>Description of Thermal Paste. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <p>Price: $199.99</p>
            <button onclick="viewProduct('HDD/SSD', '$99.99')">View Details</button>
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
