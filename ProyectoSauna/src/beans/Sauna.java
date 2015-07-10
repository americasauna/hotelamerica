package beans;

import java.util.*;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import sauna.*;

@PersistenceCapable
public class Sauna {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private String nombre;
	@Persistent
	private List<String>camaras;
    @Persistent
   	private List<String>ba�os;
	@Persistent
	private String descripcion;
	@Persistent
	private String precio;
	public Sauna(List<String>ba�os, List<String> camaras,String descripcion, String precio) {
		super();
		this.ba�os=ba�os;
		this.camaras=camaras;
		this.descripcion = descripcion;
		this.precio = precio;
		
	}
	public Sauna(String nombre){
		this.nombre=nombre;
		this.ba�os=new ArrayList<String>();
		this.camaras= new ArrayList<String>();
	}
	
	public String getNombre() {
		return nombre;
	}
	public void setTipo(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getPrecio() {
		return precio;
	}
	public void setPrecio(String precio) {
		this.precio = precio;
	}
	public void aumentarCamara(String a){
		camaras.add(a);
	}
	public void aumentarBa�o(String a){
		ba�os.add(a);
	}
	@Override
	public String toString() {
		return "Sauna [nombre=" + nombre + ", camaras=" + camaras + ", ba�os="
				+ ba�os + ", descripcion=" + descripcion + ", precio=" + precio
				+ "]";
	}
	
	
}