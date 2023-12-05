<?php

//Making sure the server reloads the file each time the file is changed
$etag = md5_file("main.js");
header("ETag: $etag");
$etag = md5_file('style.css');
header("ETag: $etag");

//database connection establishment 
//databse name: tech // modify this part when needed 
$server="localhost";
$username="root";
$password="";
$database="tech";
$conn = mysqli_connect($server, $username, $password, $database);




//error handling 
if (!$conn){
    die("Error".mysqli_connect_error());
}
?>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


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


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>