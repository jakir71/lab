<?php
	echo "<pre>";
	print_r($_REQUEST);
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
	</head>
	<body>
        <form action="four.php">
			<table border="2" style="color:blue  align="center">
				
				<caption><h1>Personal Profile</h1></caption>
				<tr>
					<td><label for="fname">First Name</label></td>
					<td><?php echo $_REQUEST['fname'];?></td>
				</tr>
				<tr>
					<td><label for="lname">Last Name</label></td>
					<td><?php echo $_REQUEST['lname'];?></td>
				</tr>
				<tr>
					<td><label for="fatherName">Father's Name</label></td>
					<td><?php echo $_REQUEST['fatherName'];?></td>
				</tr>
				<tr>
					<td><label for="motherName">Mother's Name</label></td>
					<td><?php echo $_REQUEST['motherName'];?></td>
				</tr>
				<tr>
					<td>
						<label for="member">Family Member's</label>
					</td>
					<td>
						<?php echo $_REQUEST['member'];?>
					</td>
				</tr>
				<tr>
					<td>
						<label for="sibling">Number of Sibling's</label>
					</td>
					<td>
						<?php echo $_REQUEST['sibling'];?>
					</td>
				</tr>
				<tr>
					<td>
						<label for="gender">Gender</label>
					</td>
					<td>
						<?php echo $_REQUEST['gender'];?>
					</td>
				</tr>
				<tr>
					<td><label for="date">Date of Birth</label></td>
					<td><?php echo $_REQUEST['date'];?></td>
				</tr>
				<tr>
					<td><label for="address">Address</label></td>
					<td><?php echo $_REQUEST['address'];?></td>
				</tr>
				<tr>
					<td>
						<label for="nationality">Nationality</label>
					</td>
					<td>
						<?php echo $_REQUEST['nationality'];?>
					</td>
				</tr>
				<tr>
					<td>
						<label for="religion" >Religious</label>
					</td>
					<td>
						<?php echo $_REQUEST['religion'];?>
					</td>
				</tr>
				<tr>
					<td>
						<label for="blood">Blood Group</label>
					</td>
					<td>
						<?php echo $_REQUEST['blood'];?>
					</td>
				</tr>
				<tr>
					<td><label for="hobby">Hobby</label>
					</td> 
					<td>
					<?php echo $_REQUEST['hobby'];?></td>
				</tr>
				<tr>
					<td>
						<label for="Occupation">Occupation</label>
					</td>
					<td>
						<?php echo $_REQUEST['occupation'];?>
					</td>
				</tr>
				<tr>
					<td>
						
					</td>
					<td><input type="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
	</body>
</html>