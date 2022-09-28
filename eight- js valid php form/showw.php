<html>
<body>
<form name="my" action="showw.php" method="post" ">
<h2 align="center"> 5th Semester courses </h2>
<table align="center">
<tr>
<td>Roll:</td>
<td><?php echo $_POST['roll'];?></td>

</tr>
<tr>
<td>Microprocessor:</td>
<td>
	<?php echo $_REQUEST['cse_301'];?></td>

</tr>
<tr>
<td>Operating System:</td>
<td><?php echo $_REQUEST['cse_303'];?></td>

</tr>
<tr>
<td>Theory of Computation:</td>
<td><?php echo $_REQUEST['cse_305'];?></td>

</tr>
<tr>
<td>Internet and Web programming:</td>
<td><?php echo $_REQUEST['cse_307'];?></td>

</tr>
<tr>
<td>Data Communication:</td>
<td><?php echo $_REQUEST['cse_309'];?></td>

</tr>
<tr>
<td><input type="reset" name="reset" ></td>
<td><input type="submit" name="submit" ></td>

</tr>
</table>
</form>

</body>
</html>