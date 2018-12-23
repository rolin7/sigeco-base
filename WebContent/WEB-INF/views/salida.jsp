<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>emitir comprobante</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap.min.css" />

<style type="text/css">
#idr {
	max-width: 900px;
	min-height: 1400px;
	margin-left: 10px;
}

#c1 {
	color: green;
	font-size: 20px;
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

#save_factura {
	margin-left: 5px;
}
</style>
</head>
<body>
	<div class="container" id="idr">
		<h1 style="color: #C70039;">
			<strong>Comprobante</strong>
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
			
			</div>
		</div>
		<hr>
		<table class="table table-condensed table-hover" id="tablita">
			<thead>
				<tr class="danger">
					<th scope="col">#</th>
					<th scope="col">N°</th>
					<th scope="col">Fecha Ingreso</th>
					<th scope="col">Fecha Salida</th>
					<th scope="col">Monto x dia</th>
					<th scope="col">Placa</th>
					<th scope="col">Categoria</th>
					<th scope="col">Monto Total</th>
					<th scope="col">Estado</th>
					<th scope="col">Operaciones</th>
				</tr>
			</thead>
			<tbody id="tablon">
			</tbody>
		</table>
	</div>


	<!-- 	guardar comprobante boleta -->
	<div class="modal fade" id="comprobanteModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">Emitir</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-11">

							<label>RUC:</label> <input type="text" class="form-control"  type="number" maxlength="11" 
							oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
								id="save_ruc"> <label>DESCRIPCION:</label> <input
								type="text" class="form-control" id="save_descripcion">
							<label>LUGAR:</label> <input type="text" class="form-control"
								id="save_lugar"> 
							<label>TIPO:</label> <input type="text" class="form-control"
								id="save_tipo">
								<hr>
								<input type="text" class="form-control"
								id="save_idticket" disabled="disabled">

						</div>
						<div class="col-md-1">
						 					
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<input type="button" value="Emitir" onclick="boleta()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>
	<!-- finaliza guardar comprobante boleta -->
	
<!-- 	Ahora para el modal  comprobante - factura  -->
	<div class="modal fade" id="facturaModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">Emitirr</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-11">

							<label>RUC:</label> <input type="text" class="form-control"  type="number" maxlength="11" 
							oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
								id="save_rucf"> <label>DESCRIPCIÓN:</label> <input
								type="text" class="form-control" id="save_descripcionf">
							<label>LUGAR:</label> <input type="text" class="form-control"
								id="save_lugarf"> 
							<label>TIPO:</label> <input type="text" class="form-control"
								id="save_tipof"> 
								<hr>
								<input type="text" class="form-control"
								id="save_idticketf" disabled="disabled">

						</div>
						<div class="col-md-1">
						
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<input type="button" value="Emitir" onclick="factura()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>

