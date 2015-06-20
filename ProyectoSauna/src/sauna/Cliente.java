package sauna;

import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

public class Cliente {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	
	@Persistent
	private List<Reservaciones>reserv;
	
	@Persistent
	private List<Servicios> servicio;
	
	@Persistent
	private List<Horario> horario;

	public Cliente(List<Reservaciones> reserv, List<Servicios> servicio,
			List<Horario> horario) {
		super();
		this.reserv = reserv;
		this.servicio = servicio;
		this.horario = horario;
	}
	
	
	
	
}
