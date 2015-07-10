package sauna;
import javax.jdo.annotations.*;
@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class ReservaSpa1 {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private String servicio;
	@Persistent 
	private String turno;
	@Persistent
	private String hora;
	@Persistent
	private String cupon;
	@Persistent
	private String fecha;
	public ReservaSpa1(String servicio, String turno, String hora,
			String cupon, String fecha) {
		super();
		this.servicio = servicio;
		this.turno = turno;
		this.hora = hora;
		this.cupon = cupon;
		this.fecha = fecha;
	}
	public String getServicio() {
		return servicio;
	}
	public void setServicio(String servicio) {
		this.servicio = servicio;
	}
	public String getTurno() {
		return turno;
	}
	public void setTurno(String turno) {
		this.turno = turno;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getCupon() {
		return cupon;
	}
	public void setCupon(String cupon) {
		this.cupon = cupon;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	@Override
	public String toString() {
		return "ReservaSpa1 ["
				+ (servicio != null ? "servicio=" + servicio + ", " : "")
				+ (turno != null ? "turno=" + turno + ", " : "")
				+ (hora != null ? "hora=" + hora + ", " : "")
				+ (cupon != null ? "cupon=" + cupon + ", " : "")
				+ (fecha != null ? "fecha=" + fecha : "") + "]";
	}

}
