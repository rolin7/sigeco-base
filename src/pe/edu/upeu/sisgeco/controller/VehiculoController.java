package pe.edu.upeu.sisgeco.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.entity.Vehiculo;
import pe.edu.upeu.sisgeco.service.VehiculoService;

@Controller
public class VehiculoController {
      
	@Autowired
	VehiculoService vehiculoservice;
	Gson g = new Gson();
	
	@GetMapping("/mandameDatosVehiculo")
	public @ResponseBody String listarvehiculo () {
		return g.toJson(vehiculoservice.readAll());
	}
	
	@GetMapping("/listaCategoria")
	public @ResponseBody String listarcategoria () {
		return g.toJson(vehiculoservice.read_categoria());
	}
	
	@GetMapping("/listarClienteVehiculo")
	public @ResponseBody String listarClienteVehiculo () {
		return g.toJson(vehiculoservice.read_cliente());
		
	}
	@PostMapping("/CrearVehiculo")
	public @ResponseBody String CrearVehiculo (HttpServletRequest request) {
		vehiculoservice.create(new Vehiculo(
    			request.getParameter("placa"),
    			Integer.parseInt(request.getParameter("categoria")),
    		Integer.parseInt(request.getParameter("idcliente"))));
    	return "1";
	}
	
	@GetMapping("/listarFilaVehiculo")
	public @ResponseBody String listarVehiculoFila (HttpServletRequest request) {
		return g.toJson(vehiculoservice.read(Integer.parseInt(request.getParameter("id"))));
	}
	
	
	 @PostMapping("/actualizarVehiculo")
	    public @ResponseBody String actualizarVehiculo(HttpServletRequest request) {
	    	vehiculoservice.update(new Vehiculo(
	    			Integer.parseInt(request.getParameter("id")),
	    			request.getParameter("placa")));
	    	return "1";
	    }
	
	 @GetMapping("/eliminarVehiculo")
	 public @ResponseBody String eliminar(HttpServletRequest request) {	
	 	vehiculoservice.delete(Integer.parseInt(request.getParameter("id")));
	 	return "1";
	 }
	
	
}
