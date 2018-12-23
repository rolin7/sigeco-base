<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Tickets</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap.min.css" />

<style type="text/css">
#idr {
	max-width: 800px;
	min-height: 1400px;
	margin-left: 50px;
}

#c1 {
	color: green;
	font-size: 23px;
}

#c2 {
	color: #1071A8;
	font-size: 20px;
	margin-right: 12px;
}

#c3 {
	color: red;
	font-size: 20px;
}

#save_button {
	color: #fff;
	font-size: medium;
}

#button_tic {
	color: #fff;
	font-size: medium;
}
</style>
</head>
<body>
	<div class="container" id="idr">
		<h1 style="color: #C70039;">
			<strong>Registro de Ingresos</strong>
		</h1>
		<hr>
		<div class="row">
			<div class="col-md-10">
				<form class="navbar-form" role="search">
					<input type="text" class="form-control" id="boton_buscar"
						placeholder="Search" style="width: 400px;">
					<button type="submit" class="btn btn-default">Buscar</button>
				</form>
			</div>
			<div class="col-md-2" style="padding-top: 15px;">
				<a href="#" data-toggle="modal" data-target="#exampleModal"><i
					class="fa fa-plus " aria-hidden="true" id="c1"></i></a>
			</div>
		</div>
		<hr>
		<table class="table table-condensed table-hover" id="tablita">
			<thead>
				<tr class="danger">
					<th scope="col">#</th>
					<th scope="col">N°</th>
					<th scope="col">Fecha Ingreso</th>
					<th scope="col">Placa</th>
					<th scope="col">Categoría</th>
					<th scope="col">Estado</th>
					<th scope="col">Comprobante</th>
				</tr>
			</thead>
			<tbody id="tablon">
			</tbody>
		</table>
	</div>

	<!-- Guardar -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">Registrar</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<td></td> <select class="form-control" id="save_vehiculo">
							<option>Seleccione Vehiculo</option>
						</select>
						<hr>
						<input type="button" value="Info" onclick="listarCliente()"
							class="btn btn-info">
						<hr>
						<label><h5>Cliente:</h5></label> <input type="text"
							class="form-control" id="save_cliente" style="font-size: 12px;">
						<form class="row">
							<div class="col-sm-6">
								<label><h5>DNI:</h5></label> <input type="text"
									class="form-control" id="save_dni" style="font-size: 12px;">
							</div>

							<div class="col-sm-6">
								<label><h5>Estado:</h5></label> <input type="text"
									class="form-control" id="save_estado" style="font-size: 12px;">
							</div>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<input type="button" value="Enviar" onclick="save()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>
	<!-- AQUI INICIA EL TICKET  -->

	<div class="container" id="contenedor_ticket"
		style="width: 450px; min-height: 800px;">
		<!-- aqui inicia la tabla que contendra la cabecera y el cuerpo del ticket -->
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title" style="text-align: center;">COMUNIDAD
					CAMPESINA SANTA ROSA DE SACO</h3>
			</div>
			<!-- hasta aqui la primera parte de la cabecera del ticket -->
			<div class="panel-body">
				<div class="row">
					<div class="col-md-8">
						<h5
							style="text-align: center; padding-top: 20px; font-size: 30px;"><strong>
							PLAYA
							DE ESTACIONAMIENTO
							</strong></h5>
					</div>
					<div class="col-md-4">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">CONTROL INTERNO</h3>
							</div>
							<div class="panel-body">
							<input type="text" class="form-control" placeholder="ticket" id="idtic" > 
							</div>
						</div>
					</div>
				</div>
				<!-- aqui finaliza la parte de la cabecera dentro del cuerpo -->
				<div class="row">
					<div class="col-md-6">
						<input type="text" class="form-control" placeholder="Placa" id="plac" >
					</div>
					<hr>
					<div class="col-md-6">
						<input type="text" class="form-control"
							placeholder="Categoria" id="catego" >
					</div>
				</div>
				<div class="row" style="padding-top: 10px;">
					<div class="col-md-6">
						<label><strong>ENTRADA</strong></label> <input type="text"
							class="form-control" placeholder="dia" id="entrad">
					</div>
					<hr>
					<div class="col-md-6">
						<label><strong>CLIENTE</strong></label> <input type="text"
							class="form-control" placeholder="cliente" id="client">
					</div>
				</div>
				<div class="row" style="padding-top: 10px; padding-bottom: 10px;">
					<div class="col-md-6">
						<input type="text" class="form-control" placeholder="dni" id="dni_tic">
					</div>
					<hr>
					<div class="col-md-6">
						<input type="text" class="form-control" placeholder="telefono" id="telf">
					</div>
				</div>
				<input type="text" class="form-control" placeholder="direccion" id="direc">

			</div>
		</div>





	</div>

	<!-- AQUI FINALIZA EL TICKET  -->

	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/ticketScript.js"></script>
	<script type="text/javascript" src="resources/js/printThis.js"></script>
	<script type="text/javascript">
		$('#boton_buscar').on('keyup', function() {
			var value = $(this).val();
			var patt = new RegExp(value, "i");
			$('#tablon').find('tr').each(function() {
				if (!($(this).find('td').text().search(patt) >= 0)) {
					$(this).not('.myHead').hide();
				}
				if (($(this).find('td').text().search(patt) >= 0)) {
					$(this).show();
				}
			});
		});

		var opciones = {
			importCSS : false,
			loadCSS : "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css",
		}

		function generar(id) {
			alert(id);

			$.get('emitirTicket', {
				id : id
			}, function(data) {
				console.log(data);
				alert(data);
				var d = JSON.parse(data);
								var f = new Date();
								var dia = f.getDate();
								var mes = f.getMonth() + 1;
								var año = f.getFullYear();
			
								$("#idtic").val(d[0].idticket);
								$("#client").val(
										d[0].nombres + " " + d[0].apellidos);
								$("#direc").val(d[0].direccion);
								$("#dni_tic").val(d[0].DNI);
								$("#plac").val(d[0].placa);
								$("#entrad").val(d[0].fecha_Ingreso);
								$("#catego").val(d[0].categoria);
								$("#telf").val(d[0].telefono);
								$('#contenedor_ticket').printThis(opciones);
								$('#contenedor_ticket').show();
			});
		}
	</script>
</body>
</html>