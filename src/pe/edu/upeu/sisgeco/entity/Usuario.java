package pe.edu.upeu.sisgeco.entity;

public class Usuario {
	private int idusuario;
	private String nombres;
	private String apellidos;
	private int DNI;
	private String email;
	private String nom_usuario;
	private String clave;
	private String telefono;
	private String direccion;
	
	public Usuario() {
		super();
	}

	public Usuario(int idusuario, String nombres, String apellidos, int dNI, String email, String nom_usuario,
			String clave, String telefono, String direccion) {
		super();
		this.idusuario = idusuario;
		this.nombres = nombres;
		this.apellidos = apellidos;
		DNI = dNI;
		this.email = email;
		this.nom_usuario = nom_usuario;
		this.clave = clave;
		this.telefono = telefono;
		this.direccion = direccion;
	}

	public Usuario(String nombres, String apellidos, int dNI, String email, String nom_usuario, String clave,
			String telefono, String direccion) {
		super();
		this.nombres = nombres;
		this.apellidos = apellidos;
		DNI = dNI;
		this.email = email;
		this.nom_usuario = nom_usuario;
		this.clave = clave;
		this.telefono = telefono;
		this.direccion = direccion;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getDNI() {
		return DNI;
	}

	public void setDNI(int dNI) {
		DNI = dNI;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNom_usuario() {
		return nom_usuario;
	}

	public void setNom_usuario(String nom_usuario) {
		this.nom_usuario = nom_usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	
}
