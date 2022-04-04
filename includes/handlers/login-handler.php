<?php

	if (isset($_POST['loginButton'])) 
	{
		//echo "O botão Login foi pressionado";
		$username = $_POST['loginUsername'];
		$password = $_POST['loginPassword'];

		//Função de Login
		$result = $account->login($username,$password);

		if ($result == true) 
		{
			$_SESSION['userLoggedIn'] = $username;
			header("Location: index.php");
		}
	}

?>