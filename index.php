<?php
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
            <button onclick="viewProduct('Laptop', '$99.99')">View Details</button>
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
            <button onclick="viewProduct('Processor', '$99.99')">View Details</button>
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

    <section id="productDetails" style="display: none;>
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
<script type="text/javascript">
    document.getElementById('showProducts').addEventListener('click', function() {
        document.getElementById('productList').style.display = 'flex';
        document.getElementById('productDetails').style.display = 'none';
    });

    function viewProduct(productName, price) {
        document.getElementById('productList').style.display = 'none';
        document.getElementById('productDetails').style.display = 'block';
        document.getElementById('productDetails').style.height = 'fit-content';

        // Simulated product data (in a real-world scenario, this data would come from a server)
        const products = {
            'default': { name: `${productName}`, description: `Description of ${productName}. Lorem ipsum dolor sit amet, consectetur adipiscing elit.`, price: `${price}` },
            // Add more products as needed

        };
        productName = 'default';
        const product = products[productName];
        console.log(products[productName]);
        document.getElementById('productName').textContent = product.name;
        document.getElementById('productDescription').textContent = product.description;
        document.getElementById('productPrice').textContent = 'Price: ' + product.price;
    }

    function goBack() {
        document.getElementById('productList').style.display = 'flex';
        document.getElementById('productDetails').style.display = 'none';
    }
</script>
</body>
</html>
