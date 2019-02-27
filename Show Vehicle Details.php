<?php
$con = mysqli_connect("localhost","root","","rto");
?>
<html>
<head>
	<title>
		Show Vehicle Details
	</title>
</head>
<body vlink="Blue">
	<center>
		<br></br>
	<h1>Vehicle Details</h1>
			<fieldset>
				<legend>Information</legend>
				<br>
				<div style="height:270px;width:980px;border:1px solid #ccc;font:16px/26px Georgia, Garamond, Serif;overflow:auto;">
<table align="center" bgcolor=" #daffb3" border="2" cellpadding="8" cellspacing="5">
		<?php
$out = "select prv.vehicle_no,person.id,person.name,prv.engine_no,prv.chassis_no,prv.vehicle_name,prv.vehicle_color from PRV,Own,Person where Person.ID = Own.ID AND PRV.vehicle_no = Own.Vehicle_no";
$result = mysqli_query($con,$out);
						
							
						echo "<tr>"."<td>"."Vehicle Number" ."</td>"."<td>"."Owner ID" ."</td>"."<td>"."Owner Name" ."</td>"."<td>"."Engine Number" ."</td>"."<td>"."Chassis Number" ."</td>"."<td>"."Vehicle Name" ."</td>"."<td>"."Vehicle Color" ."</td>"."</tr>";

						while($row = mysqli_fetch_assoc($result))
						{
							echo "<tr>"."<td>". $row["vehicle_no"]."</td>"."<td>". $row["id"]."</td>"."<td>". $row["name"]."</td>"."<td>". $row["engine_no"]."</td>"."<td>". $row["chassis_no"]."</td>"."<td>". $row["vehicle_name"]."</td>"."<td>". $row["vehicle_color"]."</td>"."</tr>";
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
