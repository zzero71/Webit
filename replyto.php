<?php
	require 'header.php';
	addview($_GET['cid'], $_GET['scid'], $_GET['tid']);
?>
	<div>
		<?php
			if(!isset($_SESSION['username'])) {
				echo "<p class='content'>please do login or these kinds of features isnt possible for you</p>";
			}
		?>
		<div>
			<?php
				disptopic($_GET['cid'], $_GET['scid'], $_GET['tid']);
			?>
		</div>
		<?php
			if(isset($_SESSION['username'])) {
				replytopost($_GET['cid'], $_GET['scid'], $_GET['tid']);
			}
		?>
	</div>
	