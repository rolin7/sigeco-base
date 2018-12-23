package pe.edu.upeu.sisgeco.entity;

public class Comprobante {
private int idcomprobante;
private String tipo;
private Double ruc;
private String descripcion;
private String fechaEmision;
private String lugar;
private int idUsuario;
private int idTicket;

public Comprobante() {
	super();
}

public Comprobante(int idcomprobante, String tipo, Double ruc, String descripcion, String fechaEmision, String lugar,
		int idUsuario, int idTicket) {
	super();
	this.idcomprobante = idcomprobante;
	this.tipo = tipo;
	this.ruc = ruc;
	this.descripcion = descripcion;
	this.fechaEmision = fechaEmision;
	this.lugar = lugar;
	this.idUsuario = idUsuario;
	this.idTicket = idTicket;
}

public Comprobante(String tipo, Double ruc, String descripcion, String fechaEmision, String lugar, int idUsuario,
		int idTicket) {
	super();
	this.tipo = tipo;
	this.ruc = ruc;
	this.descripcion = descripcion;
	this.fechaEmision = fechaEmision;
	this.lugar = lugar;
	this.idUsuario = idUsuario;
	this.idTicket = idTicket;
}

public Comprobante(String tipo, Double ruc, String descripcion, String lugar, int idUsuario, int idTicket) {
	super();
	this.tipo = tipo;
	this.ruc = ruc;
	this.descripcion = descripcion;
	this.lugar = lugar;
	this.idUsuario = idUsuario;
	this.idTicket = idTicket;
}

public int getIdcomprobante() {
	return idcomprobante;
}

public void setIdcomprobante(int idcomprobante) {
	this.idcomprobante = idcomprobante;
}

public String getTipo() {
	return tipo;
}

public void setTipo(String tipo) {
	this.tipo = tipo;
}

public Double getRuc() {
	return ruc;
}

public void setRuc(Double ruc) {
	this.ruc = ruc;
}

public String getDescripcion() {
	return descripcion;
}

public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}

public String getFechaEmision() {
	return fechaEmision;
}

public void setFechaEmision(String fechaEmision) {
	this.fechaEmision = fechaEmision;
}

public String getLugar() {
	return lugar;
}

public void setLugar(String lugar) {
	this.lugar = lugar;
}

public int getIdUsuario() {
	return idUsuario;
}

public void setIdUsuario(int idUsuario) {
	this.idUsuario = idUsuario;
}

public int getIdTicket() {
	return idTicket;
}

public void setIdTicket(int idTicket) {
	this.idTicket = idTicket;
}


}
