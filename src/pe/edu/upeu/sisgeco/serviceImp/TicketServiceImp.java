package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.TicketDAO;
import pe.edu.upeu.sisgeco.entity.Ticket;
import pe.edu.upeu.sisgeco.service.TicketService;

@Service
public class TicketServiceImp implements TicketService {
	@Autowired
	TicketDAO td;

	@Override
	public void create(Ticket t) {
		td.create(t);
	}

	@Override
	public void update(Ticket t) {
		td.update(t);
	}

	@Override
	public void delete(int id) {
		td.delete(id);
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		return td.read(id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		return td.readAll();
	}

	@Override
	public List<Map<String, Object>> read_vehiculo() {
		return td.read_vehiculo();
	}

	@Override
	public void create2(Ticket t) {
		td.create2(t);
		
	}


	@Override
	public List<Map<String, Object>> read_cliente(int id) {
		return td.read_cliente(id);
	}

	@Override
	public List<Map<String, Object>> readAll2() {
		// TODO Auto-generated method stub
		return td.readAll2();
	}

	@Override
	public void update_monto(Ticket t) {
		// TODO Auto-generated method stub
		td.update_monto(t);
	}

	@Override
	public List<Map<String, Object>> read_fecha(int id) {
		// TODO Auto-generated method stub
		return td.read_fecha(id);
	}

	@Override
	public List<Map<String, Object>> read_description(int id) {
		// TODO Auto-generated method stub
		return td.read_description(id);
	}

	@Override
	public List<Map<String, Object>> read_monto_cierre(String a, String b) {
		// TODO Auto-generated method stub
		return td.read_monto_cierre(a, b);
	}
	
}
