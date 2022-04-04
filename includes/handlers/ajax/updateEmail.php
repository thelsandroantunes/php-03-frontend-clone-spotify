<?php

	include("../../config.php");

	if(!isset($_POST['username'])) 
	{
		echo "ERROR: Não é possível definir usuário";
		exit();
	}

	if(isset($_POST['email']) && $_POST['email'] != "") 
	{

		$username = $_POST['username'];
		$email = $_POST['email'];

		if(!filter_var($email, FILTER_VALIDATE_EMAIL)) 
		{
			echo "Email inválido";
			exit();
		}

		$emailCheck = mysqli_query($con, "SELECT email FROM users WHERE email='$email' AND username != '$username'");
		
		if(mysqli_num_rows($emailCheck) > 0) 
		{
			echo "Email já está em uso";
			exit();
		}

		$updateQuery = mysqli_query($con, "UPDATE users SET email = '$email' WHERE username='$username'");
		echo "Atualizado com sucesso";

	}
	else 
	{
		echo "Forneça um Email";
	}

?>