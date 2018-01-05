<?php
	include('login.php'); 

	// Se já existir sessão, redireccionar para a listagem de eventos
	if(isset($_SESSION['login_user'])){
		header("location: eventos.php");
	}

?>

<html>
	<head>
		<title>Admin </title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="main">
			<h1>Easy Ticket - Admin</h1>
			<div id="login">
				<h2>Login</h2>
				<form action="" method="post">
					<input id="name" name="username" placeholder="utilizador" type="text">
					<input id="password" name="password" placeholder="**********" type="password">
					<input name="submit" type="submit" value=" Login ">
					<span><?php echo $error; ?></span>
					</form>
				</div>
		</div>
	</body>
</html>
