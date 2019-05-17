<?php
	include ('dbconn.php');
	
	$newuser = $_POST['user'];
	$newpwd = $_POST['pass'];
	$newmail = $_POST['email'];
	
	$encrypt_password = md5($newpwd);
	
	$insert = mysqli_query($con, "INSERT INTO users (`username`, `password`, `email`) VALUES ('".$newuser."', '".$encrypt_password."', '".$newmail."');");
		
	if($insert) {
		header('Location: /Webit/?status=reg_success');
	}
	
?>