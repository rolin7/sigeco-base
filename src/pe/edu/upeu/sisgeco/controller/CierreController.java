package pe.edu.upeu.sisgeco.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.entity.CierreCaja;
import pe.edu.upeu.sisgeco.service.CierreCajaService;



@Controller
public class CierreController {
    
	@Autowired
	CierreCajaService cierr;
	Gson g = new Gson();
	
	@GetMapping("/listaCierre")
	public @ResponseBody String listarUsuario() {
		
		return g.toJson(cierr.readAll());
	}	
	
	
	@PostMapping("/quieroCerrar")
	public @ResponseBody String save(HttpServletRequest request) {
		cierr.create(new CierreCaja( 
				request.getParameter("f1"), 
				request.getParameter("f2"),
			Integer.parseInt(request.getParameter("monto")),
			Integer.parseInt(request.getParameter("us"))
				));
//		JOptionPane.showMessageDialog(null, request.getParameter("nombre"));
		
		return "1";

	}
	
	
	
	
}
