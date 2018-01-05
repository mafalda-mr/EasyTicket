<?php

	// Criar sessão
	session_start();

	// Variavel para guardar os erros, caso existam
	$error = '';

	// Submissão do formulário de login
	if (isset($_POST['submit'])) {

		// Verificar se os campos estão preenchidos
		if (empty($_POST['username']) || empty($_POST['password'])) {
			$error = "Utilizador ou palavra-passe inválidos";

		} else {

			// Obter user e pwd
			$username = $_POST['username'];
			$password = $_POST['password'];

			// Ligar à bd
			$connection = mysqli_connect("atlastockdev_db_1", "root", "root", "easy_ticket", 3306);
			
			// Para evitar sql injection
			$username = stripslashes($username);
			$password = stripslashes($password);
			$username = mysqli_real_escape_string($connection, $username);
			$password = mysqli_real_escape_string($connection, $password);
			
			// Obter o user
			$query = mysqli_query($connection, "select * from admin where password='$password' AND username='$username'");
			$rows  = mysqli_num_rows($query);

			if ($rows == 1) {
				// Guardar dados da sessão
				$_SESSION['login_user'] = $username;

				// Redireccionar para a página de eventos
				header("location: eventos.php");

			} else {

				$error = "Utilizador ou palavra-passe inválidos";
			}

		// Fechar ligação à BD		
		mysqli_close($connection);
		}
	}
