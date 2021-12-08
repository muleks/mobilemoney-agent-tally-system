<?php
if (isset($_POST['submit'])) {
	$cash = $_POST['float'];
	$airtel = $_POST['airtel'];
	$mtn = $_POST['mtn'];
	$day = $_POST['day'];
	$me = $cash + $airtel + $mtn;
	$conn = mysqli_connect("localhost","root","","muleks");
    $sss = "SELECT * FROM acount WHERE id=(SELECT max(id));";
    $chec = mysqli_query($conn,$sss);
    while ($row = mysqli_fetch_assoc($chec)) {
    	$now = $row['total'];
    
    $dec = $now - $me;    
        
    
	$sql = "SELECT * FROM acount WHERE day = '$day'";
	$check = mysqli_query($conn,$sql);
	if ($check ->num_rows == 0) {
		$conn = mysqli_connect("localhost","root","","muleks");
        
		$sqli = "INSERT INTO `acount`(`id`,`float`,`airtel`,`mtn`,`day`,`total`,`decrease`) VALUES(NULL,'$cash','$airtel','$mtn','$day','$me','$dec')";
		mysqli_query($conn,$sqli);
		header('location: today.php');

		 ?>
    <script type="text/javascript">
        window.alert("Record has been added..")
    </script>
<?php
	}
	else 
	header('location: today.php'); ?>
    <script type="text/javascript">
        window.alert("RECORD ALREADY EXISTS..")
    </script>
<?php
	}
}
  ?>