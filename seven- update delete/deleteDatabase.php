<?php
include("databaseConnect.php");

$email = $_GET['email'];

$delete = "DELETE FROM personalinfo WHERE email='$email'";

$result = mysqli_query($conn, $delete);

header("location:index.php?msg=Deleted Successfully");

?>