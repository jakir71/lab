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
	
	$sql="select* from students";
	$result=mysqli_query($con,$sql);
	if(mysqli_num_rows($result) > 0){
	?>
	<h1 align="center">Student Profile</h1>
	<table align="center" border="1px">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>session</th>
			<th>Roll</th>
			<th>Action</th>
		</tr>
		<?php
			while($row=mysqli_fetch_assoc($result)){
			?>
			<tr>
				<td> <?php echo $row['id']; ?></td>
				<td> <?php echo $row['name']; ?></td>	
				<td> <?php echo $row['email']; ?></td>	
				<td> <?php echo $row['session']; ?></td>	
				<td> <?php echo $row['roll']; ?></td>	
				<td> <a href="show.php?id=<?php echo $row['id']; ?>">Delete</a></td>	
			</tr>
			<?php
			}
		?>
	</table>
	<?php }
?>

