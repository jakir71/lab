<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <div>
        <?php
        session_start();
        if (isset($_SESSION['username'])) {
            echo 'Hi ' . $_SESSION['username'] . ', welcome to your page.<br>';
        ?>
            <a href="logout.php"><button style="color:coral">Logout</button></a>
        <?php
        } else {
            header("Location:login.php");
        }
        ?>
    </div>
</body>
</html>