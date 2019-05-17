<!DOCTYPE html>
<?php
	include ('layout_manager.php');
	include ('content_function.php');
?>

<html>
	<head>
		<meta charset='utf-8'>
		<meta name='viewport' content='width=device-width, initial-scale=1'>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>
		<link rel='icon' href='images/favicon.png' type='image/png'>
		<link rel='stylesheet' href='css/style.css' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Exo+2:100,200,300,400|Libre+Baskerville|Montserrat:100,400|Raleway|Roboto|Titillium+Web' rel='stylesheet'>
		<title>Webit.com</title>
	</head>
	
	<body>
		<nav>
			<ul>
				<li class='logo'><a href="/Webit"><img src='images/logo.png' alt='Logotyp'></a></li>
				<?php
					session_start();
					if(!isset($_SESSION['username'])) {
						echo nl2br("<li class='float'><a class='login' href='#'>Login</a></li>");
					}
					if(isset($_SESSION['username'])) {
						logout();
					}
						
											
				?>
			</ul>
		</nav>
		<?php
			if(isset($_GET['status'])) {
				if($_GET['status'] == 'reg_success') {
					echo '<h1>Registered Successfully</h1>';
				} else if ($_GET['status'] == 'login_failed') {
					echo '<h1> now you did something wrong...</h1>';
				}
			}
		?>
		<div id='myModal' class='modal'>
			<span class='close'>&times;</span>
			<section>
				<div class='login-wrap'>
					<div class='login-html'>
						<input id='tab-1' type='radio' name='tab' class='sign-in' checked><label for='tab-1' class='tab'>Sign In</label>
						<input id='tab-2' type='radio' name='tab' class='sign-up'><label for='tab-2' class='tab'>Sign Up</label>
						<div class='login-form'>
							<?php
								loginform();
								regform();
							?>
					</div>
				</div>
			</section>
			
			</div>
			</div>
		</div>
	</div>
			
		
	<script src='js/script.js'></script>
		
		