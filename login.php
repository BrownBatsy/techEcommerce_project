<?php
session_start();
include "./heda.php";

if(isset($_POST['username']) && isset($_POST['password'])) {

    function validate($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $uName = validate($_POST['username']);
    $pass = validate($_POST['password']);


    $sql = "SELECT * FROM users WHERE username='$uName' AND password='$pass'";

    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);
        if($row['username'] === $uName && $row['password'] === $pass) {
            echo $row['id'];
            $_SESSION['username'] = $row['username'];
            $_SESSION['userId'] = $row['id'];

            $_SESSION['total'] = 0;
            $_SESSION["productNameArr"] = array();
            $_SESSION["productPriceArr"] = array();
            $_SESSION["productQuantityArr"] = array();

            header("Location: index.php");
            exit();
        } else {
            // header("Location: LoginSignUp.html");                
            echo "try again .. something is wrong";
            exit();
        }

    }

}