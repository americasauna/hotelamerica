package sauna;
import javax.jdo.annotations.*;
@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class ReservacionSpa2 extends ReservaSpa1{
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private String trabajador;
	public ReservacionSpa2(String servicio, String turno, String hora,
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
		return "ReservacionSpa2 ["
				+ (trabajador != null ? "trabajador=" + trabajador + ", " : "")
				+ (getServicio() != null ? "getServicio()=" + getServicio()
						+ ", " : "")
				+ (getTurno() != null ? "getTurno()=" + getTurno() + ", " : "")
				+ (getHora() != null ? "getHora()=" + getHora() + ", " : "")
				+ (getCupon() != null ? "getCupon()=" + getCupon() + ", " : "")
				+ (getFecha() != null ? "getFecha()=" + getFecha() : "") + "]";
	}

}
