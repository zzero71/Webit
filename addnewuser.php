<?php
	include ('dbconn.php');
	
	$newuser = $_POST['user'];
	$newpwd = $_POST['pass'];
	$newmail = $_POST['email'];
	
	$insert = mysqli_query($con, "INSERT INTO users (`username`, `password`, `email`) VALUES ('".$newuser."', '".$newpwd."', '".$newmail."');");
	
	if($insert) {
		header('Location: /Webit/?status=reg_success');
	}
?>