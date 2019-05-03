<?php
	include ('dbconn.php');
	
	require 'header.php';
?>
	
	<?php
		if (isset($_SESSION['username'])) {
				echo "<div class='content'><p><a href='newtopic.php?cid=".$_GET['cid']."&scid=".$_GET['scid']."'>
				add new topic</a></p></div>";
		}
	?>

	<div class="content">
		<?php disptopics($_GET['cid'], $_GET['scid']); ?>
	</div>