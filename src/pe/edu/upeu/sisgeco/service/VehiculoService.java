package pe.edu.upeu.sisgeco.service;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.Vehiculo;

public interface VehiculoService {
	public void create (Vehiculo v);
	public void update(Vehiculo v);
	public void delete(int id);
	public List<Map<String, Object>> read(int id);
	public List<Map<String, Object>> read_cliente();
	public List<Map<String, Object>> read_categoria();
	public List<Map<String, Object>> readAll();
}
