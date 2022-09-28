<!DOCTYPE html>
<html>
<body>
<h1 style="text-align:center; color:blue;">Image Upload</h1>
<form action="upload.php" method="post" enctype="multipart/form-data">
<table align="center">
<tr>
<td>Image title:</td>
<td><input type="text" name="imageTitle" value=""></td>
</tr>
<tr>
<td>Select File:</td>
<td><input type="file" name="image"></td>
</tr>
<tr>
<td><input type="submit" name="upload" value="Upload"></td>
</tr>
</table>
</form>
<footer align="center"><a href="index.php">Image Gallary</a></footer>
</body>
</html>
