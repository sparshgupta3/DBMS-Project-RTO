 <?php

$conn = mysqli_connect("localhost","root","","rto");


?>

<html>
<head>
	<title>Transfer Of Ownership</title>
</head>
<body vlink="Blue">
	<center>
		<br></br>
		<h1>Transfer Form</h1>
		<br><br>
		<form action="" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>Information</legend>
<table align="center" bgcolor=" #daffb3" border="1" cellpadding="8" cellspacing="5">
		<tr>
				<td>Buyer ID</td>
				<td>:</td>
				<td><input type="number" name="BuyerID"  /></td>
		</tr>
		<tr>
				<td>Seller ID</td>
				<td>:</td>
				<td><input type="number" name="SellerID"  /></td>
		</tr>
		<tr>
				<td>Vehicle Number</td>
				<td>:</td>
				<td><input type="text" name="VehicleNumber"  /></td>
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
<?php

if(isset($_POST['save']))
{

						$bid=$_POST['BuyerID'];
						$e1="SELECT * FROM PERSON WHERE ID='$bid'";
						$e1r=mysqli_query($conn,$e1);
						$sid=$_POST['SellerID'];
						$e2="SELECT * FROM PERSON WHERE ID='$sid'";
						$e2r=mysqli_query($conn,$e2);
						$vno=$_POST['VehicleNumber'];
						$e3="SELECT * FROM PRV WHERE vehicle_No='$vno'";
						$e3r=mysqli_query($conn,$e3);
						 if(!$row = mysqli_fetch_array($e1r) && !$row = mysqli_fetch_array($e1r) && !$row = mysqli_fetch_array($e1r)){
						echo "<center>"."<h2>"."Error : "."</h2>"."Transfer Not Possible"."<br>"."Enter valid values."."</center>";
						}
						else
						{
							$sql="INSERT INTO Transfer_Of_Ownership (Vehicle_No,Buyer_ID,Seller_ID) VALUES ('$vno','$bid','$sid')";
							mysqli_query($conn,$sql);
							
						}

}

?>