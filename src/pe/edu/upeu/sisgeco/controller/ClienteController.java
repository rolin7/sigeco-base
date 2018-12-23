package pe.edu.upeu.sisgeco.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.entity.Cliente;
import pe.edu.upeu.sisgeco.service.ClienteService;

@Controller
public class ClienteController {
    @Autowired
    ClienteService cservice;
    Gson g = new Gson();
    
    
    @GetMapping("/listaCliente")
    public @ResponseBody String listar() {
    	return g.toJson(cservice.readAll());
    }
      
    
    @PostMapping("/saveCliente")
    public @ResponseBody String save(HttpServletRequest request) {
    	cservice.create(new Cliente(
    			request.getParameter("nombres"),
    			request.getParameter("apellidos"),
    			request.getParameter("dni"),
    			request.getParameter("email"),
    			request.getParameter("empresa"),
    			request.getParameter("direccion"),
    			Integer.parseInt(request.getParameter("telefono"))));
    	return "1";
    }
    
    
    @GetMapping("/modificarCliente")
    public @ResponseBody String modificarCliente(HttpServletRequest request) {
    	return g.toJson(cservice.read(Integer.parseInt(request.getParameter("id"))));
    }
    
    @RequestMapping(value="/ValidarCliente", method = RequestMethod.POST)
    public @ResponseBody String validar(HttpServletRequest request) {
    	return g.toJson(cservice.validar(Integer.parseInt(request.getParameter("dni"))));
    }
 
    @PostMapping("/actualizarCliente")
    public @ResponseBody String actualizar(HttpServletRequest request) {
    	cservice.update(new Cliente(
    			Integer.parseInt(request.getParameter("idcliente")),
    			request.getParameter("nombres"),
    			request.getParameter("apellidos"),
    			request.getParameter("DNI"),
    			request.getParameter("email"),
    			request.getParameter("empresa"),
    			request.getParameter("direccion"),
    			Integer.parseInt(request.getParameter("telefono"))
    			));
    	return "1";
    }
    
    
    @GetMapping("/eliminarCliente")
    public @ResponseBody String eliminar (HttpServletRequest request)
    {
    	cservice.delete(Integer.parseInt(request.getParameter("id")));
    	return "1";
    }
    
    

    
}
