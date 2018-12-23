package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.VehiculoDAO;
import pe.edu.upeu.sisgeco.entity.Vehiculo;
import pe.edu.upeu.sisgeco.service.VehiculoService;
@Service
public class VehiculoServiceImp implements VehiculoService {

	
	@Autowired
	VehiculoDAO vd;
	
	@Override
	public void create(Vehiculo v) {
		vd.create(v);
	}

	@Override
	public void update(Vehiculo v) {
        vd.update(v);
	}

	@Override
	public void delete(int id) {
		vd.delete(id);
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		// TODO Auto-generated method stub
		return vd.read(id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		// TODO Auto-generated method stub
		return vd.readAll();
	}

	@Override
	public List<Map<String, Object>> read_cliente() {
		// TODO Auto-generated method stub
		return vd.read_cliente();
	}

	@Override
	public List<Map<String, Object>> read_categoria() {
		// TODO Auto-generated method stub
		return vd.read_categoria();
	}

}
