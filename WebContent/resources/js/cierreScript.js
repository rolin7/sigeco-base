$(document).ready(function() {
listar();
});

function listar(){		
	$.get("listaCierre",function(data){
//		alert(data);
		var d = JSON.parse(data)
//		console.log(data);
		var j=1;
			$("#tablita").find("tr:gt(0)").remove();
			for(var i=0; i<d.length;i++){
			$("#tablita").append("<tr><td>"+d[i].idcierre_Caja+"</td><td>"+j+"</td><td>"+d[i].Fecha_Inicio+"</td><td>"+d[i].Fecha_Termino+"</td><td>"+d[i].Monto+"</td><td>"+d[i].fecha_actual+"</td><td>" +
			"<input href='#' type='button' class='btn btn-danger ' value='Efectuado'></td>"+
			"</tr>");
			j++;
			}
			 $('#tablita tr > *:nth-child(1)').hide();
	});	
	}

function fechas(){
	alert("holaaaaaaa");
	var fecha_init = $("#date_inicio").val();
	var fecha_fin = $("#date_fin").val();
	
	$.get("quieroMontoFechas",{fecha_init:fecha_init,fecha_fin:fecha_fin},function(data){
		alert(data);
		var d = JSON.parse(data)
		console.log(data);
		$("#monto_total").val(d[0].montoo);
	});
}


function save(){
	var f1 = $("#date_inicio").val();
	var f2 = $("#date_fin").val();
	var monto = $("#monto_total").val();
	var us = 15;
	$.post('quieroCerrar',{ 
		f1:f1,f2:f2,monto:monto,us:us},	
				 function(data){
			alert(data);
		$("#exampleModal").modal("hide");
		listar();
	     $("#date_inicio").val("");
	     $("#date_fin").val("");
	     $("#monto_total").val("");
	});
	
}