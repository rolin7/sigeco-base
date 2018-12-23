package pe.edu.upeu.sisgeco.entity;

public class Cliente {
     private int idcliente;
     private String nombres;
     private String apellidos;
     private String DNI;
     private String email;
     private String empresa;
     private String direccion;
     private int telefono;
     
	public Cliente() {
		super();
	}

	public Cliente(String dNI) {
		super();
		DNI = dNI;
	}

	public Cliente(int idcliente, String nombres, String apellidos, String dNI, String email, String empresa,
			String direccion, int telefono) {
		super();
		this.idcliente = idcliente;
		this.nombres = nombres;
		this.apellidos = apellidos;
		DNI = dNI;
		this.email = email;
		this.empresa = empresa;
		this.direccion = direccion;
		this.telefono = telefono;
	}

	public Cliente(String nombres, String apellidos, String dNI, String email, String empresa, String direccion,
			int telefono) {
		super();
		this.nombres = nombres;
		this.apellidos = apellidos;
		DNI = dNI;
		this.email = email;
		this.empresa = empresa;
		this.direccion = direccion;
		this.telefono = telefono;
	}

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
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

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmpresa() {
		return empresa;
	}

	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	
	
}
