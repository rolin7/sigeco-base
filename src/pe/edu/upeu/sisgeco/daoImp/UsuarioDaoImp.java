package pe.edu.upeu.sisgeco.daoImp;

import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import pe.edu.upeu.sisgeco.dao.UsuarioDAO;
import pe.edu.upeu.sisgeco.entity.Usuario;
@Repository
@Qualifier("UsuarioDAO")
public class UsuarioDaoImp implements UsuarioDAO{

	@Autowired
	JdbcTemplate jt;

	@Override
	public List<Map<String, Object>> validar(String user, String clave) {
		 String sql ="select u.idusuario, u.nom_usuario, u.clave, r.idrol, r.nombre from usuario u, rol r, usuario_rol l where l.usuario_idusuario = u.idusuario and l.rol_idrol = r.idrol and u.nom_usuario =? and u.clave=?";
			return jt.queryForList(sql,user,clave);
	}

	@Override
	public void create(Usuario r) {
		String sql = "INSERT INTO usuario (idusuario, nombres, apellidos, DNI, email, nom_usuario, clave, telefono, direccion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jt.update(sql,	r.getIdusuario() , r.getNombres() , r.getApellidos(), r.getDNI(), r.getEmail(), r.getNom_usuario(), r.getClave(), r.getTelefono(), r.getDireccion());
		
	}

	@Override
	public void update(Usuario r) {
		String sql = "UPDATE usuario SET nombres=? , apellidos=? , DNI=?, email=?, nom_usuario=?, clave=?, telefono=?, direccion=? WHERE idusuario=?";
	       jt.update(sql, r.getNombres(), r.getApellidos(), r.getDNI(), r.getEmail(), r.getNom_usuario(), r.getClave(), r.getTelefono(), r.getDireccion(), r.getIdusuario());
		
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE  from usuario WHERE idusuario=?";
		jt.update(sql, id);
		
	}

	@Override
	public List<Map<String, Object>> read(int id) {
		 String sql = "Select * from usuario where idusuario=? ";
			return jt.queryForList(sql, id);
	}

	@Override
	public List<Map<String, Object>> readAll() {
		return jt.queryForList("SELECT * FROM usuario");
	}

	@Override
	public Map<String, Object> Validar(String User, String Pass) {
		// TODO Auto-generated method stub
		String sql ="SELECT * FROM usuario where nom_usuario=? and clave=?";
		return jt.queryForMap(sql,User, Pass);
	}

	

	
	

}
