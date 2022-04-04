<?php

	include("../../config.php");

	if(!isset($_POST['username'])) 
	{
		echo "ERROR: Não é possível definir usuário";
		exit();
	}

	if(!isset($_POST['oldPassword']) || !isset($_POST['newPassword1'])  || !isset($_POST['newPassword2'])) 
	{
		echo "Nem todas as senhas foram definidas";
		exit();
	}

	if($_POST['oldPassword'] == "" || $_POST['newPassword1'] == ""  || $_POST['newPassword2'] == "") 
	{
		echo "Por favor preencha todos os campos";
		exit();
	}

	$username = $_POST['username'];
	$oldPassword = $_POST['oldPassword'];
	$newPassword1 = $_POST['newPassword1'];
	$newPassword2 = $_POST['newPassword2'];

	$oldMd5 = md5($oldPassword);

	$passwordCheck = mysqli_query($con, "SELECT * FROM users WHERE username='$username' AND password='$oldMd5'");
	if(mysqli_num_rows($passwordCheck) != 1) 
	{
		echo "Senha está incorreta";
		exit();
	}

	if($newPassword1 != $newPassword2) 
	{
		echo "Senhas não correspondem";
		exit();
	}

	if(preg_match('/[^A-Za-z0-9]/', $newPassword1)) 
	{
		echo "Sua senha deve conter apenas letras e/ou números";
		exit();
	}

	if(strlen($newPassword1) > 30 || strlen($newPassword1) < 5) 
	{
		echo "Seu usuário deve conter entre 5 a 30 caracteres";
		exit();
	}

	$newMd5 = md5($newPassword1);

	$query = mysqli_query($con, "UPDATE users SET password='$newMd5' WHERE username='$username'");
	echo "Atualizado com sucesso";

?>