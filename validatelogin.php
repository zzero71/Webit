<?php
	session_start();
	
	include ('dbconn.php');
	
	$username = $_POST['user'];
	$password = $_POST['pass'];
	
	$result = mysqli_query($con, "SELECT username, password FROM users WHERE username = '".$username."' AND password = '".$password."'");
	
	if (mysqli_num_rows($result) != 0) {
		$_SESSION['username'] = $username;
		
		header("Location: ".$_SERVER['HTTP_REFERER']);
	} else {
		if (substr($_SERVER['HTTP_REFERER'], -1) == '/') {
			header("Location: ".$_SERVER['HTTP_REFERER']."login_failed");
		} else {
			header("Location: ".$_SERVER['HTTP_REFERER']."/login_failed");
		}
	}
?>