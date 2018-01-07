<?php
	include('login.php'); 

	// Se já existir sessão, redireccionar para a listagem de eventos
	if(isset($_SESSION['login_user'])){
		header("location: eventos.php");
	}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Admin</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">
</head>
<body>

<!-- CONTENTOR -->

	<header id="cabecalho">

<div id="contentor">

<!-- CABEÇALHO -->

	<header id="cabecalho">

<!-- LOGO -->
		<a href="index.php">
			<img src="../images/logo.png" id="logo" class="left"/>
		</a>
		
		<h1 class="right">Administração</h1>
	</header>

		<div id="main">

<!-- FORMULÁRIO DE LOGIN -->
			
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
