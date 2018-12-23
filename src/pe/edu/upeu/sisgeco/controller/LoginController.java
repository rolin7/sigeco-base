package pe.edu.upeu.sisgeco.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import pe.edu.upeu.sisgeco.service.UsuarioService;

@Controller
@ComponentScan("pe.edu.upeu.sisgeco")
public class LoginController {
	@Autowired
	private UsuarioService ud;

	Map<String, Object> map = new HashMap<>();
	Gson gson = new Gson();

	@RequestMapping("/")
	public String main(HttpServletRequest request, HttpServletResponse respons) {
//		System.out.println("soy el primero que se ejecuta aqui");
		return "login";
	}

	@RequestMapping("/principio")
	public String principal(HttpServletRequest request, HttpServletResponse respons) {
//         System.out.println("hola, hey, yo tambien estoy vivo, soy del principal al main.jsp");
		return "main";
	}

	@RequestMapping("/prueba")
	public String prueba(HttpServletRequest request, HttpServletResponse respons) {
		return "prueba";
	}
	

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String user = request.getParameter("user");
		String clave = request.getParameter("clave");
		HttpSession session = request.getSession(true);
//		System.out.println(user);
//		System.out.println(clave);
		int x = 0;
		int op = Integer.parseInt(request.getParameter("op"));
//		System.out.println("estoy dentro de la funcion login del controller" + op);

		try {

			if (op == 1) {
				if (ud.Validar(user, clave) != null) {
					map = ud.Validar(user, clave);
					session.setAttribute("idusuario", map.get("idusuario"));
					session.setAttribute("nombres", map.get("nombres"));
					session.setAttribute("apellidos", map.get("apellidos"));
					session.setAttribute("DNI", map.get("DNI"));
					session.setAttribute("email", map.get("email"));
					session.setAttribute("nom_usuario", map.get("nom_usuario"));
					session.setAttribute("clave", map.get("clave"));
					session.setAttribute("telefono", map.get("telefono"));
					session.setAttribute("direccion", map.get("direccion"));
//					System.out.println("estoy validando es decir soy " + op);

					Map<String, Object> datos = new HashMap<>();

					x = 1;
					datos.put("op", x);
					datos.put("idusuario", map.get("idusuario"));
					datos.put("nombres", map.get("nombres"));
					datos.put("apellidos", map.get("apellidos"));
					datos.put("DNI", map.get("DNI"));
					datos.put("email", map.get("email"));
					datos.put("nom_usuario", map.get("nom_usuario"));
					datos.put("clave", map.get("clave"));
					datos.put("telefono", map.get("telefono"));
					datos.put("direccion", map.get("direccion"));
//    				System.out.println(datos);
//					System.out.println(gson.toJson(datos));
					out.println(gson.toJson(datos));
				}
			} else {
				out.println(0);
			}

		} catch (Exception e) {
			System.out.println("Salto un error no esperado" + e);
		}
	}
}
