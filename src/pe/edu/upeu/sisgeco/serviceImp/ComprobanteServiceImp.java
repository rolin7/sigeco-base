package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.ComprobanteDAO;
import pe.edu.upeu.sisgeco.entity.Comprobante;
import pe.edu.upeu.sisgeco.service.ComprobanteService;
@Service
public class ComprobanteServiceImp implements ComprobanteService {
	@Autowired
	ComprobanteDAO cod;
	
	@Override
	public void create(Comprobante co) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> create_and_list(Comprobante co) {
		// TODO Auto-generated method stub
		return cod.create_and_list(co);
	}

	@Override
	public void update(Comprobante co) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> readAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> read_usuario(int idticket) {
		// TODO Auto-generated method stub
		return cod.read_usuario(idticket);
	}

}
