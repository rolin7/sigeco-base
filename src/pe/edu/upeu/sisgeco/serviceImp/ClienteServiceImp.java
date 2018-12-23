package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.ClienteDAO;
import pe.edu.upeu.sisgeco.entity.Cliente;
import pe.edu.upeu.sisgeco.service.ClienteService;

@Service
public class ClienteServiceImp implements ClienteService {
 
	@Autowired
	ClienteDAO cd;
	
	
	@Override
	public void create(Cliente c) {
		cd.create(c);
	}

	@Override
	public void update(Cliente c) {
       cd.update(c);
	}

	@Override
	public void delete(int id) {
       cd.delete(id);
		
	}

	@Override
	public List<Map<String, Object>> read(int id) {
	return cd.read(id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		return cd.readAll();
	}

	@Override
	public List<Map<String, Object>> validar(int dni) {
		// TODO Auto-generated method stub
		return cd.validar(dni);
	}

}
