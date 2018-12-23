package pe.edu.upeu.sisgeco.service;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.Rol;

public interface RolService {
	
	public void create (Rol r);
	public void update (Rol r);
	public void delete (int id);
	public List<Map<String, Object>> read(int id);
	public List<Map<String, Object>> readAll();
}
