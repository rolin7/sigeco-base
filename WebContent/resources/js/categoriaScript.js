$(document).ready(function(){
	listar();
});

function listar(){
	$.get("mandameDatosCategoria", function(data){
		var d = JSON.parse(data)
		var j =1;
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idcategoria+"</td><td>"+j+"</td><td>"+d[i].categoria+"</td><td>"+d[i].precio+"</td><td>"+
			"<a href='#' onclick='modificar("+d[i].idcategoria+")'><i class='fa fa-pencil' aria-hidden='true' id='c2'></i></a>"+
			"<a href='#' onclick='eliminar("+d[i].idcategoria+")'><i class='fa fa-trash-o' aria-hidden='true' id='c3'></i></a></td></tr>");
			j++;
			}
		    $('#tablita tr > *:nth-child(1)').hide();
	});
	}

$("#btn_validar").click(function() {
	var categoria = $("#save_categoria").val();
	alert(categoria);
	$.post('validarCategoria',{categoria:categoria}, function(data){
				var d = JSON.parse(data)
				 $("#save_idcategoria").val(d[0].idcategoria);
				 $("#save_categoria").val(d[0].categoria);
				 $("#save_precio").val(d[0].precio);
				 $("#save_estado").val(d[0].estado);
		});
});

function save(){
	var categoria = $("#save_categoria").val();
	var precio =$("#save_precio").val();
	var estado =$("#save_estado").val();
	
	$.post('crearCategoria',{categoria:categoria,precio:precio,estado:estado}, function(data){
//					alert(data);
		$("#exampleModal").modal("hide");
		listar();
		$("#save_categoria").val(" ");
		$("#save_precio").val(" ");
		$("#save_estado").val(" ");
		$("#save_idcategoria").val(" ");
	});
}


function modificar(id) {
	$.get('listarFilaCategoria',{id:id}, function(data){
//		alert(data);
		var d=JSON.parse(data)
		$("#edit_idcategoria").val(d[0].idcategoria);
		$("#edit_categoria").val(d[0].categoria);
		$("#edit_precio").val(d[0].precio);
		$("#edit_estado").val(d[0].estado);
	    $("#modificarModal").modal("show");
	});
}


function actualizar(){
	var id = $("#edit_idcategoria").val();
	var categoria = $("#edit_categoria").val();
	var precio = $("#edit_precio").val();
	var estado = $("#edit_estado").val();
	
	$.post('actualizarCategoria',{id:id,categoria:categoria, precio:precio, estado:estado},function(data){
		$("#modificarModal").modal("hide");
		listar();
	});
}

function eliminar(id){
	$.get('eliminarCategoria',{id:id},function(){
		listar();
	});
}

