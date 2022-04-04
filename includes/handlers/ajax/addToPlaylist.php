<?php
	include("../../config.php");


	if(isset($_POST['playlistId']) && isset($_POST['songId'])) {
		$playlistId = $_POST['playlistId'];
		$songId = $_POST['songId'];

		$orderIdQuery = mysqli_query($con, "SELECT MAX(playlistorder) + 1 as playlistorder FROM playlistsongs WHERE playlistid='$playlistId'");
		$row = mysqli_fetch_array($orderIdQuery);
		$order = $row['playlistorder'];

		$query = mysqli_query($con, "INSERT INTO playlistsongs VALUES(DEFAULT, '$songId', '$playlistId', '$order')");

	}
	else {
		echo "PlaylistId ou songId não está em addToPlaylist.php";
	}

?>