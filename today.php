
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale1">

	
	<link rel="stylesheet" type="text/css" href="money.css">
</head>
<body>
	<h1 class="vill"><u>COMPILATION SYSTEM</u></h1>
<p id = "showdate"></p>
<div class="total">
<div class="view">
	<u><h1>THESE ARE THE STATISTICS.</h1></u>
	<table border="1">
		<tr>
			<th>DATE</th>
			<th>MONEY</th>
			<!-- <td>INCREMENT</td> -->
			<th>DECREASE</th>

		</tr>
		<?php
$conn = mysqli_connect("localhost","root","","muleks");
$sql = "SELECT * FROM acount;";
$data = mysqli_query($conn,$sql);
$check = mysqli_num_rows($data);
if ($check>0) {

while ($row = mysqli_fetch_assoc($data)) {
    echo "<tr>";
    echo "<td>".$row['day']."</td>";
    echo "<td>".$row['total']."</td>";
    // echo "<td>".$row['increase']."</td>";
    echo "<td>".$row['decrease']."</td>";
  }
  }  

?>
	</table>
</div>




<div class="emma">
	<form action="act.php" method="POST" id="form">
	<input type="int" name="float" placeholder="cash" required><br>
	<input type="int" name="airtel" placeholder="airtel" required><br>
	<input type="int" name="mtn" placeholder="mtn" required><br>
	<input type="DATE" name="day" placeholder="date" required><br>
	<input type="submit" name="submit" value=" Load ">
</form>

</div>
<div class="emma">
	<form action="act.php" method="POST" id="form">
	<input type="int" name="float" placeholder="cash" required><br>
	<input type="int" name="airtel" placeholder="airtel" required><br>
	<input type="int" name="mtn" placeholder="mtn" required><br>
	<input type="DATE" name="day" placeholder="date" required><br>
	<input type="submit" name="submit" value=" Load ">
</form>
</div>
<div class="">
	<?php
$conn = mysqli_connect("localhost","root","","muleks");
	$sss = "SELECT * FROM acount WHERE id=(SELECT max(id));";
    $chec = mysqli_query($conn,$sss);
    while ($row = mysqli_fetch_assoc($chec)) {
    echo $row['total'];
    $mu = "\nmuleks\n<br>";
    echo $mu;
}
echo $_session['me'];
?>
</div>
</body>

</html>