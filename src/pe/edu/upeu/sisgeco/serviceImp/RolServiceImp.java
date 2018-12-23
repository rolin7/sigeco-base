package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.RolDAO;
import pe.edu.upeu.sisgeco.entity.Rol;
import pe.edu.upeu.sisgeco.service.RolService;
@Service
public class RolServiceImp implements RolService{
	@Autowired
	RolDAO rd;
	
	
	@Override
	public void create(Rol r) {
	rd.create(r);
	}

	@Override
	public void update(Rol r) {
	rd.update(r);
	}

	@Override
	public void delete(int id) {
	rd.delete(id);
	}

	@Override
	public List<Map<String, Object>> read(int id) {
	return rd.read(id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		return rd.readAll();
	}

}
