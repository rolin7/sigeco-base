package pe.edu.upeu.sisgeco.dao;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.CierreCaja;


public interface CierreCajaDAO {
	public void create (CierreCaja cc);
	public void update (CierreCaja cc);
	public void delete(int id);
	public List<Map<String, Object>> calcular_monto(String f1, String f2);
	public List<Map<String, Object>> readAll();
}
