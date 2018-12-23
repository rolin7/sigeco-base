package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.sisgeco.dao.TicketDAO;
import pe.edu.upeu.sisgeco.entity.Ticket;

@Repository
@Qualifier("TicketDAO")
public class TicketDaoImp implements TicketDAO {
	@Autowired
	JdbcTemplate jt;

	@Override
	public void create(Ticket t) {
		String sql = "{CALL TIC(?,?)}";
		jt.update(sql,t.getEstado(),t.getIdvehiculo());
	}

	@Override
	public void update(Ticket t) {
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		 String sql = "SELECT c.nombres, c.apellidos, c.DNI, v.placa, ca.categoria, t.fecha_Ingreso, t.Estado FROM cliente c, vehiculo v, ticket t, categoria ca WHERE t.idticket=29 AND v.cliente_idcliente=c.idcliente AND t.vehiculo_idvehiculo=v.idvehiculo AND ca.idcategoria=v.categoria_idcategoria";
			return jt.queryForList(sql, id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		// Solo Fecha    de Ingreso
		return jt.queryForList("SELECT t.idticket, t.fecha_Ingreso, c.categoria, c.precio, v.placa FROM ticket t, vehiculo v, categoria c WHERE v.categoria_idcategoria=c.idcategoria AND t.vehiculo_idvehiculo=v.idvehiculo AND t.fecha_salida IS NULL ORDER BY fecha_Ingreso DESC");
	}

	@Override
	public List<Map<String, Object>> read_vehiculo() {
		return jt.queryForList("SELECT v.idvehiculo, v.placa, c.categoria FROM vehiculo v, categoria c WHERE v.categoria_idcategoria = c.idcategoria");
	}

	@Override
	public void create2(Ticket t) {
		 String sql="UPDATE ticket SET fecha_Ingreso=?,fecha_salida=?,monto=?, Estado=?, vehiculo_idvehiculo=? WHERE idticket=?";
		    jt.update(sql,t.getFecha_Ingreso(),t.getFecha_salida(),t.getMonto(),t.getEstado(),t.getIdvehiculo(),t.getIdticket());
	}

	
	@Override
	public List<Map<String, Object>> read_cliente(int id) {
		String sql="SELECT c.nombres, c.apellidos, c.DNI FROM cliente c, vehiculo v  WHERE idvehiculo=? AND v.cliente_idcliente=c.idcliente ";
		return jt.queryForList(sql,id);
	}

	@Override
	public List<Map<String, Object>> readAll2() {
		// listamos con fecha de salida y monto
	return jt.queryForList("SELECT t.idticket, t.fecha_Ingreso, t.fecha_salida, t.monto_total, c.categoria, c.precio, v.placa FROM ticket t, vehiculo v, categoria c WHERE v.categoria_idcategoria=c.idcategoria AND t.vehiculo_idvehiculo=v.idvehiculo AND t.fecha_salida IS NOT NULL ORDER BY fecha_salida ASC");

	}


	@Override
	public void update_monto(Ticket t) {
		// TODO Auto-generated method stub
		String sql = "UPDATE ticket SET monto_total =?  WHERE idticket=?;";
		jt.update(sql,t.getMonto(),t.getIdticket());
	}

	@Override
	public List<Map<String, Object>> read_fecha(int id) {
		// TODO Auto-generated method stub
		String sql = "{CALL LOO_DATE(?)}";
		return jt.queryForList(sql,id);
	}

	@Override
	public List<Map<String, Object>> read_description(int id) {
		// TODO Auto-generated method stub
		 String sql = "{CALL IMP_TICK(?)}";
			return jt.queryForList(sql, id);
	}

	@Override
	public List<Map<String, Object>> read_monto_cierre(String a, String b) {
		// TODO Auto-generated method stub
		 String sql = "{CALL MONT_CIERRE(?,?)}";
			return jt.queryForList(sql, a,b);
	}
	
}
