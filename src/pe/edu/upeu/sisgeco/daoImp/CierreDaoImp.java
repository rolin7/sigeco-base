package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.sisgeco.dao.CierreCajaDAO;
import pe.edu.upeu.sisgeco.entity.CierreCaja;

@Repository
@Qualifier("CierreCajaDAO")
public class CierreDaoImp implements CierreCajaDAO{
	
	@Autowired
	JdbcTemplate jt;

	@Override
	public void create(CierreCaja cc) {
		// TODO Auto-generated method stub
		String sql = "{CALL CERRAR(?,?,?,?)}";
		jt.update(sql,cc.getFecha_inicio(),cc.getFecha_termino(),cc.getMonto(),cc.getIdusuario());
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
		return jt.queryForList("SELECT * FROM cierre_caja");
	}
	
	
}
