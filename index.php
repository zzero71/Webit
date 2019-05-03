<?php
	include ('dbconn.php');
	
	require 'header.php';
?>
	
	<div>
		<?php
			if (isset($_SESSION['username'])) {
					echo "<div class='content'><p><a href='newcategory.php'>
					add new post</a></p></div>";
			}
		?>
	</div>
	<div class="content">
		<?php dispcategories();?>
	</div>