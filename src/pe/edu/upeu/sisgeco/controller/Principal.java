package pe.edu.upeu.sisgeco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Principal {

	@RequestMapping("/user")
	public String us() {
		return "usuario";
	}
	
	@RequestMapping("/client")
	public String cli() {
		return "cliente";
	}
	
	@RequestMapping("/role")
	public String ro() {
		return "rol";
	}
	
	@RequestMapping("/vehicle")
	public String vehi() {
		return "vehiculo";
	}
	
	@RequestMapping("/tickecito")
	public String tick() {
		return "ticket";
	}
	
	@RequestMapping("/exit")
	public String exit() {
		return "salida";
	}
//	@RequestMapping("/comprobant")
//	public String hol() {
//	return "comprobante";
//	}
	
	@RequestMapping("/reporte_ticket")
	public String holde() {
	return "reporte_ticket";
	}
	

	@RequestMapping("/box_close")
	public String close() {
	return "cierre";
	}
}
