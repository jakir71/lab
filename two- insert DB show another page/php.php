<!DOCTYPE html> 
<html lang="en"> 
<head>  
    <title>Product list</title>
</head> 
<body> 
    <?php 
    $servername = "localhost"; 
    $username = "root"; 
    $password = ""; 
    $database = "assesment"; 
    $conn =  mysqli_connect($servername, $username, $password, $database); 
 
if (!$conn) {     
    die("Connection failed: " . mysqli_connect_error()); 
} 
 
$sql = "SELECT Pname,pbrand,pcode,pquantity,pweight,Price FROM product_details"; 
$result = mysqli_query($conn,$sql); 
 
if (mysqli_num_rows($result) > 0) {     
    echo '<table border="1" >
    <tr>     
    <th>Pname</th>     
    <th>Product Brand</th>     
    <th>Product code</th>     
    <th>Product Quantity</th>     
    <th>Product weight</th>          
    <th>Price</th>     
    </tr>';   
    // output data of each row   
    while($row = mysqli_fetch_assoc($result)) {     
        echo '
        <tr>                
        <td>'.$row['Pname'].'</td>         
        <td>'.$row['pbrand'].'</td>         
        <td>'.$row['pcode'].'</td>         
        <td>'.$row['pquantity'].'</td>         
        <td>'.$row['pweight'].'</td>         
        <td>'.$row['Price'].'</td>         
        </tr>';   
    }   
    '</table>'; 
} else {   
    echo "0 results"; 
} 
 
    mysqli_close($conn); 
     
    
    ?> 
    </body> 
    </html>