<html>
	<head>
		<title>
			PHP Form Validation
		</title>
	</head>
	<body>
		<h2> PHP Form Validation</h2>
		<form method="post" action="php.php" onsubmit="return validateform()">
			<table border="2" style="color:blue  align="center">
				<p style="color: red"> *required field</p>
				<tr>
					<td>
						<label for="name">Name:</label>
					</td>
					<td>
						<input type="text" id="name" name="Name"><span style="color:red">*</span>
						
					</td>
				</tr>
				<tr>
					<td>
						<label for="email">E-mail:</label>			
					</td>
					<td>
						<input type="text" id="email" name="E-mail"><span style="color:red">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<label for="sid">Student ID:</label>			
					</td>
					<td>
						<input type="number" id="sid" name="sid"><span style="color:red">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<label for="deptname">Department Name:</label>			
					</td>
					<td>
						<input type="text" id="deptname" name="deptname"><span style="color:red">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<label for="dat">Date Of Birth:</label>			
					</td>
					<td>
						<input type="date" id="dat" name="dat"><span style="color:red">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<label for="ph">Phone Number:</label>
					</td>
					<td>
						<input type="number" id="ph" name="phn"><span style="color:red">*</span>
					</td>
				</tr>
				<tr>
					<td>
						<label for="addr">Address:</label>			
					</td>
					<td>
						<input type="text" id="addr" name="addr"><span style="color:red">*</span>
					</td>
				</tr>
				<tr>
                <td>
					<label for="religion">Religion:</label>
					</td>
                <td>
                    <select name="religion" id="religion">
                        <option value="None">None</option>
                        <option value="Islam">Islam</option>
                        <option value="Hinduism">Hinduism</option>
                        <option value="Buddhism">Buddhism</option>
                        <option value="Christianity">Christianity</option>
                    </select><span style="color:red">*</span>
                </td>
            </tr>
				<tr>
					<td>
						<label for="gen">Gender:</label>
					</td>
					<td>
						<input type="radio" id="gen" name="gender" value="Female">Female
						<input type="radio" id="gen" name="gender" value="Male">Male
						<input type="radio" id="gen" name="gender" value="Other">Other <span style="color:red">*</span>
					</td>
				</tr>
				<tr>
                <td>
				<label for="blood">Blood Group:</label>
					</td>
                <td>
                    <input type="radio" name="blood" id="blood" value="A+">A+
                    <input type="radio" name="blood" id="blood" value="A-">A-
                    <input type="radio" name="blood" id="blood" value="B+">B+
                    <input type="radio" name="blood" id="blood" value="B-">B-
                    <input type="radio" name="blood" id="blood" value="AB+">AB+
                    <input type="radio" name="blood" id="blood" value="AB-">AB-
                    <input type="radio" name="blood" id="blood" value="O+">O+
                    <input type="radio" name="blood" id="blood" value="O-">O-
                    <span style="color:red">*</span>
                </td>
            </tr>
				<tr>
					<td><input type="checkbox" name="agree">
					</td>
					<td>
						<label for="agree">Agree to Terms of Service<span style="color:red">*</span>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<input type="submit" value="Submit">
						</td>
					</tr>
				</table>
			</form>
			
		</body>
	</html>	