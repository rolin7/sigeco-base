package pe.edu.upeu.sisgeco.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.entity.Usuario;
import pe.edu.upeu.sisgeco.service.UsuarioService;

@Controller
public class HomeController {
	@Autowired
	UsuarioService uservice;
	Gson g = new Gson();

@GetMapping("/listaUsuario")
public @ResponseBody String listarUsuario() {
	
	return g.toJson(uservice.readAll());
}	

@PostMapping("/saveUsuario")
public @ResponseBody String save(HttpServletRequest request) {
	uservice.create(new Usuario( 
			request.getParameter("nombres"), 
			request.getParameter("apellidos"),
		Integer.parseInt(request.getParameter("dni")),
			request.getParameter("email"),
			request.getParameter("nom_usuario"),
			request.getParameter("clave"),
			request.getParameter("telefono"),
			request.getParameter("direccion")));
//	JOptionPane.showMessageDialog(null, request.getParameter("nombre"));
	
	return "1";

}
@GetMapping("/modificarUsuario")
public @ResponseBody String modificar(HttpServletRequest request) {	
	return g.toJson(uservice.read(Integer.parseInt(request.getParameter("id")		
					)));
}

@PostMapping("/actualizarUsuario")
public @ResponseBody String actualizar(HttpServletRequest request) {	
	uservice.update(new Usuario(
			Integer.parseInt(request.getParameter("idusuario")),
			request.getParameter("nombres"), 
			request.getParameter("apellidos"),
		Integer.parseInt(request.getParameter("DNI")),
			request.getParameter("email"),
			request.getParameter("nom_usuario"),
			request.getParameter("clave"),
			request.getParameter("telefono"),
			request.getParameter("direccion")));
//	JOptionPane.showMessageDialog(null, request.getParameter("nombre"));
			
	return "1";
}

@GetMapping("/eliminarUsuario")
public @ResponseBody String eliminar(HttpServletRequest request) {	
	uservice.delete(Integer.parseInt(request.getParameter("id")));
	return "1";
}

}


