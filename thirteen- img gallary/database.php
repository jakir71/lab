<?php
$sn="localhost";
$un="root";
$pass="";
$dn="try";
$con=mysqli_connect($sn,$un,$pass,$dn);
if(!$con)
	die("Connection Failed".mysqli_connect_error());
else
	echo "";
?>