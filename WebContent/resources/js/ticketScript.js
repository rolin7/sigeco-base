$(document).ready(function(){
	listar();
	listarVehiculo();
	$('#contenedor_ticket').hide();
});

function listar(){	
	$.post("listaTicket",function(data){
			var d = JSON.parse(data)
			var j = 1; 
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td id='tablon_id'>"+d[i].idticket+"</td><td>"+j+"</td><td>"+d[i].fecha_Ingreso+"</td><td>"+d[i].placa+"</td><td>"+d[i].categoria+"</td><td>"+
			"<input href='#' type='button' class='btn btn-success btn-xs' value='Finalizar' onclick='finalizar("+d[i].idticket+")' id='save_button'></td>"+
//			"<td><a href='#' onclick='modificar("+d[i].idticket+")'><i class='fa fa-pencil-square' aria-hidden='true' id='c2'></i></a>"+
//			"<a href='#' onclick='eliminar("+d[i].idticket+")'><i class='fa fa-trash-o' aria-hidden='true' id='c3'></i></a></td>"+
			"<td><input href='#' type='button' class='btn btn-info btn-xs' value='Ticket' onclick='generar("+d[i].idticket+")' id='button_tic'></td></tr>");
			j++;
			} 
			 $('#tablita tr > *:nth-child(1)').hide();
//			console.log(tablon_id);
	});	
}



function listarVehiculo(){
	$.get('listarTicketVehiculo', function(data){
		var dat = JSON.parse(data);
		for(var i=0; i<dat.length;i++){
			$("#save_vehiculo").append("<option value="+dat[i].idvehiculo+">"+dat[i].placa+" "+dat[i].categoria+"</option>");
		}
	});
	
}

function listarCliente(){
	var id=$("#save_vehiculo").val();
	$.get('listarClienteTicket',{id:id},function(data){
//		alert(data);
		var d = JSON.parse(data)
		$("#save_cliente").val(d[0].nombres+" "+d[0].apellidos);
		$("#save_dni").val(d[0].DNI);
	});
}


function save(){
	var estado = $("#save_estado").val();
	var idvehiculo = $("#save_vehiculo").val();
//	alert(estado);
//	alert(idvehiculo);
	$.post('saveTicket',{estado:estado, idvehiculo:idvehiculo
				}, function(data){
		$("#exampleModal").modal("hide");
		listar();
		$("#save_vehiculo").val(" ");
		 $("#save_cliente").val(" ");
		 $("#save_dni").val(" ");
		 $("#save_categoria").val(" ");
		 $("#save_estado").val(" ");
	});
}(jQuery);

function modificar(id) {
	$.get('listarFilaTicket',{id:id}, function(data){
//		alert(data);
		var d=JSON.parse(data)
		$("#edit_idticket").val(d[0].idticket);
		$("#edit_placa").val(d[0].placa);
		$("#edit_categoria").val(d[0].categoria);
		$("#edit_cliente").val(d[0].nombres+" "+d[0].apellidos);
		$("#edit_dni").val(d[0].DNI);
		$("#edit_estado").val(d[0].Estado);
		$("#edit_ingreso").val(d[0].fecha_Ingreso);
		 $("#modificarModal").modal("show");
	});
}

function finalizar(idd){
	$.post('quieroFechas',{id:idd},function(data){
		var dat = JSON.parse(data);
		var idtick = dat[0].idticket;
		var inicio = new Date(dat[0].fecha_Ingreso);
		var salida = new Date (dat[0].fecha_salida);
		var precio = dat[0].precio;
		  r = salida-inicio;
		  var dias = Math.floor(r / (1000 * 60 * 60 * 24));
		  var operacion = dias*precio;
		if (operacion===undefined) {
			console.log("ha ocurrido un problema al calcular la operacion"+operacion);
		} else {    
			$.post('quieroFinalizar', {id:idd,monto:operacion},function(data){
				listar();
			});
		}		
	});
}


