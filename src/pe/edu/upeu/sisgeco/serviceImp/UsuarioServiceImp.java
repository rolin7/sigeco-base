package pe.edu.upeu.sisgeco.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.sisgeco.dao.UsuarioDAO;
import pe.edu.upeu.sisgeco.entity.Usuario;
import pe.edu.upeu.sisgeco.service.UsuarioService;



@Service
public class UsuarioServiceImp implements UsuarioService{
@Autowired
UsuarioDAO us;

@Override
public List<Map<String, Object>> validar(String user, String clave) {
	return us.validar(user, clave);
}

@Override
public void create(Usuario r) {
	us.create(r);
	
}

@Override
public void update(Usuario r) {
	us.update(r);
}

@Override
public void delete(int id) {
	us.delete(id);
	
}

@Override
public List<Map<String, Object>> read(int id) {
	return us.read(id);
}

@Override
public List<Map<String, Object>> readAll() {
	return us.readAll();
}

@Override
public Map<String, Object> Validar(String User, String Pass) {
	return us.Validar(User, Pass);
}



}
