package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.sisgeco.dao.RolDAO;
import pe.edu.upeu.sisgeco.entity.Rol;
@Repository
@Qualifier("RolDAO")
public class RolDaoImp implements RolDAO {
    @Autowired
    JdbcTemplate jt;
    
	@Override
	public void create(Rol r) {
	String sql = "INSERT INTO rol (idrol, nombre, estado) VALUES (?,?,?)";
	jt.update(sql,r.getIdrol(),r.getNombre(), r.getEstado());
	}

	@Override
	public void update(Rol r) {
		String sql="UPDATE rol SET nombre = ? , estado= ? WHERE idrol=?";
		jt.update(sql,r.getNombre(), r.getEstado(), r.getIdrol());
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE from rol WHERE idrol=?";
		jt.update(sql,id);
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		String sql = "SELECT * FROM rol WHERE idrol=?";
		return jt.queryForList(sql,id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		return jt.queryForList("SELECT * FROM rol");
	}

}
