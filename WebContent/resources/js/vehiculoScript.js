$(document).ready(function(){
	listar();
	listarCliente();
	 listarCategoria();
});

function listar(){
	$.get("mandameDatosVehiculo", function(data){
		var d = JSON.parse(data)
		var j =1;
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idvehiculo+"</td><td>"+j+"</td><td>"+d[i].placa+"</td><td>"+d[i].categoria+"</td><td>"+d[i].nombres+" "+d[i].apellidos+"</td><td>"+
			"<a href='#' onclick='modificar("+d[i].idvehiculo+")'><i class='fa fa-pencil' aria-hidden='true' id='c2'></i></a>"+
			"<a href='#' onclick='eliminar("+d[i].idvehiculo+")'><i class='fa fa-trash-o' aria-hidden='true' id='c3'></i></a></td></tr>");
			j++;
			}
		    $('#tablita tr > *:nth-child(1)').hide();
	});
	}

$("#btn_validar").click(function() {
	var dni = $("#save_placa").val();
	alert(dni);
	$.post('validarVehiculo',{dni:dni}, function(data){
				var d = JSON.parse(data)
				 $("#save_idcliente").val(d[0].idcliente);
				 $("#save_nombres").val(d[0].nombres);
				 $("#save_apellidos").val(d[0].apellidos);
				 $("#save_email").val(d[0].email);
				 $("#save_empresa").val(d[0].empresa);
				 $("#save_direccion").val(d[0].direccion);
				 $("#save_telefono").val(d[0].telefono);	
		});
});

function listarCliente(){
	$.get('listarClienteVehiculo', function(data){
		var dat = JSON.parse(data);
		for(var i=0; i<dat.length;i++){
			$("#save_cliente").append("<option value="+dat[i].idcliente+">"+dat[i].nombres+"</option>");
		}
	});
	
}

function listarCategoria(){
	$.get('listaCategoria', function(data){
		var dat = JSON.parse(data);
		for(var i=0; i<dat.length;i++){
			$("#save_categoria").append("<option value="+dat[i].idcategoria+">"+dat[i].categoria+"</option>");
		}
	});
	
}

function save(){
	var placa = $("#save_placa").val();
	var categoria = $("#save_categoria").val();
	var idcliente =$("#save_cliente").val();
	
	$.post('CrearVehiculo',{placa:placa,
				categoria:categoria, 
			    idcliente:idcliente }, function(data){
					alert(data);
		$("#exampleModal").modal("hide");
		listar();
		$("#save_placa").val(" ");
		 $("#save_categoria").val(" ");
		 $("#save_cliente").val(" ");
	});
}

//
function modificar(id) {
	$.get('listarFilaVehiculo',{id:id}, function(data){
		alert(data);
		var d=JSON.parse(data)
		$("#edit_idvehiculo").val(d[0].idvehiculo);
		$("#edit_placa").val(d[0].placa);
		$("#edit_categoria").val(d[0].categoria);
		$("#edit_idcliente").val(d[0].cliente_idcliente);
		 $("#modificarModal").modal("show");
	});
}


function actualizar(){
	var id = $("#edit_idvehiculo").val();
	var placa = $("#edit_placa").val();
	
	$.post('actualizarVehiculo',{id:id,placa:placa },function(data){
		$("#modificarModal").modal("hide");
		listar();
	});
}

function eliminar(id){
	$.get('eliminarVehiculo',{id:id},function(){
		listar();
	});
}

