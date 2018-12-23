<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<title>Ejemplo</title>
</head>
<body>

	<h1>Hello world</h1>

	<div>
		<table>
			<thead>
				<tr>
					<th>idticket</th>
					<th>fecha salida</th>
				</tr>
			</thead>
			<tbody id="contenido"></tbody>
		</table>
	</div>
	<div>
		<button onclick="accion()" class="btn btn-danger">Accion despues de Registrar</button>
	</div>


	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			console.log("loading ...");
			listar();
		});

		function listar() {
			$.post("listaTicket", function(data) {
				var a = JSON.parse(data);
				var s = "";
				if (a.length > 0) {
					for (var i = 0; i < a.length; i++) {
						if (a[i].fecha_salida === undefined) {
							s += '<tr>';
							s += '<td>' + a[i].idticket + '</td>';
							s += '<td>No registrado aún</td>';
							s += '<td><a class="btn btn-success" onclick="registrar(' + a[i].idticket
									+ ')">registrar</a></td>';
							s += '</tr>';
						}

					}
				} else {
					s += "No hay contenido";
				}
				$("#contenido").empty().append(s);
			});
		}

		function accion() {
			//y otras cosas
			listar();
		}
		
		function registrar(id){
			var data="id="+id;
			var url="saveAlgo";
			$.post(url,JSON.stringify(data), function(obj) {
				//despues que guarda
				listar();
			});
		}
	</script>

</body>
</html>