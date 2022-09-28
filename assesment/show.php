<?php
$server="localhost";
$user="root";
$password="";
$mydb="test1";

$cse_301=$_POST['cse_301'];
$cse_303=$_POST['cse_303'];
$cse_305=$_POST['cse_305'];
$cse_307=$_POST['cse_307'];
$cse_309=$_POST['cse_309'];
$roll=$_POST['roll'];

$conn=mysqli_connect($server,$user,$password,$mydb);
$sql="insert into gpa values('$roll','$cse_301','$cse_303','$cse_305','$cse_307','$cse_309')";

$result=mysqli_query($conn,$sql);
if($result)
echo"connection succuessful";
else
echo"Error";
?>
<?php 
function grade($p)
{
if($p>=80)
return $p=4.00;

else if($p>=75 && $p<=79)
return $p=3.75;

else if($p>=70 && $p<=74)
return $p=3.50;

else if($p>=65 && $p<=69)
return $p=3.25;

else if($p>=60 && $p<=64)
return $p=3.00;

else if($p>=55 && $p<=59)
return $p=2.75;

else if($p>=50 && $p<=54)
return $p=2.50;

else if($p>=45 && $p<=49)
return $p=2.25;

else if($p>=40 && $p<=40)
return $p=2.00;
else 
return $p=0.00;
}



$cse_301=grade($cse_301);
$cse_303=grade($cse_303);
$cse_305=grade($cse_305);
$cse_307=grade($cse_307);
$cse_309=grade($cse_309);
$avg=($cse_301+$cse_303+$cse_305+$cse_307+$cse_309)/5;
?>
<h2 align="center"> GPA of each course</h2>
<table align="center" border="3">
<tr>
<th>Roll</th>
<th>Microproccesor</th>
<th>Operating System</th>
<th>Theory of Computation</th>
<th>Internet and Web Programming</th>
<th>Data Communication</th>
<th>GPA</th>
</tr>
<td><?php echo $roll ?> </td>
<td><?php echo $cse_301 ?> </td>
<td><?php echo $cse_303 ?></td>
<td><?php echo $cse_305 ?></td>
<td><?php echo $cse_307 ?></td>
<td><?php echo $cse_309 ?></td>
<td><?php echo $avg ?></td>
</tr>
</table>
