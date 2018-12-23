package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.sisgeco.dao.ClienteDAO;
import pe.edu.upeu.sisgeco.entity.Cliente;

@Repository
@Qualifier("ClienteDAO")
public class ClienteDaoImp implements ClienteDAO {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public void create(Cliente c) {
		// Esto nos permitira insertar un nuevo cliente
		String sql = "INSERT INTO cliente (idcliente, nombres, apellidos, DNI, email, empresa, direccion, telefono) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	    jt.update(sql,c.getIdcliente(),c.getNombres(),c.getApellidos(),c.getDNI(),c.getEmail(),c.getEmpresa(),c.getDireccion(),c.getTelefono());
	}

	@Override
	public void update(Cliente c) {
		// Modificar un cliente
		String sql="UPDATE cliente SET nombres=?, apellidos=?, DNI=?, email=?, empresa=?, direccion=?, telefono=? WHERE idcliente=?";
		jt.update(sql,c.getNombres(),c.getApellidos(),c.getDNI(),c.getEmail(),c.getEmpresa(),c.getDireccion(),c.getTelefono(),c.getIdcliente());
	}

	@Override
	public void delete(int id) {
		// metodo para eliminar un cliente
		String sql = "DELETE from cliente WHERE idcliente=?";
        jt.update(sql,id);
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		// listar los datos de acuerdo al id, en el formulario de modificar
		String sql ="SELECT * FROM cliente WHERE idcliente=?";
		return jt.queryForList(sql,id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		// para el metodo listar datos del cliente
		return jt.queryForList("SELECT * FROM cliente");
	}

	@Override
	public List<Map<String, Object>> validar(int dni) {
		// validar su existencia en la bd
		String sql ="SELECT * FROM cliente WHERE DNI=?";
		return jt.queryForList(sql,dni);
	}

}
