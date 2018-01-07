<!-- PÁGINA EDITAR EVENTOS -->

<?php

		// LIGAÇÃO À BASE DE DADOS
    $ligacao = mysqli_connect('localhost','root','','easy_ticket');
    mysqli_set_charset($ligacao,'utf8');

    $id = $_GET['id'];

		// VERIFICAR SE HÁ ALTERAÇÕES
    if( count($_POST) > 0 ){

        $titulo = mysqli_real_escape_string($ligacao,$_POST['titulo']);
        $data = mysqli_real_escape_string($ligacao,$_POST['data']);
        $hora = mysqli_real_escape_string($ligacao,$_POST['hora']);
        $local = mysqli_real_escape_string($ligacao,$_POST['local']);
        $descricao = mysqli_real_escape_string($ligacao,$_POST['descricao']);
        $popularidade = mysqli_real_escape_string($ligacao,$_POST['popularidade']);
        $categoria = mysqli_real_escape_string($ligacao,$_POST['categoria']);

        $data_hora = $data . ' ' . $hora;
     
				// ACTUALIZAR A BASE DE DADOS
        mysqli_query($ligacao,"UPDATE eventos SET titulo = '$titulo' , data = '$data_hora', local = '$local', descricao = '$descricao', popularidade = $popularidade, categoria = $categoria WHERE id = $id ");

				// ENVIO DE IMAGENS - VERIFICAÇÃO 
        if( $_FILES['imagem']['error'] == 0 ){

            $imagem = $_FILES['imagem']['name'];
            $temp_file = $_FILES['imagem']['tmp_name'];
            move_uploaded_file( $temp_file  , '../images/'.$imagem );

						// ACTUALIZAR A BASE DE DADOS
            mysqli_query($ligacao,"UPDATE eventos SET imagem = '$imagem' WHERE id = $id");

        }
      
		// REDIRECCIONAR PARA "eventos.php" QUANDO UMA NOTÍCIA É GUARDADA
    ob_start();
    header('Location: eventos.php');
    ob_end_flush();
    }

		//CONSULTA À BASE DE DADOS
    $consulta = mysqli_query($ligacao , "SELECT * FROM eventos WHERE id = $id");
    $eventos = mysqli_fetch_assoc($consulta);

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
            <h2 id="insert-button">Editar evento</h2>

            <form enctype="multipart/form-data" id="insert-form" action="" method="post">
                
                <?php $data_hora = date_create($eventos['data']) ?>
                <label>Título</label>
                <input type="text" name="titulo" value="<?php echo $eventos['titulo']; ?>"/>

                <label>Data</label>
                <input type="date" name="data" value="<?php echo date_format($data_hora, 'Y-m-d'); ?>"/>

								<label>Hora</label>
                <input type="time" name="hora"value="<?php echo date_format ($data_hora, 'h:i'); ?>"/>

                <label>Local</label>
                <input type="text" name="local" value="<?php echo $eventos['local']; ?>"/>

                <label>Descrição</label>
                <textarea class="editor" name="descricao"><?php echo $eventos['descricao']; ?></textarea>
							
								<label>Popularidade</label>
                <input type="text" name="popularidade" value="<?php echo $eventos['popularidade']; ?>"/>
							
							  <label>Categoria</label>
                <input type="text" name="categoria"value="<?php echo $eventos['categoria']; ?>"/>
							
								<label>Imagem</label>
                    <?php if($eventos['imagem'] != ''){ ?>
                        <img src="../images/<?php echo $eventos['imagem']; ?>" accept="image/*"/>
                    <?php } ?>
                <input type="file" name="imagem"/>
                
                <input type="submit" value="Editar" class="submit-button"/>
            </form>
        </div>
	</body>
</html>

