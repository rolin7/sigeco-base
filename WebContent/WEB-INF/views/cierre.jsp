<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Cierre Caja</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap.min.css" />
 
<style type="text/css">
#idr {
	max-width: 700px;
	min-height: 600px;
	margin-left: 100px;
}

#c1 {
	color: green;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="container" id="idr">
		<h3 style="color: #1F618D;">
			<strong>Cierre</strong>
		</h3>
		<div class="row">
			<hr>
			<a href="#" data-toggle="modal" data-target="#exampleModal"><i
				class="fa fa-plus" aria-hidden="true" id="c1"></i></a>
			<hr>
		</div>

		<table class="table table-striped table-hover" id="tablita">
			<thead>
				<tr>
					<th class="warning" scope="col">#</th>
					<th class="warning" scope="col">N°</th>
					<th class="warning" scope="col">Fecha Inicio</th>
					<th class="warning" scope="col">Fecha Termino</th>
					<th class="warning" scope="col">Monto</th>
					<th class="warning" scope="col">Fecha Actual</th>
					<th class="warning" scope="col">Estado</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>

	</div>

	<!-- Guardar -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">Registrar
						Cierre</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<div class="row">
							<div class="col-md-6">
								<label>Fecha Inicio:</label> <input type="date" id="date_inicio"
									class="form-control">
							</div>
							<div class="col-md-6">
								<label>Fecha Término</label> <input type="date"
									class="form-control" id="date_fin">
							</div>
						</div>
						<hr>
						<input type="button" value="Monto" onclick="fechas()"
							class="btn btn-info">
						<hr>
						<label>Monto Total </label>
						<input type="text" class="form-control" id="monto_total" disabled>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<input type="button" value="Efectuar Cierre" onclick="save()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/cierreScript.js"></script>
</body>
</html>