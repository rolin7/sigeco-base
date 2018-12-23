$(document).ready(function(){
	listar();
	listarVehiculo();
	$('#contenedor_boleta').hide();
});

function listar(){	
	$.post("listaTicket2",function(data){
			var d = JSON.parse(data)
			var j = 1; 
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idticket+"</td><td>"+j+"</td><td>"+d[i].fecha_Ingreso+"</td><td>"+d[i].fecha_salida+"</td><td>"+d[i].precio+"</td><td>"+d[i].placa+"</td><td>"+d[i].categoria+"</td><td>"+d[i].monto_total+"</td><td>"+
			"<input href='#' type='button' class='btn btn-danger ' value='Finalizado' onclick='estado("+d[i].idticket+")' id='save_button'></td>"+
			"<td><input href='#' type='button' class='btn btn-primary' value='boleta' onclick='abrir_boleta("+d[i].idticket+")' id='save_boleta'>"+
			"<input href='#' type='button' class='btn btn-warning' value='factura' onclick='abrir_factura("+d[i].idticket+")' id='save_factura'></td></tr>");
			j++;
			} 
			 $('#tablita tr > *:nth-child(1)').hide();
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


function abrir_boleta(id){
	$("#save_idticket").val(id);
	alert(id);
	$("#comprobanteModal").modal("show");
}

function abrir_factura(id){
	$("#save_idticketf").val(id);
	alert(id);
	$("#facturaModal").modal("show");
}
