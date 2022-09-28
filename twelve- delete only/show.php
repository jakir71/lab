<?php
	$sn="localhost";
	$un="root";
	$pass="";
	$db="test";
	$con=mysqli_connect($sn,$un,$pass,$db);
	if(!$con)
	die("Connection Failed".mysqli_connect_error());
	else
	echo "Connected"."<br>"."<br>";
	$id=$_GET['id'];
	$sql1="delete FROM students where id='$id'";
	if(mysqli_query($con,$sql1))
	{
		echo "Delete Successfully";
		header("location:index.php");
	}
	else{ 
	echo "Not Deleted";
	}
	?>
	


