package pe.edu.upeu.sisgeco.entity;

public class Vehiculo {

	private int idvehiculo;
	private String placa;
	private int idCategoria;
	private int idCliente;
	public Vehiculo() {
		super();
	}
	
	public Vehiculo(int idvehiculo, String placa) {
		super();
		this.idvehiculo = idvehiculo;
		this.placa = placa;
	}

	public Vehiculo(String placa, int idCategoria, int idCliente) {
		super();
		this.placa = placa;
		this.idCategoria = idCategoria;
		this.idCliente = idCliente;
	}
	public Vehiculo(int idvehiculo, String placa, int idCategoria, int idCliente) {
		super();
		this.idvehiculo = idvehiculo;
		this.placa = placa;
		this.idCategoria = idCategoria;
		this.idCliente = idCliente;
	}
	public int getIdvehiculo() {
		return idvehiculo;
	}
	public void setIdvehiculo(int idvehiculo) {
		this.idvehiculo = idvehiculo;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	
	
	
}
