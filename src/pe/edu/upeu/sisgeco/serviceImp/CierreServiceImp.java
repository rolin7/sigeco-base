package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.CierreCajaDAO;
import pe.edu.upeu.sisgeco.entity.CierreCaja;
import pe.edu.upeu.sisgeco.service.CierreCajaService;

@Service
public class CierreServiceImp implements CierreCajaService {
	@Autowired
	CierreCajaDAO ccd;

	@Override
	public void create(CierreCaja cc) {
		// TODO Auto-generated method stub
		ccd.create(cc);
	}

	@Override
	public void update(CierreCaja cc) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> calcular_monto(String f1, String f2) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> readAll() {
		// TODO Auto-generated method stub
		return ccd.readAll();
	}
	
	
}
