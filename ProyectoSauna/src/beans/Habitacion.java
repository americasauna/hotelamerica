package beans;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import sauna.*;

@PersistenceCapable
public class Habitacion  {
	@Persistent
	private String tipo;
	@Persistent
	private String descripcion;
	@Persistent
	private String num;
  
	public Habitacion(String tipo, String descripcion, String num) {
		super();
		this.tipo = tipo;
		this.descripcion = descripcion;
		this.num = num;
	}

	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getTipo() {
		return tipo;
	}

	public Habitacion() {
		super();
	}

	public String getCuarto() {
		return tipo;
	}


	public void setTipo(String cuarto) {
		this.tipo = cuarto;
	}

	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	@Override
	public String toString() {
		return "Habitacion "+tipo + ", descripcion" + descripcion;
	}
}
