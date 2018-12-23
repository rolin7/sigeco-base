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

import pe.edu.upeu.sisgeco.entity.Ticket;
import pe.edu.upeu.sisgeco.service.TicketService;

@Controller
public class TicketController {
	@Autowired
	TicketService tickserv;
	Gson g = new Gson();

	@RequestMapping(value = "/listaTicket", method = RequestMethod.POST)
	public @ResponseBody String listar() {

		return g.toJson(tickserv.readAll());
	}
	
	@RequestMapping(value = "/listaTicket2", method = RequestMethod.POST)
	public @ResponseBody String listaAll2() {

		return g.toJson(tickserv.readAll2());
	}

	@GetMapping("/listarTicketVehiculo")
	public @ResponseBody String listar2() {
		return g.toJson(tickserv.read_vehiculo());

	}

	@GetMapping("/listarClienteTicket")
	public @ResponseBody String listar3(HttpServletRequest request) {
		return g.toJson(tickserv.read_cliente(Integer.parseInt(request.getParameter("id"))));

	}

	@GetMapping("/listarFilaTicket")
	public @ResponseBody String listarFila(HttpServletRequest request) {
		return g.toJson(tickserv.read(Integer.parseInt(request.getParameter("id"))));

	}
	
	@PostMapping("/saveTicket")
	public @ResponseBody String save(HttpServletRequest request) {
		tickserv.create(new Ticket( 
								 request.getParameter("estado"),
				Integer.parseInt(request.getParameter("idvehiculo"))));
		
		return "1";
	}
	

	@PostMapping(value = "/quieroFechas")
	public @ResponseBody String list(HttpServletRequest request) {
		return g.toJson(tickserv.read_fecha(Integer.parseInt(request.getParameter("id"))));
	}
	
	@PostMapping("/quieroFinalizar")
	public @ResponseBody String actualizar(HttpServletRequest request) {	
		tickserv.update_monto(new Ticket(
				Integer.parseInt(request.getParameter("id")),
				Integer.parseInt(request.getParameter("monto"))));
		return "1";
			}
		
	
	@GetMapping("/emitirTicket")
	public @ResponseBody String listarDescripcion(HttpServletRequest request) {
		return g.toJson(tickserv.read_description(Integer.parseInt(request.getParameter("id"))));

	}
	
	@GetMapping("/quieroMontoFechas")
	public @ResponseBody String lista_monto_ci(HttpServletRequest request) {
		return g.toJson(tickserv.read_monto_cierre(
				request.getParameter("fecha_init"),
				request.getParameter("fecha_fin")
				));

	}
}