<!-- finaliza el comprobante  factura  -->

	<!-- a partir de esta seccion inicia la boleta HTML5, se ocultará automaticamente -->
	<div class="container" id="contenedor_boleta"
		style="background-color: white; width: 550px; min-height: 900px;">
		<!-- aqui inicia la tabla que contendra la cabecera y el cuerpo del comprobante -->
		<div class="list-group">
			<div class="list-group-item disabled">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<h3 style="text-align: center;">
								<strong>COMUNIDAD CAMPESINA SANTA ROSA DE SACO</strong>
							</h3>
							<!-- primer bloque de grilla en la cabecera del comprobante -->
							<h4 style="text-align: center; margin-top: 40px;">PLAYA DE
								ESTACIONAMIENTO COCHERA Y OTROS</h4>
						</div>
						<div class="col-md-6">
							<!-- segundo bloque de grilla en la cabecera del comprobante -->
							<div class="list-group">
								<div class="list-group-item" style="text-align: center;">
									<input type="text" class="form-control" id="ruc_cliente"
										placeholder="RUC" style="border: none;">
								</div>
								<div class="list-group-item active">
									<input type="text" name="hola" class="form-control"
										id="titulo_comprobante"
										style="background-color: #1175B8; border: none; color: #fff; font-weight: bold; font-size: 20px; font-variant: small-caps; text-align: center;">
								</div>
								<div class="list-group-item" style="text-align: center;">
									<input type="text" class="form-control" id="boleta_cliente"
										placeholder="Nro boleta" style="border: none;">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- aqui incluiremos la direccion del negocio -->
				<p style="text-align: center;">AV. MIGUEL GRAU N° 145 JUNIN -
					YAULI - SANTA ROSA DE SACCO</p>
			</div>
			<!-- hasta aqui la primera parte de la cabecera del ticket -->
			<div class="list-group-item">
				<div class="row" style="padding: 15px;">
					<div class="list-group">
						<div class="list-group-item">
							<label>Señor(a): </label> <input type="text" class="form-control"
								placeholder="señor" id="nombre_completo_cliente"
								style="border: none;"> <label>DIRECCIÓN: </label> <input
								type="text" class="form-control" placeholder="direccion"
								id="direccion_cliente" style="border: none;"> <label>DNI:</label>
							<input type="text" class="form-control" placeholder="dni"
								id="dni_cliente" style="border: none;">
						</div>
					</div>
				</div>
				<!-- aqui finaliza la parte de la cabecera dentro del cuerpo -->
				<div class="row">
					<div class="col-md-6">
						<label><strong>PLACA:</strong></label>
						<div class="list-group-item"
							style="height: 100px; padding-top: 30px;">
							<input type="text" class="form-control" placeholder="Placa"
								id="placa_cliente" style="border: none;">
						</div>
					</div>
					<div class="col-md-6">
						<label><strong>ENTRADA:</strong></label> <input type="text"
							class="form-control" placeholder="dia" id="entrada_cliente"
							style="border: none;"> <label><strong>SALIDA:</strong></label>
						<input type="text" class="form-control" placeholder="dia"
							id="salida_cliente" style="border: none;">
					</div>

				</div>
				<hr>
				<label><strong>IMPORTE:</strong></label> <input type="text"
					class="form-control" placeholder="importe"
					id="importe_total_cliente" style="border: none;">
				<div class="row">
					<input type="text" class="form-control" placeholder="fecha actual"
						id="fecha_actual_cliente" style="border: none;">
				</div>

			</div>
			<hr>
			<div class="list-group-item">
				<h5>CONDICIONES</h5>
				<p>El pago de tarifas es por el uso de la cochera y otros, no se
					responsabiliza por el robo, choque, incendios, sismos, ni atentados
					terroristas o substraccion de accesorios de objetos de valor dejado
					dentro del vehiculo. Se recomienda dejar la puerta bien cerrada y
					conectar su alarma</p>
			</div>
		</div>

	</div>
	<!-- aqui finaliza la parte oculta  -->
	
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
		function boleta(idd) {
			var id = $("#save_idticket").val();
			var ruc = $("#save_ruc").val();
			var descripcion = $("#save_descripcion").val();
			var lugar = $("#save_lugar").val();
			var tipo = $("#save_tipo").val();
			var user = 15;
			alert(id);
			alert(ruc);
			alert(tipo);

			
			$.get('emitirComprobante', {
				id : id,ruc:ruc, descripcion:descripcion,lugar:lugar,tipo:tipo,
				user : user
			}, function(data) {
// 				console.log(data);
				alert(data);
				var d = JSON.parse(data);
				var f = new Date();
				var dia = f.getDate();
				var mes = f.getMonth() + 1;
				var año = f.getFullYear();
				$("#ruc_cliente").val(d[0].RUC);
				$("#boleta_cliente").val(d[0].idticket);
				$("#nombre_completo_cliente").val(
						d[0].nombres + " " + d[0].apellidos);
				$("#direccion_cliente").val(d[0].direccion);
				$("#dni_cliente").val(d[0].DNI);
				$("#placa_cliente").val(d[0].placa);
				$("#entrada_cliente").val(d[0].fecha_Ingreso);
				$("#salida_cliente").val(d[0].fecha_salida);
				$("#titulo_comprobante").val("boleta de venta");
				$("#fecha_actual_cliente").val(
						"Santa Rosa de Sacco, " + " a los " + dia + " dias "
								+ " del mes de " + mes + " del año " + año);
				$("#importe_total_cliente").val(d[0].monto_total);
				$('#contenedor_boleta').printThis(opciones);
				$('#contenedor_boleta').show();
				$("#comprobanteModal").modal("hide");
				alert( "ya finalizamos con la boleta  ");
			});
			alert("ahora salimos del get");
		}


function factura(idd) {
			var id = $("#save_idticketf").val();
			var ruc = $("#save_rucf").val();
			var descripcion = $("#save_descripcionf").val();
			var lugar = $("#save_lugarf").val();
			var tipo = $("#save_tipof").val();
			var user = 15;
			alert(id);
			alert(ruc);
			alert(tipo);
			
			$.get('emitirComprobante', {
				id : id,ruc:ruc, descripcion:descripcion,lugar:lugar,tipo:tipo,
				user : user
			}, function(data) {
// 				console.log(data);
				alert(data);
				var d = JSON.parse(data);
				var f = new Date();
				var dia = f.getDate();
				var mes = f.getMonth() + 1;
				var año = f.getFullYear();
				$("#ruc_cliente").val(d[0].RUC);
				$("#boleta_cliente").val(d[0].idticket);
				$("#nombre_completo_cliente").val(
						d[0].nombres + " " + d[0].apellidos);
				$("#direccion_cliente").val(d[0].direccion);
				$("#dni_cliente").val(d[0].DNI);
				$("#placa_cliente").val(d[0].placa);
				$("#entrada_cliente").val(d[0].fecha_Ingreso);
				$("#salida_cliente").val(d[0].fecha_salida);
				$("#titulo_comprobante").val("factura de venta");
				$("#fecha_actual_cliente").val(
						"Santa Rosa de Sacco, " + " a los " + dia + " dias "
								+ " del mes de " + mes + " del año " + año);
				$("#importe_total_cliente").val(d[0].monto_total);
				$('#contenedor_boleta').printThis(opciones);
				$('#contenedor_boleta').show();
				$("#facturaModal").modal("hide");
				alert( "ya finalizamos con la factura ");
			});
			
		}
	</script>

	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/salidaScript.js"></script>
	<script type="text/javascript" src="resources/js/printThis.js"></script>

</body>
</html>