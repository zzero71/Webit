<?php
	require 'header.php';
	addview($_GET['cid'], $_GET['scid'], $_GET['tid']);
?>
	<div>
		<div class="content">
			<?php
				
				replylink($_GET['cid'], $_GET['scid'], $_GET['tid']);
			?>
		</div>
		<?php
			disptopic($_GET['cid'], $_GET['scid'], $_GET['tid']);
			echo "<div class='content'><p>All Replies (".countReplies($_GET['cid'], $_GET['scid'], $_GET['tid']).")
				  </p></div>";
			dispreplies($_GET['cid'], $_GET['scid'], $_GET['tid']);
		?>
	</div>
	