package pe.edu.upeu.sisgeco.service;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.CierreCaja;

public interface CierreCajaService {
	public void create (CierreCaja cc);
	public void update (CierreCaja cc);
	public void delete(int id);
	public List<Map<String, Object>> calcular_monto(String f1, String f2);
	public List<Map<String, Object>> readAll();
}
