<!DOCTYPE html>
<head>
<title> GPA </title>
<script>
function valid()
{
if(document.forms['my']['roll'].value=="")
{
alert("Please enter roll");
return false;

}
if(document.forms['my']['cse_301'].value=="")
{
alert("Please enter Microprocessor Number");
return false;

}
if(document.forms['my']['cse_303'].value=="")
{
alert("Please enter OS Number");
return false;

}
if(document.forms['my']['cse_305'].value=="")
{
alert("Please enter ToC Number");
return false;

}
if(document.forms['my']['cse_307'].value=="")
{
alert("Please enter IWP Number");
return false;

}
if(document.forms['my']['cse_309'].value=="")
{
alert("Please enter Data Communication Number");
return false;

}


}
</script>
</head>

<body>
<form name="my" action="show.php" method="post" onsubmit="return valid()">
<h2 align="center"> 5th Semester courses </h2>
<table align="center">
<tr>
<td>Roll:</td>
<td><input type="text" name="roll" placeholder="Enter roll"></td>

</tr>
<tr>
<td>Microprocessor:</td>
<td><input type="text" name="cse_301" placeholder="Enter Number"></td>

</tr>
<tr>
<td>Operating System:</td>
<td><input type="text" name="cse_303" placeholder="Enter Number"></td>

</tr>
<tr>
<td>Theory of Computation:</td>
<td><input type="text" name="cse_305" placeholder="Enter Number"></td>

</tr>
<tr>
<td>Internet and Web programming:</td>
<td><input type="text" name="cse_307" placeholder="Enter Number"></td>

</tr>
<tr>
<td>Data Communication:</td>
<td><input type="text" name="cse_309" placeholder="Enter Number"></td>

</tr>
<tr>
<td><input type="reset" name="reset" ></td>
<td><input type="submit" name="submit" ></td>

</tr>
</table>
</form>

</body>
</html>
