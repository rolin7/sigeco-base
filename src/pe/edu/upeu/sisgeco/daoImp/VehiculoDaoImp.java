package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.sisgeco.dao.VehiculoDAO;
import pe.edu.upeu.sisgeco.entity.Vehiculo;
@Repository
@Qualifier("VehiculoDAO")
public class VehiculoDaoImp implements VehiculoDAO {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public void create(Vehiculo v) {
		String sql = "INSERT INTO vehiculo (idvehiculo, placa, categoria_idcategoria, cliente_idcliente) VALUES (?,?,?,?)";
	    jt.update(sql, v.getIdvehiculo(), v.getPlaca(), v.getIdCategoria(), v.getIdCliente());
	}

	@Override
	public void update(Vehiculo v) {
	    String sql="UPDATE vehiculo SET placa=? WHERE idvehiculo=?";
	    jt.update(sql,v.getPlaca(),v.getIdvehiculo());
	}

	@Override
	public void delete(int id) {
		String sql="DELETE from vehiculo WHERE idvehiculo=?";
		jt.update(sql,id);
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		String sql="select * from vehiculo where idvehiculo=?";
		return jt.queryForList(sql,id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		// TODO Auto-generated method stub
		return jt.queryForList("SELECT v.idvehiculo, v.placa, a.categoria, c.nombres, c.apellidos FROM vehiculo v, cliente c, categoria a WHERE v.cliente_idcliente=c.idcliente AND a.idcategoria=v.categoria_idcategoria");
	}

	@Override
	public List<Map<String, Object>> read_cliente() {
		// TODO Auto-generated method stub
		return jt.queryForList("SELECT c.idcliente, c.nombres FROM cliente c");
	}

	@Override
	public List<Map<String, Object>> read_categoria() {
		// TODO Auto-generated method stub
		return jt.queryForList("SELECT * FROM categoria");
	}

}
