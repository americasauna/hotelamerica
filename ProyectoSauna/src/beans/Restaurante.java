package beans;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

import sauna.*;

@PersistenceCapable
public class Restaurante  {
	@Persistent
	private String tipo;
	@Persistent
	private String descripcion;
	@Persistent
	private String num;
	public Restaurante(String tipo, String descripcion, String num) {
		super();
		this.tipo = tipo;
		this.descripcion = descripcion;
		this.num = num;
	}
	public Restaurante() {
		super();
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "Restaurante [tipo=" + tipo + ", descripcion=" + descripcion
				+ ", num=" + num + "]";
	}
  


}
