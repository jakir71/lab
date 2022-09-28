<!DOCTYPE HTML>
<html>
<body>
<?php

include("databaseConnect.php");	
	
$sql = "SELECT * FROM personalinfo";
$result = mysqli_query($conn, $sql);

if(isset($_GET['msg']))
	echo $_GET['msg'];


?>

<h1 align="center">Information</h1>

		<table border="1" align="center">
	<tr>
		<th>Name</th>
		<th>Email</th>
	     <th>Gender</th>
		 <th>Country</th>
		<th colspan="2">Apply</th>
		</tr>
<?php
if(mysqli_num_rows($result) > 0){	
	while($row = mysqli_fetch_assoc($result)){
		extract($row);
?>
		
	<tr>
		<td><?php echo $name; ?></td>
		<td><?php echo $email; ?></td>
		<td><?php echo $gender; ?></td>
		<td><?php echo $country; ?></td>
		<td>
			<button type="submit"><a href="updateForm.php?email=<?php echo $email;?>">Update</a></button>
		</td>
		<td>
			<button type="submit"><a href="deleteDatabase.php?email=<?php echo $email;?>">Delete</a></button>
		</td>
	</tr>
		</table>
<?php
	}
}
?>
	
</body>
	</html>