<?php
include_once("database.php");

if(isset($_POST["upload"]))
{
$imageName=$_FILES['image']['name'];
$imageTmp=$_FILES['image']['tmp_name'];

$imageDir="images/".$imageName;

move_uploaded_file($imageTmp,$imageDir);
extract($_POST);

$sql="insert into image(imageTitle,imageDir)
values('$imageTitle','$imageDir')";
		
if(mysqli_query($con,$sql))
{
	echo "Inserted";
	header("location:index.php");
}
else
{
	echo "Error";
}
}
?>