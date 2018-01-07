<!-- PÁGINA CRIAR NOVO -->

<?php
		
		// LIGAÇÃO À BASE DE DADOS
    $ligacao = mysqli_connect('localhost','root','','easy_ticket');
    mysqli_set_charset($ligacao,'utf8');

		// POST NA BASE DE DADOS
    if( count($_POST) > 0 ){
			
				$titulo = $_POST['titulo'];
        $data = $_POST['data'];
        $hora = $_POST['hora'];
				$local = $_POST['local'];
				$descricao = $_POST['descricao'];
				$popularidade = $_POST['popularidade'];
				$categoria = $_POST['categoria'];
        $imagem = '';
				
				$data_hora = $data . ' ' . $hora;
				
        if( $_FILES['imagem']['error'] == 0 ){

           $imagem = $_FILES['imagem']['name'];
           $temp_file = $_FILES['imagem']['tmp_name'];
           move_uploaded_file($temp_file, '../images/'.$imagem);
        }
			
        mysqli_query( $ligacao, "INSERT INTO eventos (titulo, data, local, descricao, popularidade, categoria, imagem) VALUES ('$titulo', '$data_hora', '$local', '$descricao', $popularidade, $categoria, '$imagem')");
    	  $erro = mysqli_error ($ligacao);
			
				if(!empty($erro)) {
				print_r($erro);
			}


		// REDIRECCIONAR PARA "eventos.php" QUANDO UMA NOTÍCIA É GUARDADA
    ob_start();
    header('Location: eventos.php');
    ob_end_flush();
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
	
	
<!-- FORMULÁRIO INSERIR NOTÍCIA -->
        <div class="item-insert">
            <h2 id="insert-button">Inserir evento</h2>

            <form enctype="multipart/form-data" id="insert-form" action="" method="post">

                <label>Título</label>
                <input type="text" name="titulo" required/>

                <label>Data</label>
                <input type="date" name="data" required/>
							
								<label>Hora</label>
                <input type="time" name="hora" required/>

                <label>Local</label>
                <input type="text" name="local" required/>

                <label>Descrição</label>
                <textarea class="editor" name="descricao" required></textarea>
							
								<label>Popularidade</label>
                <input type="text" name="popularidade" required/>
							
							  <label>Categoria</label>
                <input type="text" name="categoria" required/>
							
								<label>Imagem</label>
                <input type="file" name="imagem" required/>
                
                <input type="submit" value="Inserir" class="submit-button"/>
            </form>          
        </div>		
	</body>
</html>

