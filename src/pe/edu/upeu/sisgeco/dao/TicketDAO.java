package pe.edu.upeu.sisgeco.dao;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.Ticket;

public interface TicketDAO {
	public void create (Ticket t);
	public void create2 (Ticket t);
	public void update(Ticket t);
	public void update_monto(Ticket t);
	public List<Map<String, Object>> read_fecha(int id);
	public void delete(int id);
	public List<Map<String, Object>> read(int id);
	public List<Map<String, Object>> read_description(int id);
	public List<Map<String, Object>> readAll();
	public List<Map<String, Object>> readAll2();
	public List<Map<String, Object>> read_vehiculo();
	public List<Map<String, Object>> read_cliente(int id);
	public List<Map<String, Object>> read_monto_cierre(String a, String b);
}
