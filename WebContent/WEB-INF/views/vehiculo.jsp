<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Vehículos</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap.min.css" />

<style type="text/css">
#idr {
	max-width: 800px;
	min-height: 900px;
	margin-left: 70px;
}

#c1 {
	color: green;
	font-size: 20px;
}

#c2 {
	color: orange;
	font-size: 20px;
}

#c3 {
	color: red;
	font-size: 20px;
	margin-left: 12px;
}
</style>
</head>

<body>

	<div class="container" id="idr">
		<h1 style="color: #1F618D;">
			<strong>Registro de Vehiculos</strong>
		</h1>
		<div class="row">
			<hr>
			<a href="#" data-toggle="modal" data-target="#exampleModal"
				style="margin-left: 750px;"><i class="fa fa-plus"
				aria-hidden="true" id="c1"></i></a>
			<hr>
		</div>
		<table class="table table-condensed table-hover" id="tablita">
			<thead>
				<tr class="danger">
					<th scope="col">#</th>
					<th scope="col">N°</th>
					<th scope="col">Placa</th>
					<th scope="col">Categoria</th>
					<th scope="col">Cliente</th>
					<th scope="col">Operaciones</th>

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
					<h4 class="modal-title" id="exampleModalLabel">Registrar</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<div class="row">
							<div class="col-md-10"> <input type="text" class="form-control"
							id="save_placa" placeholder="Ingrese PLACA del vehiculo"></div>
							<div class="col-md-2"><input class="btn btn-success" type="button" value="validar"
									id="btn_validar"></div>
						</div>
						
						<hr>
						<select class="form-control" id="save_categoria">
							<option>Seleccione Categoria</option>
						</select>
						<hr>
						<select class="form-control" id="save_cliente">
							<option>Seleccione Cliente</option>
						</select>

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

	<!-- modificar vehículo -->
	<div class="modal" id="modificarModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modificar</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">

						<label>Placa:</label> <input type="text" class="form-control"
							id="edit_placa"> <label>Categoria:</label> <input
							type="text" class="form-control" id="edit_categoria" disabled>
						<label>Cliente:</label> <input type="text" class="form-control"
							id="edit_idcliente" disabled> <input type="hidden"
							id="edit_idvehiculo">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<input type="button" value="Enviar" onclick="actualizar()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/vehiculoScript.js"></script>
</body>

</html>