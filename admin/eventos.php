<!-- PÁGINA DE ADMINISTRAÇÃO -->

<?php
		include('sessao.php');
	
		//Ligação à base de dados
		$ligacao = mysqli_connect('localhost','root','','easy_ticket');

		//APAGAR REGISTO DA BASE DE DADOS
	
    if(isset($_GET['delete_id'])){
        $delete_id = $_GET['delete_id'];
        mysqli_query($ligacao,"DELETE FROM eventos WHERE id = $delete_id");
    }

	mysqli_set_charset($ligacao, 'utf8');

	//Consulta à base de dados
	$consulta = mysqli_query($ligacao, "SELECT * FROM eventos ORDER BY data");

	$eventos = array();

	while ($linha = mysqli_fetch_assoc($consulta) ){
		$eventos[] = $linha;
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
		
		<h1 class="left">Administração</h1>
					<!-- BOTÃO DE LOGOUT -->
			<b id="logout"><a href="logout.php">Sair</a></b>
	</header>

		<div id="main">
	
	
		<div id="eventos">
			<b id="welcome">Bem-vindo  <i><?php echo $login_session; ?></i></b>
		</div>

		<div class="clear">

		<!-- TABELA DE EVENTOS -->
		<table cellspacing="0">
			<tr>
				<th>Título</th>
				<th>Data</th>
				<th>Local</th>
				<th>Popularidade</th>
				<th></th>
				<th></th>
			</tr>
			<?php for ($i=0; $i<count($eventos); $i++) { ?>
								<tr>
									<td><?php echo $eventos[$i]['titulo']; ?></td>
									<td><?php echo $eventos[$i]['data']; ?></td>
									<td><?php echo $eventos[$i]['local']; ?></td>
									<td><?php echo $eventos[$i]['popularidade']; ?></td>
									<td>
											<a href="editar_evento.php?id=<?php echo $eventos[$i]['id'];?>" type="button">Editar</a>
									</td>
									<!-- BOTÃO DE APAGAR NOTÍCIA -->
                  <td class="list-delete">
                        <a href="eventos.php?delete_id=<?php echo $eventos[$i]['id'];?>" class="delete-link"></a>
									</td>
								</tr>
			   
			<?php } ?>
		
		</table>
			<a href="novo.php" class="novo">+ Novo</a>
	</body>
</html>

