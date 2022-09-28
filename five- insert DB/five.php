<!DOCTYPE html> 
<html lang="en"> 
    <head>     
        <title>Document</title>     
    </head> 
    <body>     
                  
            
            <?php             
                if(isset($_POST['submit'])){                 
                    $fname = $_POST['fname'];
                    $lname = $_POST['lname'];                 
                    $email = $_POST['email'];                 
                    $gender = $_POST['gender'];                 
                    $phone = $_POST['phone'];                 
                    $date = $_POST['date'];                 
                    $nationality = $_POST['nationality'];                 
                    $religion = $_POST['religion'];                 
                    $servername = "localhost";                 
                    $username = "root";                
                    $password = "";                 
                    $dbname = "assesment";              
                    $conn = mysqli_connect($servername, $username, $password, $dbname);                                 
                    if (!$conn) {                     
                        die("Connection failed: " . mysqli_connect_error());                 
                    } 
     
                    $sql = "INSERT INTO employee (first_name, last_name, email, gender, phone, date_of_birth,nationality,religion)                 
                    VALUES ('$fname', '$lname', '$email', '$gender', '$phone', '$date','$nationality','$religion')"; 
     
                    if (mysqli_query($conn,$sql)) {                     
                        echo "<h1>Data inserted successfully</h1>";                 
						} 
                    else {                     
                        echo "Error: " . $sql . "<br>" . mysqli_error($conn);                 
                    } 
     
                    mysqli_close($conn);              
                }             
                ?>             
                  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">           
                <h1><u>Employee profile</u></h1> 
                <label>First Name:</label><br>            
                <input type="text" name="fname" id="" placeholder="First Name" required><br>
                <label>Last Name:</label><br>            
                <input type="text" name="lname" placeholder="Last name" id="" required><br>
                <label>Email Address:</label><br>             
                <input type="email" name="email" id="" placeholder="Your email address" required><br>             
                <label for="">Gender:</label><br>             
                <input type="radio" name="gender" value="Male" id=""required>Male<br>             
                <input type="radio" name="gender" value="Female" id=""required>Female<br> 
                <label>Mobile Number:</label><br>            
                <input type="text" name="phone" id="" placeholder="Mobile number" required><br>             
                <label for="">Date of birth</label><br>             
                <input type="date" name="date" placeholder="Date of birth" id="" required><br>
                <label>Nationality</label><br>
                <input type="text" name="nationality" id="" placeholder="Nationality " required><br>
                <label>Religiion</label><br>
                <input type="text" name="religion" id="" placeholder="Enter Religion Name" required><br><br>             
                <input type="submit" value="Submit" name="submit">   
                
                
            </form>     
         
    </body> 
</html> 