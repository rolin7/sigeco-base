<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Usuarios</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap.min.css">
<style type="text/css">
#idr {
	max-width: 870px;
	min-height: 900px;
	margin-left: 50px;
}

#c1 {
	color: green;
	font-size: 18px;
}

#c2 {
	color: orange;
	font-size: 16px;
}

#c3 {
	color: black;
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="container" id="idr">
		<h1 style="color: #1F618D;">
			<strong>Registro de Usuarios</strong>
		</h1>
		<div class="row">
			<hr>
			<a href="#" data-toggle="modal" data-target="#exampleModal" style="width:100px; margin-left: 700px;"><i
				class="fa fa-plus" aria-hidden="true" id="c1"></i></a>
			<hr>
		</div>
		<table class="table table-hover table-striped" id="tablita">
			<thead>
				<tr class="success">
					<th scope="col">#</th>
					<th scope="col">N°</th>
					<th scope="col">Nombre</th>
					<th scope="col">Apellidos</th>
					<th scope="col">DNI</th>
					<th scope="col">Correo</th>
					<th scope="col">Usuario</th>
					<th scope="col">Clave</th>
					<th scope="col">Telefono</th>
					<th scope="col">Direccion</th>
					<th scope="col">Actualizar</th>
					<th scope="col">Eliminar</th>
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
						<label>Nombre:</label> <input type="text" class="form-control"
							id="save_nombres"> <label>Apellidos:</label> <input
							type="text" class="form-control" id="save_apellidos"> <label>DNI:</label>
						<input type="text" class="form-control" id="save_dni"> <label>Correo:</label>
						<input type="text" class="form-control" id="save_email">
						<label>Usuario :</label> <input type="text" class="form-control"
							id="save_nom_usuario"> <label>Clave:</label> <input
							type="text" class="form-control" id="save_clave"> <label>Telefono:</label>
						<input type="text" class="form-control" id="save_telefono">
						<label>Direccion:</label> <input type="text" class="form-control"
							id="save_direccion">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<input type="button" value="Enviar" onclick="save()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>
	<!-- modificar -->
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

						<label>Nombres:</label> <input type="text" class="form-control"
							id="edit_nombres"> <label>Apellidos:</label> <input
							type="text" class="form-control" id="edit_apellidos"> <label>DNI:</label>
						<input type="text" class="form-control" id="edit_dni"> <label>Correo:</label>
						<input type="text" class="form-control" id="edit_email">
						<label>Usuario :</label> <input type="text" class="form-control"
							id="edit_nom_usuario"> <label>Clave:</label> <input
							type="text" class="form-control" id="edit_clave"> <label>Telefono:</label>
						<input type="text" class="form-control" id="edit_telefono">
						<label>Direccion:</label> <input type="text" class="form-control"
							id="edit_direccion"> <input type="hidden"
							id="edit_idusuario">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<input type="button" value="Enviar" onclick="actualizar()"
						class="btn btn-primary">
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/usuarioScript.js"></script>
</body>
</html>