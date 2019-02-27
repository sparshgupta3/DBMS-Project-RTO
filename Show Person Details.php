<?php
$con = mysqli_connect("localhost","root","","rto");
?>
<html>
<head>
	<title>
		Show Person Details
	</title>
</head>
<body vlink="Blue">
	<center>
		<br></br>
	<h1>Person Details</h1>
			<fieldset>
				<legend>Information</legend>
				<br>
				<div style="height:300px;width:900px;border:1px solid #ccc;font:16px/26px Georgia, Garamond, Serif;overflow:auto;">
<table align="center" bgcolor=" #daffb3" border="1" cellpadding="8" cellspacing="5">
		<?php
$out = "select id,name,dob,address,pincode,email,mobile from person";
$result = mysqli_query($con,$out);
						
							/*echo "<tr>"."<td>"."ID : " ."</td>"."<td>". $row["id"]."</td>"."</tr>"."<br>"."<tr>"."<td>"."Name : " ."</td>"."<td>". $row["name"]."</td>"."</tr>"."<br>"."<tr>"."<td>"."DOB : " ."</td>"."<td>". $row["dob"]."</td>"."</tr>"."<br>"."<tr>"."<td>"."Address : " ."</td>"."<td>". $row["address"]."</td>"."</tr>"."<br>"."<tr>"."<td>"."Pincode : " ."</td>"."<td>". $row["pincode"]."</td>"."</tr>"."<br>"."<tr>"."<td>"."Email : " ."</td>"."<td>". $row["email"]."</td>"."</tr>"."<br>"."<tr>"."<td>"."Mobile : " ."</td>"."<td>". $row["mobile"]."</td>"."</tr>"."<br>";*/
							/*echo "<tr>"."<td>"."ID : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["id"]."</td>";
						}	
						echo "</tr>"."<br>";echo "<tr>"."<td>"."Name : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["name"]."</td>";
						}	
						echo "</tr>"."<br>";echo "<tr>"."<td>"."DOB : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["dob"]."</td>";
						}	
						echo "</tr>"."<br>";echo "<tr>"."<td>"."Address : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["address"]."</td>";
						}	
						echo "</tr>"."<br>";echo "<tr>"."<td>"."Pincode : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["pincode"]."</td>";
						}	
						echo "</tr>"."<br>";echo "<tr>"."<td>"."Email : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["email"]."</td>";
						}	
						echo "</tr>"."<br>";echo "<tr>"."<td>"."Mobile : " ."</td>";
							while($row = mysqli_fetch_assoc($result))
						{
							echo "<td>". $row["mobile"]."</td>";
						}	
						echo "</tr>"."<br>";*/
						echo "<tr>"."<td>"."ID" ."</td>"."<td>"."Name" ."</td>"."<td>"."DOB" ."</td>"."<td>"."Address" ."</td>"."<td>"."Pincode" ."</td>"."<td>"."Email" ."</td>"."<td>"."Mobile" ."</td>"."</tr>";

						while($row = mysqli_fetch_assoc($result))
						{
							echo "<tr>"."<td>". $row["id"]."</td>"."<td>". $row["name"]."</td>"."<td>". $row["dob"]."</td>"."<td>". $row["address"]."</td>"."<td>". $row["pincode"]."</td>"."<td>". $row["email"]."</td>"."<td>". $row["mobile"]."</td>"."</tr>";
						}	
						


?>

		</table>
	</div>
		<br>
		<table cellpadding="8" cellspacing="5">
		<tr>
		<td colspan="3" align="center"><a href="Home.php" ><img src="back.png" width="30" height="30"></a></td>
		</tr>
</table>
</fieldset>

	</center>

</body>
</html>
