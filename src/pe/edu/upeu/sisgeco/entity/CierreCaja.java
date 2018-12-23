package pe.edu.upeu.sisgeco.entity;

public class CierreCaja {
private int idCierreCaja;
private String fecha_inicio;
private String fecha_termino;
private int monto;
private String fecha_actual;
private int idusuario;
public CierreCaja() {
	super();
}
public CierreCaja(String fecha_inicio, String fecha_termino, int monto, String fecha_actual, int idusuario) {
	super();
	this.fecha_inicio = fecha_inicio;
	this.fecha_termino = fecha_termino;
	this.monto = monto;
	this.fecha_actual = fecha_actual;
	this.idusuario = idusuario;
}
public CierreCaja(int idCierreCaja, String fecha_inicio, String fecha_termino, int monto, String fecha_actual,
		int idusuario) {
	super();
	this.idCierreCaja = idCierreCaja;
	this.fecha_inicio = fecha_inicio;
	this.fecha_termino = fecha_termino;
	this.monto = monto;
	this.fecha_actual = fecha_actual;
	this.idusuario = idusuario;
}

public CierreCaja(String fecha_inicio, String fecha_termino, int monto, int idusuario) {
	super();
	this.fecha_inicio = fecha_inicio;
	this.fecha_termino = fecha_termino;
	this.monto = monto;
	this.idusuario = idusuario;
}

public int getIdCierreCaja() {
	return idCierreCaja;
}
public void setIdCierreCaja(int idCierreCaja) {
	this.idCierreCaja = idCierreCaja;
}
public String getFecha_inicio() {
	return fecha_inicio;
}
public void setFecha_inicio(String fecha_inicio) {
	this.fecha_inicio = fecha_inicio;
}
public String getFecha_termino() {
	return fecha_termino;
}
public void setFecha_termino(String fecha_termino) {
	this.fecha_termino = fecha_termino;
}
public int getMonto() {
	return monto;
}
public void setMonto(int monto) {
	this.monto = monto;
}
public String getFecha_actual() {
	return fecha_actual;
}
public void setFecha_actual(String fecha_actual) {
	this.fecha_actual = fecha_actual;
}
public int getIdusuario() {
	return idusuario;
}
public void setIdusuario(int idusuario) {
	this.idusuario = idusuario;
}


}
