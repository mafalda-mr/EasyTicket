<!-- COMPRAR BILHETES -->

<?php 

//Ligação à base de dados
$ligacao = mysqli_connect('localhost','root','','easy_ticket');

mysqli_set_charset($ligacao, 'utf8');

$id = $_GET['id'];

//Consulta à base de dados
$consulta = mysqli_query($ligacao, "SELECT * FROM eventos WHERE id = $id");

$evento = mysqli_fetch_assoc($consulta);

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Easy Ticket - Comprar</title>
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
			<img src="images/logo.png" id="logo" class="left"/>
		</a>
		

<!-- MENU -->

		<nav id="menu" class="right">
			<a href="musica.php">Música</a>
			<a href="festivais.php">Festivais</a>
			<a href="tradicional.php">Tradicional</a>
			<a href="teatro.php">Teatro</a>
		</nav>

	</header>

<!-- COMPRAR BILHETES -->

	<h1 id="titulo">#ComprarBilhetes</h1>

	<section>

		<h1 id="comprar_cabecalho"><?php echo $evento['titulo'] . '  -  ' . $evento['data']. '  -  ' . $evento['local']?></h1>
				
		<table cellspacing="0">
				<tr id="comprar">
						<td>    </td>
						<td>Local</td>
						<td>Tipo de bilhete</td>
						<td>Preço</td>
				</tr>
				
				<tr>
						<td> 
							<img class="img" src="images/<?php echo $evento['imagem']; ?>" />
						</td>
						<td><?php echo $evento['local']; ?></td>
						<td>Bilhete Normal</td>
						<td>40,00€</td>
				</tr>
		</table>
		
		<div class="botao right">
			<a  href="obrigado.html">Comprar</a>
		</div>

	</section>

<div class="clear"></div>

<!-- RODAPÉ -->

	<footer id="rodape">

		<div id="contactos">
			<h1>Contactos</h1>
			<p>21 711 90 00</p>
			<p>Campus de Benfica do IPL</p>
			<p>1549-014 Lisboa</p>
		</div>

		<div id="redes_sociais">
			<h1>Siga-nos</h1>
			<a href="https://www.facebook.com/">
				<img src="images/facebook.png"/>
			</a>
			<a href="https://twitter.com/?lang=pt_pt">
				<img src="images/twitter.png"/>
			</a>
			<a href="https://plus.google.com">
				<img src="images/google+.png"/>
			</a>
			<a href="https://mail.google.com">
				<img src="images/email.png"/>
			</a>
		</div>
		
		<div id="copy">
			<p>&copy Copyright 2018. All Rights Reserved.</p><p>Powered by MafaldaRodrigues_9623 and BárbaraVieira_9251</p>
		</div>

	</footer>

</div>

<!-- JAVASCRIPT E JQUERY -->
    <script type="application/javascript" src="js/jquery.js"></script>
    <script type="application/javascript" src="js/script.js"></script>

</body>
</html>
