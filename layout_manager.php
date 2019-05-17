<?php
	function loginform() {
		echo "<form action='validatelogin.php' method='POST' class='sign-in-htm'>
				<div class='group'>
					<label for='user' class='label'>Username</label>
					<input id='user' name='user' type='text' class='input'>
				</div>
				<div class='group'>
					<label for='pass' class='label'>Password</label>
					<input id='pass' name='pass' type='password' class='input' data-type='password'>
				</div>
				<div class='group'>
					<input id='check' type='checkbox' class='check' checked>
					<label for='check'><span class='icon'></span> Keep me Signed in</label>
				</div>
				<div class='group'>
					<input type='submit' class='button' value='Sign In'>
				</div>
				<div class='hr'></div>
				<div class='foot-lnk'>
					<a href='#forgot'>Forgot Password?</a>
				</div>
				
			</form>";
			
	}
	
	function regform() {
		echo "<form action='addnewuser.php' method='POST' class='sign-up-htm' >
					<div class='group'>
						<label for='user' class='label'>Username</label>
						<input id='user' name='user' type='text' class='input' required>
					</div>
					<div class='group'>
						<label for='pass' class='label'>Password</label>
						<input id='pass' name='pass' type='password' class='input' data-type='password' required>
					</div>
					<div class='group'>
						<label for='email' class='label'>Email Address</label>
						<input id='email' name='email' type='email' class='input' required>
					</div>
					<div class='group'>
						<input type='submit' class='button' value='Sign Up'>
					</div>
					<div class='hr'></div>
						<div class='foot-lnk'>
							<label for='tab-1'>Already Member?</a>
					</div>
				</form>
			</div>";
	}
	
	function logout() {
		echo nl2br("<form action='logout.php' method='GET'>
				<input class='logout' type='submit' value='Logout'></form>");
	}
?>