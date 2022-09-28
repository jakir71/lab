<html>
	<head>
		<title>
			PHP Form Validation
		</title>
	</head>
	<body>
		
		<h2> PHP Form Validation</h2>
		<?php
			//$errname = $errmail = $errweb = $errgen=$erragree=$errph=$errcmnt= "";
			$name = $email = $gender = $comment = $website =$agree=$Ph=$sid=$deptname=$dob=$addr=$religion=$blood= "";
			if($_SERVER["REQUEST_METHOD"]=="POST"){
				if(empty($_POST["Name"])){
				$name=validate($_POST["Name"]);
					echo "Name is required"."<br>";
					}
					else{
						echo "Name is:".$_POST["Name"]."<br>";
					}
				
				if(empty($_POST["E-mail"])){
					echo "E-mail is required"."<br>";
				}
				else{
					$email=validate($_POST["E-mail"]);
					if(!filter_var($_POST["E-mail"], FILTER_VALIDATE_EMAIL)){
						echo "E-mail is invalid"."<br>";
					}
					else{
						echo "E-mail is:". $_POST["E-mail"]."<br>";
					}
				}
				if(empty($_POST["sid"])){
					echo "Student ID is required"."<br>";
					}else{
					$sid=validate($_POST["sid"]);
					if(!preg_match("/^[0-9]*$/",$Ph)){
						echo "Only numeric value is allowed."."<br>";
					}
					if(strlen($sid)!=6){
						echo"Student ID must contain 6 digits."."<br>";
					}
					else{
						echo "StudentID is:". $_POST["sid"]."<br>";
					}
				}
				
				if(empty($_POST["deptname"])){
					echo "Department Name is required"."<br>";
					}else{
					$deptname=validate($_POST["deptname"]);
					if(!preg_match("/^[a-zA-Z-'. ]*$/",$deptname)){
						echo "Only letters and white space allowed"."<br>";
						}else{
						echo "Dept. name is:".$_POST["deptname"]."<br>";
					}
				}
				
				if(empty($_POST["dat"])){
					echo "Date is required"."<br>";
					}else{
					$dob=validate($_POST["dat"]);
					echo "Date is:".$_POST["dat"]."<br>";
				}
				
				if(empty($_POST["phn"])){
					echo "Phone number is required"."<br>";
					}else{
					$Ph=validate($_POST["phn"]);
					if(!preg_match("/^[0-9]*$/",$Ph)){
						echo "Only numeric value is allowed."."<br>";
					}
					if(strlen($Ph)!=11){
						echo"Mobile no must contain 11 digits."."<br>";
						}else{
						echo "Phone number is:". $_POST["phn"]."<br>";
					}
				}
				if(empty($_POST["addr"])){
					echo "Address is required"."<br>";
					}else{
					$addr=validate($_POST["addr"]);
					if(!preg_match("/^[a-zA-Z0-9-'., ]*$/",$addr)){
						echo "Only letters and white space allowed"."<br>";
						}else{
						echo "Address is:".$_POST["addr"]."<br>";
					}
				}
				if(empty($_POST["religion"])){
					echo "Gender is required"."<br>";
					}else{
					$religion = validate($_POST["religion"]);
					echo "Religion is:".$_POST["religion"]."<br>";
				}
				if(empty($_POST["gender"])){
					echo "Gender is required"."<br>";
					}else{
					$gender = validate($_POST["gender"]);
					echo "Gender is:".$_POST["gender"]."<br>";
				}
				if(empty($_POST["blood"])){
					echo "Blood Group is required"."<br>";
					}else{
					$blood = validate($_POST["blood"]);
					echo "Blood Group is:". $_POST["blood"]."<br>";
				}
				if(empty($_POST["agree"])){
					echo "Accept terms of services before submit."."<br>"; 
					}else{
					$agree=validate($_POST["agree"]);
				}            
				echo '<a href="one.php">Submit Again</a>';             
			}
			function validate($data){
				$data=trim($data);
				$data=stripslashes($data);
				$data=htmlspecialchars($data);
				return $data;
			}
		?>
	</body>
</html>	