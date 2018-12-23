$(document).ready(function(){
	listar();
});

function listar(){	
	$.post("listaTicket2",function(data){
			var d = JSON.parse(data)
			var j = 1; 
			$("#tablita").find("tr:gt(0)").remove();
			for(var i= 0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idticket+"</td><td>"+j+"</td><td>"+d[i].fecha_Ingreso+"</td><td>"+d[i].fecha_salida+"</td><td>"+d[i].precio+"</td><td>"+d[i].placa+"</td><td>"+d[i].categoria+"</td><td>"+d[i].monto_total+"</td><td>"+
			"<input href='#' type='button' class='btn btn-danger' value='Finalizado' onclick='estado("+d[i].idticket+")' id='save_button'></td></tr>");
			j++;
			} 
			 $('#tablita tr > *:nth-child(1)').hide();
	});
	
	
}