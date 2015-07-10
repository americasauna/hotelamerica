package sauna;
import javax.jdo.annotations.*;
@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class ReservaSpa2 extends ReservaSpa1{
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private String trabajador;
	public ReservaSpa2(String servicio, String turno, String hora,
			String cupon, String fecha, String trabajador) {
		super(servicio, turno, hora, cupon, fecha);
		this.trabajador = trabajador;
	}
	public String getTrabajador() {
		return trabajador;
	}
	public void setTrabajador(String trabajador) {
		this.trabajador = trabajador;
	}
	@Override
	public String toString() {
		return "ReservaSpa2 [Servicio=" + getServicio() + ",Turno="
				+ getTurno() + ",Hora=" + getHora() + ", Cupon="
				+ getCupon() + ", Fecha=" + getFecha() +", trabajador="+trabajador+ "]";
	}
}