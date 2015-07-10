package beans;

import java.io.Serializable;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import javax.persistence.Entity;

import sauna.*;
@Entity
@SuppressWarnings("serial")
@PersistenceCapable
public class Persona implements Serializable{
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private long key;
	@Persistent
	private String name;
	@Persistent
	private String apelllido;
	@Persistent
	private String sexo;
	@Persistent
	private String dni;
	@Persistent
	private String gmail;
	@Persistent
	private String telefono;
	@Persistent
	private String nacimiento;
	@Persistent
	private String direccion;
	
	
	
	public Persona(String name, String apelllido, String sexo, String dni,
			String gmail, String telefono, String nacimiento, String direccion) {
		this.name = name;
		this.apelllido = apelllido;
		this.sexo = sexo;
		this.dni = dni;
		this.gmail = gmail;
		this.telefono = telefono;
		this.nacimiento = nacimiento;
		this.direccion = direccion;
	}
	
	
	
	public Persona(String name, String apelllido) {
		super();
		this.name = name;
		this.apelllido = apelllido;
	}
	
	



	public Persona() {
		super();
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getApelllido() {
		return apelllido;
	}
	public void setApelllido(String apelllido) {
		this.apelllido = apelllido;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getNacimiento() {
		return nacimiento;
	}
	public void setNacimiento(String nacimiento) {
		this.nacimiento = nacimiento;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	@Override
	public String toString() {
		return "Persona [name=" + name + ", apelllido=" + apelllido + ", sexo="
				+ sexo + ", dni=" + dni + ", gmail=" + gmail + ", telefono="
				+ telefono + ", nacimiento=" + nacimiento + ", direccion="
				+ direccion + "]";
	}
}
