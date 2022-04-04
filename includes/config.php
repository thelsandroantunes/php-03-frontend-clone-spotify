<?php

	ob_start();
	session_start();

	$timezone = date_default_timezone_set("America/Manaus");

	$con = mysqli_connect("localhost","root","","spotify");

	if (mysqli_connect_errno())
	{
		echo "Falha na conexão:".mysqli_connect_errno();
	}


?>