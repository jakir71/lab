<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	
	<script>
	function valid()
	{
	if(document.forms['l']['fname'].value==""){
	alert("nam de");
	return false;
	}
	}
	</script>
	</head>
<body>
        <form name="l" action="four.php" method="post" onsubmit="return valid()">
    <table border="2" style="color:blue  align="center">

            <caption><h1>Personal Profile</h1></caption>
            <tr>
                <td><label for="fname">First Name</label></td>
                <td><input type="text" name="fname"></td>
            </tr>
            <tr>
                <td><label for="lname">Last Name</label></td>
                <td><input type="text" name="lname"></td>
            </tr>
            <tr>
                <td><label for="fatherName">Father's Name</label></td>
                <td><input type="text" name="fatherName"></td>
            </tr>
            <tr>
                <td><label for="motherName">Mother's Name</label></td>
                <td><input type="text" name="motherName"></td>
            </tr>
            <tr>
                <td>
                    <label for="member">Family Member's</label>
                </td>
                <td>
                    <input type="number" name="member">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="sibling">Number of Sibling's</label>
                </td>
                <td>
                    <input type="number" name="sibling">
                </td>
            </tr>
			 <tr>
                <td>
                    <label for="gender">Gender</label>
                </td>
                <td>
                    <input type="radio" name="gender"  value="male">male
                    <input type="radio" name="gender"  value="female">female
        
                </td>
            </tr>
			<tr>
                <td><label for="date">Date of Birth</label></td>
                <td><input type="date" name="date"></td>
            </tr>
            <tr>
                <td><label for="address">Address</label></td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
            <td>
                <label for="nationality">Nationality</label>
            </td>
            <td>
                <input type="text" name="nationality">
            </td>
            </tr>
            <tr>
                <td>
                    <label for="religion" >Religious</label>
                </td>
                <td>
                    <input type="text" name="religion">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="blood">Blood Group</label>
                </td>
                <td>
                    <input type="text" name="blood">
                </td>
            </tr>
            <tr>
                <td><label for="hobby">Hobby</label>
                </td> 
                <td>
                    <input list="hobby" name="hobby">
                    <datalist id="hobby" >
                    <option value="Gardening" >
                    <option value="Drawing" >
                    <option value="Reading" >
                    <option value="Traveling" >
                    </datalist></td>
				</tr>
            <tr>
                <td>
                    <label for="occupation">Occupation</label>
                </td>
                <td>
                    <input type="radio" name="occupation" value="student">Student <br>
                    <input type="radio" name="occupation" value="teacher">Teacher <br>
                    <input type="radio" name="occupation"  value="farmer">Farmer <br>
                    <input type="radio" name="occupation" value="engineer">Engineer<br>
                    <input type="radio" name="occupation" value="doctor">Doctor<br>
                    <input type="radio" name="occupation" value="employee">Employee<br>

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