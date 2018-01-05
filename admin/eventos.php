<?php
	include('sessao.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Eventos</title>
		<link href="style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="eventos">
			<b id="welcome">Bem-vindo : <i><?php echo $login_session; ?></i></b>
			<b id="logout"><a href="logout.php">Sair</a></b>
		</div>

		<div class="clear">

		<table>
			<tr>
				<th>id</th>
				<th>titulo</th>
				<th>data</th>
				<th>local</th>
				<th>imagem</th>
				<th>descrição</th>
				<th>popularidade</th>
			</tr>
			<?php 
			// buscar eventos
			$connection = mysqli_connect("atlastockdev_db_1", "root", "root", "easy_ticket", 3306);
			$query 		= "SELECT * FROM eventos";
			$result		= $connection->query($query);
			if ($result) {
				$event = $result->fetch_assoc();
			   while ($event) {
			    	echo '
						<tr>
							<td>'. $event['id'] . '</td>
							<td>'. $event['titulo'] . '</td>
							<td>'. $event['data'] . '</td>
							<td>'. $event['local'] . '</td>
							<td>'. $event['image'] . '</td>
							<td>'. $event['descricao'] . '</td>
							<td>'. $event['popularidade'] . '</td>
							<td><input type="button" value="Editar"/></td>
							<td><input type="button" value="Eliminar"/></td>
						</tr>
			    	';
			    	$event = $result->fetch_assoc();
			    }
			    $result->free();
			}
			mysqli_close($connection);
			?>
		</table>
		<input type="button" value="+ Novo">
	</body>
</html>

