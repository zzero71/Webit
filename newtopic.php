<?php
	include ('dbconn.php');
	
	require 'header.php';
?>

	<div class="content">
		<?php 
			if(isset($_SESSION['username'])) {
				echo "<form action='addnewtopic.php?cid=".$_GET['cid']."&scid=".$_GET['scid']."'
				method='POST'>
				<p>Title:</p>
				<input type='text' id='topic' name='topic' size=100'>
				<p>Content: </p>
				<textarea id='content' name='content'></textarea><br>
				<input type='submit' value='add new post'></form>";
			} else {
				echo "<p>Please do log in to make a topic or register</p>";
			}
		?>
	</div>