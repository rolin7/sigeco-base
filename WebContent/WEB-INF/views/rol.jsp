<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html lang="es">
<head>
<meta charset="UTF-8">
<title>roles</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrap.min.css"/>
<style type="text/css">
#idr {
	max-width: 300px;
	min-height: 600px;
	margin-left: 300px;
}

#c1 {
	color: green;
	font-size: 20px;
}

#c2 {
	color: orange;
	font-size: 20px;
	margin-right: 12px;
}

#c3 {
	color: black;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="container" id="idr">
		<h3 style="color: #1F618D;">
			<strong>Roles</strong>
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
					<th class="warning" scope="col">Nombre</th>
					<th class="warning" scope="col">Estado</th>
					<th class="warning" scope="col">Operaciones</th>
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
					<h4 class="modal-title" id="exampleModalLabel">Registrar Rol</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Nombre:</label> <input type="text" class="form-control"
							id="save_nombre"> <label>Estado:</label> <input
							type="text" class="form-control" id="save_estado">
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

						<label>Nombre:</label> <input type="text" class="form-control"
							id="edit_nombre"> <label>Estado:</label> <input
							type="text" class="form-control" id="edit_estado"> <input
							type="hidden" id="edit_idrol">

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
	<script type="text/javascript" src="resources/js/rolScript.js"></script>
</body>
</html>