package pe.edu.upeu.sisgeco.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.entity.Comprobante;
import pe.edu.upeu.sisgeco.service.ComprobanteService;
@Controller
public class ComprobanteController {
	@Autowired
	ComprobanteService codServ;
	Gson g = new Gson();
	
	@RequestMapping(value = "/emitirComprobante", method = RequestMethod.GET)
	public @ResponseBody String crea_list(HttpServletRequest request) {	
		return g.toJson(codServ.create_and_list(new Comprobante(
				request.getParameter("tipo"),
				Double.parseDouble(request.getParameter("ruc")),
				request.getParameter("descripcion"),
				request.getParameter("lugar"),
				Integer.parseInt(request.getParameter("user")),
				Integer.parseInt(request.getParameter("id")))));
	}
	
	
	
	
	
	
//	
//	@RequestMapping(value = "/emitirFactura", method = RequestMethod.POST)
//	public @ResponseBody String crea_list_fact(HttpServletRequest request) {	
//		return g.toJson(codServ.create(new Comprobante( 
//				Integer.parseInt(request.getParameter("ruc")),
//				request.getParameter("descripcion"),
//				request.getParameter("lugar"),
//				Integer.parseInt(request.getParameter("id")),
//				Integer.parseInt(request.getParameter("user")))));
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@GetMapping("/listarUsuarioComp")
//	public @ResponseBody String list(HttpServletRequest request) {	
//		return g.toJson(codServ.read_usuario(Integer.parseInt(request.getParameter("id")		
//						)));
//	
//	}
//
//	
	
	
}
