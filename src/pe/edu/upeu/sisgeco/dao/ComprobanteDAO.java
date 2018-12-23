package pe.edu.upeu.sisgeco.dao;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.Comprobante;

public interface ComprobanteDAO {
	public void create (Comprobante co);
	public List<Map<String, Object>> create_and_list (Comprobante co);
	public void update (Comprobante co);
	public void delete(int id);
	public List<Map<String, Object>> read(int id);
	public List<Map<String, Object>> read_usuario(int idticket);
	public List<Map<String, Object>> readAll();
}
