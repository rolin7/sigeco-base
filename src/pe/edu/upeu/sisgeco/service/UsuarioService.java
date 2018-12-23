package pe.edu.upeu.sisgeco.service;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.Usuario;



public interface UsuarioService {
	public List<Map<String, Object>> validar(String user, String clave);
	public void create(Usuario r);
	public void update(Usuario r);
	public void delete(int id);
	public List<Map<String, Object>> read(int id);
	public List<Map<String,Object>> readAll();
	public Map<String,Object> Validar(String User, String Pass);
}
