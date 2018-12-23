package pe.edu.upeu.sisgeco.entity;

public class Ticket {
	private int idticket;
	private String fecha_Ingreso;
	private String fecha_salida;
	private int monto;
	private String estado;
	private int idvehiculo;

	public Ticket() {
		super();
	}

	public Ticket(int idticket) {
		super();
		this.idticket = idticket;
	}


	public Ticket(int idticket, int monto) {
		super();
		this.idticket = idticket;
		this.monto = monto;
	}


	public Ticket(String estado, int idvehiculo) {
		super();
		this.estado = estado;
		this.idvehiculo = idvehiculo;
	}


	public Ticket(int idticket, String fecha_Ingreso, String fecha_salida, int monto, String estado, int idvehiculo) {
		super();
		this.idticket = idticket;
		this.fecha_Ingreso = fecha_Ingreso;
		this.fecha_salida = fecha_salida;
		this.monto = monto;
		this.estado = estado;
		this.idvehiculo = idvehiculo;
	}

	public Ticket(String fecha_Ingreso, String fecha_salida, int monto, String estado, int idvehiculo) {
		super();
		this.fecha_Ingreso = fecha_Ingreso;
		this.fecha_salida = fecha_salida;
		this.monto = monto;
		this.estado = estado;
		this.idvehiculo = idvehiculo;
	}

	public int getIdticket() {
		return idticket;
	}

	public void setIdticket(int idticket) {
		this.idticket = idticket;
	}

	public String getFecha_Ingreso() {
		return fecha_Ingreso;
	}

	public void setFecha_Ingreso(String fecha_Ingreso) {
		this.fecha_Ingreso = fecha_Ingreso;
	}

	public String getFecha_salida() {
		return fecha_salida;
	}

	public void setFecha_salida(String fecha_salida) {
		this.fecha_salida = fecha_salida;
	}

	public int getMonto() {
		return monto;
	}

	public void setMonto(int monto) {
		this.monto = monto;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public int getIdvehiculo() {
		return idvehiculo;
	}

	public void setIdvehiculo(int idvehiculo) {
		this.idvehiculo = idvehiculo;
	}

}
