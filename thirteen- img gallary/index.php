<h1 style=" color:blue">Image Gallary</h1>
<?php
include_once("database.php");
$sql1="select* from image";
$res1=mysqli_query($con,$sql1);
if(mysqli_num_rows($res1)){
	while($row=mysqli_fetch_assoc($res1))
	{
		extract($row);
		?>
		<div style="float:left; padding:1%">
		<img src="<?php echo $imageDir; ?>" width="200px" height="200px">
		<h5 align="center"><?php echo $imageTitle; ?></h5>
		</div>
		<?php
	}
}
?>
<footer style="clear:left"><a href="form.php">Upload Image</a></footer>