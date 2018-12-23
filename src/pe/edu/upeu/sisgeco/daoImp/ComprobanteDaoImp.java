package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.sisgeco.dao.ComprobanteDAO;
import pe.edu.upeu.sisgeco.entity.Comprobante;
@Repository
@Qualifier("ComprobanteDAO")
public class ComprobanteDaoImp implements ComprobanteDAO {

	  @Autowired
	  JdbcTemplate jt;
	  
	@Override
	public void create(Comprobante co) {
		// TODO Auto-generated method stub
		
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
	public List<Map<String, Object>> create_and_list(Comprobante co) {
		// TODO Auto-generated method stub
		String sql = "{CALL COMPRO(?,?,?,?,?,?)}";
		 return jt.queryForList(sql,co.getTipo(),co.getRuc(),co.getDescripcion(),co.getLugar(),co.getIdUsuario(),co.getIdTicket());
	}

	@Override
	public List<Map<String, Object>> read_usuario(int idticket) {
		// TODO Auto-generated method stub
		 String sql = "Select * from usuario ";
			return jt.queryForList(sql, idticket);
	}

}
