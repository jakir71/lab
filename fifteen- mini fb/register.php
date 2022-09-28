<!DOCTYPE html>
<html lang="en">

<head>
    <title>Document</title>
<script>
function valid()
{
if(document.forms['my']['username'].value=="")
{
alert("Please enter username");
return false;

}
if(document.forms['my']['email'].value=="")
{
alert("Please enter email");
return false;

}
if(document.forms['my']['name'].value=="")
{
alert("Please enter name");
return false;

}
if(document.forms['my']['number'].value=="")
{
alert("Please enter Number");
return false;

}
if(document.forms['my']['password'].value=="")
{
alert("Please enter password");
return false;

}

}
</script>
</head>

<body>
    <div>
        <?php
        if (isset($_POST['submit'])) {
            session_start();
            $user = $_POST['username'];
			$email = $_POST['email'];
			$name = $_POST['name'];
			$num = $_POST['number'];
			$pass = $_POST['password'];
            if ($user != '' && $pass != '') {
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "product";
                // Create connection
                $conn = mysqli_connect(
                    $servername,
                    $username,
                    $password,
                    $dbname
                );
                // Check connection
                if (!$conn) {
                    die("Connection failed: " . mysqli_connect_error());
                }
                $sql = "INSERT INTO users (username,email,name,number, password)
                    VALUES ('$user','$email','$name','$num', '$pass')";
                if (mysqli_query($conn,$sql)) {
                    $_SESSION['username'] = $user;
                    header("Location:afterReg.php");
                } else {
                    echo "Error: " . $sql . "<br>" . mysqli_connect_error();
                }
            } else {
                echo '<h1 style="color:red;">All fields required!</h1>';
            }
        }

        ?>
        <h1>Admin Pannel</h1>
        <h2>Register</h2>
        <form name="my" action="" method="post" onsubmit="return valid()">
          Username:  <input type="text" name="username" id="" placeholder="Username"><br>
		  Email:  <input type="email" name="email" id="" placeholder="email"><br>
		  Name:  <input type="text" name="name" id="" placeholder="name"><br>
		  Number:  <input type="number" name="number" id="" placeholder="number"><br>
            Password:<input type="password" name="password" placeholder="Password" id=""><br>
            <input name="submit" type="submit" value="Register"><br>
        </form>
        <h5>Already Registered? <a href="login.php"><button>Login here</button></a></h5>
    </div>
</body>

</html>