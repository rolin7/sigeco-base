package pe.edu.upeu.sisgeco.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.entity.Rol;
import pe.edu.upeu.sisgeco.service.RolService;

@Controller
public class RolController {
	@Autowired
	RolService rser;
	Gson g = new Gson();
	
	
	@GetMapping("/quieroListarDatos")
	public @ResponseBody String listar() {
		return g.toJson(rser.readAll());
	}
	
	
	@PostMapping("/quieroGuardarDatos")
	public @ResponseBody String guardar (HttpServletRequest request) {
		rser.create(new Rol(
				request.getParameter("nombre"),
				request.getParameter("estado")));
		return "1";
	}
	
	
	
	@GetMapping("/quieroListarFila")
	public @ResponseBody String modificar(HttpServletRequest request) {
     return g.toJson(rser.read(Integer.parseInt(request.getParameter("id"))));
     }
	
    
	@PostMapping("/quieroActualizarFila")
    public @ResponseBody String actualizar(HttpServletRequest request) {
		  rser.update(new Rol(
				  Integer.parseInt(request.getParameter("idrol")),
				  request.getParameter("nombrerol"),
				  request.getParameter("estado")));
		  return "1";
	}	
	
	@GetMapping("/quieroEliminarFila")
	public @ResponseBody String eliminar(HttpServletRequest request)
	{
		rser.delete(Integer.parseInt(request.getParameter("id")));
	return "1";
	}
	
	
}