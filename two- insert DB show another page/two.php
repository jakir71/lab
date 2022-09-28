<!DOCTYPE html> 
<html lang="en"> <head>     
    <title>product insert</title> 
    </head> 
    <body>     
        <?php     
        if(isset($_POST['submit'])) { 
		$Pname=$_POST['Pname'];
		$pbrand=$_POST['pbrand'];
		$pcode=$_POST['pcode'];
		$pquantity=$_POST['pquantity'];
		$pweight=$_POST['pweight'];
		$Price=$_POST['Price'];
            $servername = "localhost";         
            $username = "root";         
            $password = "";         
            $database = "assesment";  
            $conn =mysqli_connect($servername, $username, $password, $database); 

            if (!$conn) {         
                die("Connection failed: " . mysqli_connect_error());         
            }

            $sql = "INSERT INTO product_details (Pname,pbrand,pcode,pquantity,pweight,Price) 
            VALUES ('$Pname','$pbrand','$pcode','$pquantity','$pweight','$Price')";
 
        if (mysqli_query($conn,$sql)) {             
            echo "New product inserted successfully";         
        } else {             
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);         
        } 
 
        mysqli_close($conn);     
    } 
 
    ?>     
    <h1>Enter your product information here</h1>     
    <form action="" method="post">         
        <label>Product name:</label>
        <input type="text" name="Pname" required><br> <br>
        <label>Product Brand:</label>
        <input type="text" name="pbrand" required><br> <br>
        <label>Product code:</label>
        <input type="text" name="pcode" required><br> <br> 
        <label>Product Quantity:</label>
        <input type="text" name="pquantity" required><br> <br>
        <label>Product weight:</label>
        <input type="text" name="pweight" required><br> <br>       
        <label>Product Price:</label>
        <input type="text" name="Price" required><br> <br>     
        <input name="submit" type="submit" value="submit"> <br>    
    </form>     
    <br>
    <a href="php.php">View product list</a>
</body> 
</html> 