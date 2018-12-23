$(document).ready(function() {
	listar();
});

function listar(){
	$.get("quieroListarDatos", function(data) {
		var d = JSON.parse(data)
		    $("#tablita").find("tr:gt(0)").remove();
	    	var j=1;
		    for(var i=0; i<d.length;i++){
		    	
		    	$("#tablita").append("<tr><td hidden>"+d[i].idrol+"</td><td>"+j+"</td><td>"+d[i].nombre+"</td><td>"+d[i].estado+"</td><td>"+
		    	"<a href='#' onclick='modificar("+d[i].idrol+")'><i class='fa fa-pencil' aria-hidden='true' id='c2'></i></a>"+
		    	"<a href='#' onclick='eliminar("+d[i].idrol+")'><i class='fa fa-trash-o' aria-hidden='true' id='c3'></i></a></td></tr>");
		    	j++;
		    }
		    $('#tablita tr > *:nth-child(1)').hide();
	});
}



function save(){
	var nombre = $("#save_nombre").val();
	var estado = $("#save_estado").val();
	$.post('quieroGuardarDatos',{ 
		nombre:nombre,
		estado:estado},	
				 function(data){
		$("#exampleModal").modal("hide");
		listar();
	     $("#save_nombre").val("");
	     $("#save_estado").val("");
	});
	
}(jQuery);


function modificar(id){
	$.get('quieroListarFila',{id:id},function(data){
		alert(data);
		var d = JSON.parse(data)
		$("#edit_idrol").val(d[0].idrol);
		$("#edit_nombre").val(d[0].nombre);
		$("#edit_estado").val(d[0].estado);
		$("#modificarModal").modal("show");
	});
}


function actualizar(){
	var id = $("#edit_idrol").val();
	var nombre = $("#edit_nombre").val();
	var estado = $("#edit_estado").val();
	$.post('quieroActualizarFila',{idrol:id,nombrerol:nombre, estado:estado},function(data){
		alert("se ha actualizado correctamente"+data);
		$("#modificarModal").modal("hide");
		listar();
	}); 
}	
	
function eliminar(id){
		$.get('quieroEliminarFila',{id:id},function(){
			listar();
			});
}
