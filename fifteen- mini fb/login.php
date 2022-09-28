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
                $sql = "SELECT * FROM users where username='$user'";
                $result = mysqli_query($conn,$sql);
                if (mysqli_num_rows($result) > 0) {
                    $row =mysqli_fetch_assoc($result);
                    if ($row['password'] == $pass) {
                        $_SESSION['username'] = $user;
                        header("Location:dashboard.php");
                    } else {
                        echo '<h1 style="color:red;">Incorrect password</h1>';
                    }
                } else {
                    echo '<h1 style="color:red;">Incorrect username</h1>';
                }
            } else {
                echo '<h4 style="color:red;">All fields required!</h4>';
            }
        }
        ?>
        <h1>Login</h1>
        <form action="" method="post">
           Username: <input type="text" name="username" id="" placeholder="Username"><br>
           Password: <input type="password" name="password" placeholder="Password" id=""><br>
           <input name="submit" type="submit" value="Login">
        </form>
        <h5 style="color:red">Not Registered Yet? <a href="register.php"><button>Register here</button></a></h5>
    </div>
</body>

</html>