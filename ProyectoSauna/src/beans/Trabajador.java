package beans;

import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import sauna.*;

@SuppressWarnings("serial")
public class Trabajador extends Persona{

		@PrimaryKey
		@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
		private Long id;
		
		@Persistent
		private String cargo;
		
		@Persistent
		private List<Servicios> servicio;
		
		@Persistent
		private List<Horario> horario;
		
	
		
		public Trabajador(String cargo, List<Servicios> servicio,
				List<Horario> horario) {
			super();
			this.cargo = cargo;
			this.servicio = servicio;
			this.horario = horario;
		}
		
		
		public Trabajador(String name, String apellido, String sexo, String dni,
				String gmail, String telefono, String nacimiento, String direccion) {
			super(name, apellido, sexo, dni, gmail, telefono, nacimiento, direccion);
		}
		
		public Trabajador(){
			
		}


		public Long getId() {
			return id;
		}


		public void setId(Long id) {
			this.id = id;
		}


		public String getCargo() {
			return cargo;
		}


		public void setCargo(String cargo) {
			this.cargo = cargo;
		}


		public List<Servicios> getServicio() {
			return servicio;
		}


		public void setServicio(List<Servicios> servicio) {
			this.servicio = servicio;
		}


		public List<Horario> getHorario() {
			return horario;
		}


		public void setHorario(List<Horario> horario) {
			this.horario = horario;
		}


		@Override
		public String toString() {
			return "Trabajador [cargo=" + cargo + ", servicio=" + servicio
					+ ", horario=" + horario + "]";
		}
		
		
		
		

		
}
