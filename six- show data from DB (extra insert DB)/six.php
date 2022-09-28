<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
  <?php
        if(isset($_POST['submit'])){
            $fname=$_POST['fname'];
            $lname=$_POST['lname'];
            $faname=$_POST['faname'];
            $moname=$_POST['moname'];
            $birthday=$_POST['birthday'];
            $email=$_POST['email'];
            $telphone=$_POST['telphone'];
            $gender=$_POST['gender'];
            $address=$_POST['address'];
            $nation=$_POST['nation'];
            $schoolname=$_POST['schoolname'];
            $class=$_POST['class'];
            $dept=$_POST['dept'];
            $roll=$_POST['roll'];
            $hobbies=$_POST['hobbies'];
            $servername="localhost";
            $username="root";
            $password="";
            $dbname="assesment";
            $conn=mysqli_connect($servername,$username,$password,$dbname);
            if(!$conn){
                die("Connection failed: " . mysqli_connect_error());
            }
            $sql="INSERT INTO student_profile()
            values('$fname','$lname','$faname','$moname','$birthday','$email','$telphone','$gender','$address','$nation','$schoolname','$class','$dept','$roll','$hobbies')";
            if(mysqli_query($conn,$sql)){
                echo "inserted successfully";
            }else{
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            mysqli_close($conn);
        }
    ?>




      <h1><u>Student's Profile</u></h1>
    <form  method="post" action="">
      <label for="fname">First name:</label><br />
      <input type="text" id="fname" name="fname" placeholder="First name" required/><br />
      <label for="lname">Last name:</label><br />
      <input type="text" id="lname" name="lname" required placeholder="Last name" /><br />

      <label for="faname">Father's name:</label><br />
      <input type="text" id="faname" name="faname" placeholder="Father's's name"required /><br />

      <label for="moname">Mother's name:</label><br />
      <input type="text" id="moname" name="moname" placeholder="Mother's name"required /><br />

      <label for="birthday">Birthday:</label><br />
      <input type="date" id="birthday" name="birthday" required/><br />
      <label for="email">Enter your Email:</label><br />
      <input type="email" id="email" name="email" pattern=".+@gmail.com" size="30" required placeholder="Enter Your valid Email"required /><br />
      <label for="mnumber">Mobile Number:</label><br />
      <input type="tel" name="telphone" pattern="[0-9]{11}" title="Ten digits code" required /><br />
      <label for="genderer">Gender:</label><br />
      <input type="radio" name="gender" value="male"required /> Male<br />
      <input type="radio" name="gender" value="female"required /> Female<br />
      <label for="address">Address:</label><br />
      <textarea id="address" name="address" rows="4" cols="30"required> </textarea><br />
      <label for="nation">Nationality:</label><br />
      <input type="text" id="nation" name="nation" required/><br />

      <label for="schoolname">School/College/University Name:</label><br />
      <input type="text" id="schoolname" name="schoolname" required/><br />
      <label for="year">Class/Year:</label><br />
      <input type="text" id="class" name="class"required /><br />
      <label for="dept">Department:</label><br />
      <input type="text" id="dept" name="dept" required/><br />

      <label for="roll">Roll:</label><br />
      <input type="tel" name="roll" pattern="[0-9]{8}" title="Six digits code" required /><br />
      <label for="hobbies">Hobbies:</label>

      <select name="hobbies" id="hobbies"required>
        <option value="Gardening">Gardening</option>
        <option value="Drawing">Drawing</option>
        <option value="Dancing">Dancing</option>
        <option value="Singing">Singing</option>
        <option value="Reading">Reading</option>
        <option value="Others">Others</option>
      </select><br><br>
      <input type="submit" name="submit" value="submit">
    </form><br>
    <strong><a href="php.php">Click Here To View Student Profile</a></strong>
  </body>
</html>