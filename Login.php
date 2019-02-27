<?php
$conn = mysqli_connect("localhost","root","","rto");

?>
<html>
<head>
	<title>
		Login
	</title>
</head>
<body bgcolor="#FCDDFC" vlink = "blue">
	<br>
	<br>
	<center>
		<img src="RTO.jpg" alt="RTO"><br>
		<font size="25">Regional Transport Office</font>
		<br><br>
		<form action="" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>Admin</legend>
<table align="center" bgcolor=" #daffb3" border="1" cellpadding="8" cellspacing="5">
		<tr>
				<td>Username</td>
				<td>:</td>
				<td><input type="text" name="username"  /></td>
		</tr>
		<tr>
				<td>Password</td>
				<td>:</td>
				<td><input type="Password" name="password"  /></td>
		</tr>
		
		</table>
		<br>
		<table cellpadding="8" cellspacing="5">
		<tr>
		<td colspan="3" align="center"><input type="submit" value = "Login" name="save" /></td>
		</tr>
</table>
</fieldset>
</form>

		<br><br>

	</center>
</body>
<?php

if(isset($_POST['save']))
{

						$bid=$_POST['username'];
						$sid=$_POST['password'];
						$e1="SELECT * FROM admin WHERE username='$bid' AND password='$sid'";
						$e1r=mysqli_query($conn,$e1);
						
						if(!$row = mysqli_fetch_array($e1r))
						{
						echo "<center>"."<h2>"."Error : "."</h2>"."Wrong Credentials!"."<br>"."Enter valid Credentials."."<br>"."</center>";
					}
						else
						{
							header('Location: Home.php');
							
						}

}

?>