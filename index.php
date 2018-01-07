<!-- PÁGINA PRINCIPAL -->

<?php 

//Ligação à base de dados
$ligacao = mysqli_connect('localhost','root','','easy_ticket');

mysqli_set_charset($ligacao, 'utf8');

//Consulta à base de dados
$consulta = mysqli_query($ligacao, "SELECT * FROM eventos WHERE `data` >= NOW() ORDER BY popularidade DESC LIMIT 8");

$mais_vendidos = array();

while ($linha = mysqli_fetch_assoc($consulta) ){
	$mais_vendidos[] = $linha;
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Easy Ticket</title>
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

</div>

<div class="clear"></div>

<!-- INTRO -->

<div id="contentor">

	<header id="intro">

		<h1 id="intro_titulo">No Music No Life</h1>
		

	</header>

<div class="clear"></div>

<!-- MAIS VENDIDOS -->

	<div id="mais_vendidos">

		<h1 id="mais_vendidos_titulo">#MaisVendidos</h1>

		<div id="mais_vendidos_imagens">

			<?php for($i=0; $i<count($mais_vendidos);$i++) { ?>
				<button id="myBtn" onclick='showModal("modal-<?php echo $mais_vendidos[$i]['id']; ?>");'>
					<img src="images/<?php echo $mais_vendidos[$i]['imagem']; ?>"/>
				</button>
			<?php } ?>
		
		</div>
	</div>

<!-- INFORMAÇÕES + COMPRAR - PÁGINA SOBREPOSTA -->
<?php for($i=0; $i<count($mais_vendidos);$i++) { ?>
	<div id="modal-<?php echo $mais_vendidos[$i]['id']; ?>" class="modal">
	  
	  <!-- CONTEÚDO DA PÁGINA SOBREPOSTA -->
	  <div class="modal-content">

	  		<!-- BOTÃO PARA FECHAR A JANELA SOBREPOSTA -->
	    	<span class="close" onclick='closeModal("modal-<?php echo $mais_vendidos[$i]['id']; ?>");'>&times;</span>
	    
		    <img class="left" src="images/<?php echo $mais_vendidos[$i]['imagem']; ?>"/>

		    <h1><?php echo $mais_vendidos[$i]['titulo']; ?></h1>

		    <p>
		    	<?php 
		    		$data = date_create($mais_vendidos[$i]['data']);
		    		echo date_format($data, 'd-M-Y') . ' às ' . date_format($data, 'h:i'); 
	    		?>
    		 </p>

		    <p><?php echo $mais_vendidos[$i]['local']; ?></p>

		    <div class="botao">
		    	<a href="comprar_bilhetes.php?id=<?php echo $mais_vendidos[$i]['id']; ?>" target="_blank">Comprar</a>
		    </div>

		    <br></br>
		    <br></br>

		    <p><?php echo $mais_vendidos[$i]['descricao']; ?></p>
		</div>
	</div>

<?php } ?>

<div class="clear"></div>

<?php 

//Nova consulta à base de dados
$consulta = mysqli_query($ligacao, "SELECT * FROM eventos WHERE `data` >= NOW() ORDER BY data LIMIT 10");
$proximos = array();

while ($linha = mysqli_fetch_assoc($consulta) ){
	$proximos[] = $linha;
}

?>
		
<!-- PRÓXIMOS CONCERTOS -->
	
	<div id="proximos">

		<h1 id="proximos_titulo">#PróximosConcertos</h1>

		<div id="proximos_conteudo">

		<table cellspacing="0">
			
			<?php for ($i=0; $i<count($proximos); $i++) { 
				$data = date_create($proximos[$i]['data'])
				?>
					<tr onclick='showModal("modal-<?php echo $proximos[$i]['id']; ?>");'>
						<td>
							<img class="img" src="images/<?php echo $proximos[$i]['imagem']; ?>"/>
						</td>
							<td>
								<h1 class="proximos_dia left"><?php echo date_format($data, 'd'); ?></h1>
							<p class="proximos_mes"><?php echo date_format($data, 'F') . ' \'' . date_format($data, 'y'); ?></p>
							</td>
							<td class="artista"><?php echo $proximos[$i]['titulo']; ?></td>
							<td><?php echo $proximos[$i]['local']; ?></td>
					</tr>
			<?php } ?>

		</table>

<!-- INFORMAÇÕES + COMPRAR - PÁGINA SOBREPOSTA -->
<?php for($i=0; $i<count($proximos);$i++) { ?>
	<div id="modal-<?php echo $proximos[$i]['id']; ?>" class="modal">
	  
	  <!-- CONTEÚDO DA PÁGINA SOBREPOSTA -->
	  <div class="modal-content">

	  		<!-- BOTÃO PARA FECHAR A JANELA SOBREPOSTA -->
	    	<span class="close" onclick='closeModal("modal-<?php echo $proximos[$i]['id']; ?>");'>&times;</span>
	    
		    <img class="left" src="images/<?php echo $proximos[$i]['imagem']; ?>"/>

		    <h1><?php echo $proximos[$i]['titulo']; ?></h1>

		    <p>
		    	<?php 
		    		$data = date_create($proximos[$i]['data']);
		    		echo date_format($data, 'd-M-Y') . ' às ' . date_format($data, 'h:i'); 
	    		?>
    		 </p>

		    <p><?php echo $proximos[$i]['local']; ?></p>

		    <div class="botao">
		    	<a href="comprar_bilhetes.php?id=<?php echo $proximos[$i]['id']; ?>" target="_blank">Comprar</a>
		    </div>

		    <br></br>
		    <br></br>

		    <p><?php echo $proximos[$i]['descricao']; ?></p>
		</div>
	</div>
<?php } ?>

	</div>

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
