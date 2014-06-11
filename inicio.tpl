<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Sound-Bank</title>
		<link rel="stylesheet" type="text/css" href="/static/hojaestilo.css">
		<link href='http://fonts.googleapis.com/css?family=Permanent+Marker' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
	</head>
	<body>
		<div id="encabezado">
			<h1> Sound Bank </h1>
			<h2>Encuentre toda su musica con tan solo un clik</h2>
		</div>
			<br>
			<img src="./static/cinta.png" class="casette">

		<div id="busqueda">
			<form action="/resultado" method="POST">
			<h2 class="comience">Busqueda de artistas</h2><input name="artista" type="text" />
			<input value="Buscar" type="submit" />
			</form>
		</div>
		<div id="letras">
			<form action="/letra" method="POST">
			<h2 class="comience">Busque las letras de sus canciones favoritas</h2>
			<p class="comience">Introduzca nombre del artista</p><input name="artista2" type="text" />
			<p class="comience">Introduzca nombre de la canción</p><input name="cancion" type="text" />
			<input value="Buscar" type="submit" />
			</form>
		</body>
</html>

