<?php 
    $newUsername = $_POST['newUsername'];
    $newPassword = $_POST['newPassword'];
    
    include_once('./heda.php');
    $sql = "INSERT INTO users (username, password) VALUES ('$newUsername', '$newPassword')";
    $result = $conn->query($sql);

?>