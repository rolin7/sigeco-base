$(document).ready(function(){
	listarCliente();
});


function listarCliente(){	
	$.get("listaCliente",function(data){
		var d = JSON.parse(data)
		var j = 1;
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idcliente+"</td><td>"+j+"</td><td>"+d[i].nombres+"</td><td>"+d[i].apellidos+"</td><td>"+d[i].DNI+"</td><td>"+d[i].email+"</td><td>"+d[i].empresa+"</td><td>"+d[i].direccion+"</td><td>"+d[i].telefono+"</td><td>" +
			"<a href='#' onclick='modificar("+d[i].idcliente+")'><i class='fa fa-pencil' aria-hidden='true' id='c2'></i></a></td>"+
			"<td><a href='#' onclick='eliminar("+d[i].idcliente+")'><i class='fa fa-trash-o' aria-hidden='true' id='c3'></i></a></td></tr>");
		    j++;
			}
			 $('#tablita tr > *:nth-child(1)').hide();
	});	
	}

$("#btn_validar").click(function() {
	var dni = $("#save_dni").val();
	alert(dni);
	$.post('ValidarCliente',{dni:dni}, function(data){
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

function save(){
	var nombres = $("#save_nombres").val();
	var apellidos = $("#save_apellidos").val();
	var dni = $("#save_dni").val();
	var email = $("#save_email").val();
	var empresa = $("#save_empresa").val();
	var direccion = $("#save_direccion").val();
	var telefono = $("#save_telefono").val();
	$.post('saveCliente',{nombres:nombres,
				apellidos:apellidos, 
			    dni:dni,
			    email:email,
				empresa:empresa,
				direccion:direccion,
				telefono:telefono
				}, function(data){
					alert(data);
		$("#exampleModal").modal("hide");
		listarCliente();
		$("#save_nombres").val(" ");
		 $("#save_apellidos").val(" ");
		 $("#save_dni").val(" ");
		 $("#save_email").val(" ");
		 $("#save_empresa").val(" ");
		 $("#save_direccion").val(" ");
		 $("#save_telefono").val(" ");
	});
}(jQuery);



function modificar(id){
	$.get('modificarCliente',{id:id},function(data){
		var d = JSON.parse(data)
		 $("#edit_idcliente").val(d[0].idcliente);
		 $("#edit_nombres").val(d[0].nombres);
		 $("#edit_apellidos").val(d[0].apellidos);
		 $("#edit_dni").val(d[0].DNI);
		 $("#edit_email").val(d[0].email);
		 $("#edit_empresa").val(d[0].empresa);
		 $("#edit_direccion").val(d[0].direccion);
		 $("#edit_telefono").val(d[0].telefono);
		 $("#modificarModal").modal("show");
	});
}



function actualizar(){
	var id = $("#edit_idcliente").val();
	var nombres = $("#edit_nombres").val();
	var apellidos= $("#edit_apellidos").val();
	var dni= $("#edit_dni").val();
	var email= $("#edit_email").val();
	var empresa= $("#edit_empresa").val();
	var direccion= $("#edit_direccion").val();
	var telefono= $("#edit_telefono").val();
	$.post('actualizarCliente',{
		idcliente:id,
		nombres:nombres,
		apellidos:apellidos, 
		DNI:dni, 
		email:email, 
		empresa:empresa,
		direccion:direccion,
		telefono:telefono
		},function(data){
		$("#modificarModal").modal("hide");
		listarCliente();
	});
}(jQuery);



function eliminar(id){
	$.get('eliminarCliente',{id:id},function(){
		listarCliente();
	});
}

