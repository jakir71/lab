<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1><u><center><strong>Student Profile</strong></center></u></h1>
    <?php
        
            $servername="localhost";
            $username="root";
            $password="";
            $dbname="assesment";
            $conn=mysqli_connect($servername,$username,$password,$dbname);
            if(!$conn){
                die("Connection failed: " . mysqli_connect_error());
            }
            
            $sql='SELECT * FROM student_profile';
            $result=mysqli_query($conn,$sql);
            if(mysqli_num_rows($result)>0){
                echo '<table border="1">
                <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Father Name</th>
                <th>Mother Name</th>
                <th>Birthday</th>
                <th>Email</th>
                <th>Telephone</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Nationality</th>
                <th>SChoolname</th>
                <th>Class</th>
                <th>Department</th>
                <th>Roll</th>
                <th>Hobbies</th>
                </tr>';
                while($row=mysqli_fetch_assoc($result)){
                    echo '
                    <tr>
                        <td>'.$row['fname'].'</td>
                        <td>'.$row['lname'].'</td>
                        <td>'.$row['faname'].'</td>
                        <td>'.$row['moname'].'</td>
                        <td>'.$row['birthday'].'</td>
                        <td>'.$row['email'].'</td>
                        <td>'.$row['telphone'].'</td>
                        <td>'.$row['gender'].'</td>
                        <td>'.$row['address'].'</td>
                        <td>'.$row['nation'].'</td>
                        <td>'.$row['schoolname'].'</td>
                        <td>'.$row['class'].'</td>
                        <td>'.$row['dept'].'</td>
                        <td>'.$row['roll'].'</td>
                        <td>'.$row['hobbies'].'</td>
                        
                    </tr>';

                }
                echo '</table>';    
            }
            
            else{
                echo "0 Results";
            }
            mysqli_close($conn);
        
    ?>
    
</body>
</html>