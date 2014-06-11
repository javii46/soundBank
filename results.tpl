<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>SoundBank</title>
		<link rel="stylesheet" type="text/css" href="static/hojaestilo.css">
		<link href='http://fonts.googleapis.com/css?family=Permanent+Marker' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Coming+Soon' rel='stylesheet' type='text/css'>
	</head>
	<body>
			<div id="encabezadoresults">
			<a href="/"><h1>Sound Bank</h1></a>
			</div>
			<div id="busqueda1">
			<p> Resultados de la búsqueda: {{busqueda}} </p>
			</div>
			<div id="contenedor">
				%for i in data['data']:
					<div class="cajas">
			<table>
				<tr>
					<img src="{{ i['cover'] }}" />
				</tr>
				<td class="letra">
					<p>{{ i['artist']['name'] }} </p>
					<p>{{ i['title'] }}</p>
					<a href="{{ i['link'] }}"> ¿Desea escuchar este disco?, pulse aquí. </a>
				</td>
			<br>
			</table>
			</div>
			%end
		<div class="redirect">
			<a href="/">Realice otra búsqueda</a>
			</div>
		</div>
	</body>
</html>
