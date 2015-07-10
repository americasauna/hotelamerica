package sauna;
import javax.jdo.annotations.*;
@PersistenceCapable (identityType=IdentityType.APPLICATION)
public class ReservaHotel {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private String cuarto;
	@Persistent
	private String adultos;
	@Persistent
	private String niños;
	@Persistent
	private String fumar;
	@Persistent
	private String cama;
	@Persistent
	private String cupon;
	@Persistent
	private String fecha1;
	@Persistent
	private String fecha2;
	public ReservaHotel(String cuarto, String adultos, String niños,
			String fumar, String cama, String cupon, String fecha1,
			String fecha2) {
		super();
		this.cuarto = cuarto;
		this.adultos = adultos;
		this.niños = niños;
		this.fumar = fumar;
		this.cama = cama;
		this.cupon = cupon;
		this.fecha1 = fecha1;
		this.fecha2 = fecha2;
	}
@Override
	public String toString() {
		return "ReservaHotel [id=" + id + ", cuarto=" + cuarto + ", adultos="
				+ adultos + ", niños=" + niños + ", fumar=" + fumar + ", cama="
				+ cama + ", cupon=" + cupon + ", fecha1=" + fecha1
				+ ", fecha2=" + fecha2 + "]";
	}
public ReservaHotel(){
	
}
	public String getCuarto() {
		return cuarto;
	}
	public void setCuarto(String cuarto) {
		this.cuarto = cuarto;
	}
	public String getAdultos() {
		return adultos;
	}
	public void setAdultos(String adultos) {
		this.adultos = adultos;
	}
	public String getNiños() {
		return niños;
	}
	public void setNiños(String niños) {
		this.niños = niños;
	}
	public String getFumar() {
		return fumar;
	}
	public void setFumar(String fumar) {
		this.fumar = fumar;
	}
	public String getCama() {
		return cama;
	}
	public void setCama(String cama) {
		this.cama = cama;
	}
	public String getCupon() {
		return cupon;
	}
	public void setCupon(String cupon) {
		this.cupon = cupon;
	}
	public String getFecha1() {
		return fecha1;
	}
	public void setFecha1(String fecha1) {
		this.fecha1 = fecha1;
	}
	public String getFecha2() {
		return fecha2;
	}
	public void setFecha2(String fecha2) {
		this.fecha2 = fecha2;
	}
}
