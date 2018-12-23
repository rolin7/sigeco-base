$(document).ready(function(){
	listarUsuario();
    
});

function listarUsuario(){		
	$.get("listaUsuario",function(data){
		//alert(data);
		var d = JSON.parse(data)
		var j=1;
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idusuario+"</td><td>"+j+"</td><td>"+d[i].nombres+"</td><td>"+d[i].apellidos+"</td><td>"+d[i].DNI+"</td><td>"+d[i].email+"</td><td>"+d[i].nom_usuario+"</td><td>"+d[i].clave+"</td><td>"+d[i].telefono+"</td><td>"+d[i].direccion+"</td><td>" +
			"<a href='#' onclick='modificar("+d[i].idusuario+")'><i class='fa fa-pencil' aria-hidden='true' id='c2'></i></a></td>"+
			"<td><a href='#' onclick='eliminar("+d[i].idusuario+")'><i class='fa fa-trash-o' aria-hidden='true' id='c3'></i></a></td></tr>");
		j++;
			}
			 $('#tablita tr > *:nth-child(1)').hide();
	});	
	}

function save(){
	var nombres = $("#save_nombres").val();
	var apellidos = $("#save_apellidos").val();
	var dni = $("#save_dni").val();
	var email = $("#save_email").val();
	var nom_usuario = $("#save_nom_usuario").val();
	var clave = $("#save_clave").val();
	var telefono = $("#save_telefono").val();
	var direccion = $("#save_direccion").val();
	$.post('saveUsuario',{nombres:nombres,
				apellidos:apellidos, 
			    dni:dni,
			    email:email,
				nom_usuario:nom_usuario,
				clave:clave,
				telefono:telefono,
				direccion:direccion
				}, function(data){
		$("#exampleModal").modal("hide");
		listarUsuario();
		$("#save_nombres").val(" ");
		 $("#save_apellidos").val(" ");
		 $("#save_dni").val(" ");
		 $("#save_email").val(" ");
		 $("#save_nom_usuario").val(" ");
		 $("#save_clave").val(" ");
		 $("#save_telefono").val(" ");
		 $("#save_direccion").val(" ");
	});
}(jQuery);

function modificar(id){
	$.get('modificarUsuario',{id:id},function(data){
		var d = JSON.parse(data)
		 $("#edit_idusuario").val(d[0].idusuario);
		 $("#edit_nombres").val(d[0].nombres);
		 $("#edit_apellidos").val(d[0].apellidos);
		 $("#edit_dni").val(d[0].DNI);
		 $("#edit_email").val(d[0].email);
		 $("#edit_nom_usuario").val(d[0].nom_usuario);
		 $("#edit_clave").val(d[0].clave);
		 $("#edit_telefono").val(d[0].telefono);
		 $("#edit_direccion").val(d[0].direccion);
		 $("#modificarModal").modal("show");
	});
}
function actualizar(){
	var id = $("#edit_idusuario").val();
	var nombres = $("#edit_nombres").val();
	var apellidos= $("#edit_apellidos").val();
	var dni= $("#edit_dni").val();
	var email= $("#edit_email").val();
	var nom_usuario= $("#edit_nom_usuario").val();
	var clave= $("#edit_clave").val();
	var telefono= $("#edit_telefono").val();
	var direccion= $("#edit_direccion").val();

	$.post('actualizarUsuario',{
		idusuario:id,
		nombres:nombres,
		apellidos:apellidos, 
		DNI:dni, 
		email:email, 
		nom_usuario:nom_usuario,
		clave:clave,
		telefono:telefono,
		direccion:direccion
		},function(data){
		$("#modificarModal").modal("hide");
		listarUsuario();
	});
}
function eliminar(id){
	$.get('eliminarUsuario',{id:id},function(){
		listarUsuario();
	});
}

