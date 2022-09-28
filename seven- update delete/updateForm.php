<?php

include("databaseConnect.php");	
$email = $_GET['email'];

$sql = "SELECT * FROM personalinfo WHERE email='$email'";
$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) > 0){	
	$row = mysqli_fetch_assoc($result);
		extract($row);	
?>

<h1 align="center">Update Info</h1>
<form action="updateDatabase.php?email=<?php echo $email; ?>" method="post">
  <table border="1" align="center">
	<tr>
		<td><label for="name">Name:</label></td>
		<td><input type="text" id="name" name="name" value="<?php echo $name;?>"></td>
	</tr>
	<tr>
		<td><label for="gender">Gender:</label></td>
		<td><input type="text" id="gender" name="gender" value="<?php echo $gender;?>"></td>
	</tr>
	<tr>
		<td><label for="country">Country:</label></td>
		<td><input type="text" id="country" name="country" value="<?php echo $country;?>"></td>
	</tr>
		
	<tr>
	<td></td>
		<td><input type="submit"  name="submit" value="Submit"></td>
	</tr>
	</table>
</form> 
<?php 
}
?>