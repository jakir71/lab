<!DOCTYPE html>
<html lang="en">

<head>
    <title>Document</title>
</head>

<body>
    <div>
        <?php
        if (isset($_POST['submit'])) {
            session_start();
            $user = $_POST['username'];
            $pass = $_POST['password'];
            if ($user != '' && $pass != '') {
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "products";
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
                $sql = "INSERT INTO users (username, password)
                    VALUES ('$user', '$pass')";
                if (mysqli_query($conn,$sql)) {
                    $_SESSION['username'] = $user;
                    header("Location:afterReg.php");
                } else {
                    echo "Error: " . $sql . "<br>" . mysqli_connect_error();
                }
            } 
			else {
                echo '<h1 style="color:red;">All fields required!</h1>';
            }
        }

        ?>
        <h1>Admin Pannel</h1>
        <h2>Register</h2>
        <form action="" method="post">
          Username:  <input type="text" name="username" id="" placeholder="Username"><br>
            Password:<input type="password" name="password" placeholder="Password" id=""><br>
            <input name="submit" type="submit" value="Register"><br>
        </form>
        <h5>Already Registered? <a href="login.php"><button>Login here</button></a></h5>
    </div>
</body>

</html>