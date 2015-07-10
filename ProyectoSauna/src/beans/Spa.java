package beans;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import sauna.*;

@PersistenceCapable
public class Spa {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private String nombre;
	@Persistent
	private List<String>salones;
	@Persistent
	private String piscina;
	@Persistent
	private List<String>salaMasaje;
	
	
	public Spa(String nombre) {
		super();
		this.nombre = nombre;
		salones=new ArrayList<String>();
		salaMasaje=new ArrayList<String>();
	}


	public Spa(String nombre, List<String> salones, String piscina,
			List<String> salaMasaje) {
		super();
		this.nombre = nombre;
		this.salones = salones;
		this.piscina = piscina;
		this.salaMasaje = salaMasaje;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public List<String> getSalones() {
		return salones;
	}


	public void setSalones(List<String> salones) {
		this.salones = salones;
	}


	public String getPiscina() {
		return piscina;
	}

	public void setPiscina(String piscina) {
		this.piscina = piscina;
	}


	public List<String> getSalaMasaje() {
		return salaMasaje;
	}


	public void setSalaMasaje(List<String> salaMasaje) {
		this.salaMasaje = salaMasaje;
	}
	
	public void aumentarSalaMasaje(String a){
		this.salaMasaje.add(a);
	}
	
	public void aumentarSalon(String a){
		this.salones.add(a);
	}

	@Override
	public String toString() {
		return "Spa [nombre=" + nombre + ", salaMasaje=" + salaMasaje + "]";
	}


}
