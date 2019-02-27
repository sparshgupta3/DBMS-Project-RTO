 <?php

$conn = mysqli_connect("localhost","root","","rto");


if(isset($_POST['save']))
{

						$name=$_POST['Name'];
						$dob=$_POST['DOB'];
						$address=$_POST['Address'];
						$pincode=$_POST['Pincode'];
						$email=$_POST['Email'];	
						$mob=$_POST['Mob'];
						
						$sql="INSERT INTO person (Name,DOB,Address,Pincode,Email,Mobile) VALUES ('$name','$dob','$address','$pincode','$email','$mob')";

						mysqli_query($conn,$sql);
						/*$maxid = "SELECT MAX(ID) FROM person";
						$max=mysqli_query($conn,$maxid);
						$sqll="INSERT INTO person_mob VALUES ('$max','$mob')";
						mysqli_query($conn,$sqll);*/
						

}

?>
<html>
<head>
	<title>
		Add Person : Form
	</title>
</head>
<body vlink="Blue">
	<center>
		<br></br>
		<h1>Registration Form</h1>
		<br><br>
		<form action="" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>Information</legend>
<table align="center" bgcolor=" #daffb3" border="1" cellpadding="8" cellspacing="5">
		<tr>
				<td>Name</td>
				<td>:</td>
				<td><input type="text" name="Name"  /></td>
		</tr>
		<tr>
				<td>DOB</td>
				<td>:</td>
				<td><input type="date" name="DOB"  /></td>
		</tr>
		<tr>
				<td>Address</td>
				<td>:</td>
				<td><input type="text" name="Address"  /></td>
		</tr>
		<tr>
				<td>Pincode</td>
				<td>:</td>
				<td><input type="number" name="Pincode"  /></td>
		</tr>
		<tr>
				<td>Email</td>
				<td>:</td>
				<td><input type="text" name="Email"  /></td>
		</tr>
		<tr>
				<td>Mobile</td>
				<td>:</td>
				<td><input type="number" name="Mob"  /></td>
		</tr>
		
		</table>
		<br>
		<table cellpadding="8" cellspacing="5">
		<tr>
		<td colspan="3" align="center"><input type="submit" value = "Submit" name="save" /></td>
		<td colspan="3" align="center"></td>
		<td colspan="3" align="center"></td>
		<td colspan="3" align="center"><a href="Home.php" ><img src="back.png" width="30" height="30"></a></td>
		</tr>
</table>
</fieldset>
</form>
	</center>

</body>
</html>
