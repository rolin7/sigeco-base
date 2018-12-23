package pe.edu.upeu.sisgeco.dao;

import java.util.List;
import java.util.Map;

import pe.edu.upeu.sisgeco.entity.Cliente;

public interface ClienteDAO {

public void create (Cliente c);
public void update(Cliente c);
public void delete(int id);
public List<Map<String, Object>> read(int id);
public List<Map<String, Object>> validar(int dni);
public List<Map<String, Object>> readAll();
}
