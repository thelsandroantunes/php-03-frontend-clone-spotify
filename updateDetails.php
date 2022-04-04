<?php

	include("includes/includedFiles.php");
?>

<div class="userDetails">

	<div class="container borderBottom">
		<h2>EMAIL</h2>
		
		<input 	type="text" class="email" name="email" placeholder="Email" 
				value="<?php echo $userLoggedIn->getEmail(); ?>">
		<span class="message"></span>
		<button class="button green" onclick="updateEmail('email')">SALVAR</button>
	</div>

	<div class="container">
		<h2>SENHA</h2>
		<input type="password" class="oldPassword" name="oldPassword" placeholder="Senha atual">
		<input type="password" class="newPassword1" name="newPassword1" placeholder="Nova senha">
		<input type="password" class="newPassword2" name="newPassword2" placeholder="Confirmar senha">
		<span class="message"></span>
		<button class="button green" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">SALVAR</button>
	</div>

</div>