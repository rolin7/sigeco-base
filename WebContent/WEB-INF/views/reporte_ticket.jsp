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
#save_button {
	color: #fff;
	font-size: medium;
}
</style>
</head>
<body>
	<div class="container" id="idr">
		<h1 style="color: #C70039;">
			<strong>Reporte</strong>
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
				</tr>
			</thead>
			<tbody id="tablon">
			</tbody>
		</table>
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
		


function factura(idd) {
			var id = $("#save_idticketf").val();
			$.get('emitirReporte', {
				id : id,ruc:ruc, descripcion:descripcion,lugar:lugar,tipo:tipo,
				user : user
			}, function(data) {
				console.log(data);
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
				alert( "ya finalizamos con el reporte ");
			});
			
		}
	</script>

	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/reporteTicket.js"></script>
	<script type="text/javascript" src="resources/js/printThis.js"></script>

</body>
</html>