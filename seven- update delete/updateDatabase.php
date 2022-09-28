<?php
include("databaseConnect.php");

if(isset($_POST["submit"])){
        $email = $_GET["email"];
    extract($_POST);

    $sql = "UPDATE personalinfo SET name='$name',gender='$gender', country='$country' WHERE email='$email'";
    $result = mysqli_query($conn, $sql);

    header("location:index.php?msg=Updated Successfully");
}

?>