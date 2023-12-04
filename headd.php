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

?/