<?php
	// Ligar à bd
	$connection = mysqli_connect("localhost", "root", "", "easy_ticket");
	
	// Iniciar sessão
	session_start();

	// Validar se o utilziador tem sessão activa
	$user_check		= $_SESSION['login_user'];
	$ses_sql 		= mysqli_query($connection, "select username from admin where username='$user_check'");
	$row				= mysqli_fetch_assoc($ses_sql);
	$login_session = $row['username'];

	if(!isset($login_session)) {

		mysqli_close($connection);
		header('Location: index.php');
	}
?>