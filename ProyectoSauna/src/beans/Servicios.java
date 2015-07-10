package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import sauna.*;

@PersistenceCapable
public class Servicios {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	    @Persistent
		private String tipo;
		@Persistent
		private String descripcion;
		@Persistent
		private String precio;
		@Persistent
		private String numero;
		public Servicios(String tipo, String descripcion, String precio,String numero) {
			super();
			this.tipo = tipo;
			this.descripcion = descripcion;
			this.precio = precio;
			this.numero = numero;
		}
		public String getNumero() {
			return numero;
		}
		public void setNumero(String numero) {
			this.numero = numero;
		}
		public String getTipo() {
			return tipo;
		}
		public Servicios(String tipo, String descripcion, String precio) {
			super();
			this.tipo = tipo;
			this.descripcion = descripcion;
			this.precio = precio;
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
		public String getPrecio() {
			return precio;
		}
		public void setPrecio(String precio) {
			this.precio = precio;
		}
}
