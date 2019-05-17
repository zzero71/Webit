<?php
	session_start();
	
	include ('dbconn.php');
	
	$username = $_POST['user'];
	$password = $_POST['pass'];
	
	$encrypt_password = md5($password);
	
	$result = mysqli_query($con, "SELECT username, password FROM users WHERE username = '".$username."' AND password = '".$encrypt_password."'");
	
	if (mysqli_num_rows($result) != 0) {
		$_SESSION['username'] = $username;
		
		header("Location: /Webit");
	} else {
		if (substr($_SERVER['HTTP_REFERER'], -1) == '/') {
			header("Location: /Webit/?status=login_failed");
		} else {
			header("Location: /Webit/?status=login_failed");
		}
	}
?>