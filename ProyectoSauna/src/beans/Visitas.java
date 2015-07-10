package beans;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.jdo.annotations.IdGeneratorStrategy;
import com.google.appengine.api.datastore.Key;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class Visitas {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private Map<String, String> visitasDiarias;
	@Persistent
	private int totalVisitas;
	
	public Visitas(){
		visitasDiarias = new HashMap<String, String>();
		totalVisitas=1;
	}
	public void addVisita(){
		totalVisitas++;
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String fecha = sdf.format(date);
		if(visitasDiarias==null || visitasDiarias.isEmpty()){
			visitasDiarias= new HashMap<String, String>();
			visitasDiarias.put(fecha, fecha+"  :"+1);
		}else if(visitasDiarias.get(fecha)==null){
			visitasDiarias.put(fecha, fecha+"  :"+1);
		}else if(visitasDiarias.get(fecha)!=null){
			visitasDiarias.put(fecha,fecha+"  :"+(Integer.parseInt(visitasDiarias.get(fecha).substring(visitasDiarias.get(fecha).indexOf(":")+1,visitasDiarias.get(fecha).length()))+1));
		}
	}
	public String getVisitaD(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String fecha = sdf.format(date);
		if(visitasDiarias==null || visitasDiarias.isEmpty()){
			return "0";
		}else if(visitasDiarias.get(fecha)!=null){
			return (String)visitasDiarias.get(fecha);
		}else {
			return "0";
		}
	}
	public ArrayList<String> getSeisDias(){
		ArrayList<String> dias=new ArrayList<String>();
		Date hoy = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");;
		Date anterior;
		if(visitasDiarias==null || visitasDiarias.size()==0)
			return null;
		else{
			//System.out.println(visitasDiarias.size());
			if(visitasDiarias.size()>=6){
				for(int i=0;i<6;i++){
					anterior = new Date( hoy.getTime()-i*86400000);
					String pru=visitasDiarias.get(sdf.format(anterior));
					if(pru==null)continue;
					dias.add(pru);
				}
			}else{
				for(int i =0 ;i<visitasDiarias.size();i++){
					anterior = new Date( hoy.getTime()-i*86400000);
					String pru=visitasDiarias.get(sdf.format(anterior));
					if(pru==null)continue;
					dias.add(pru);
				}
			}
		}
		return dias;
	}
	public int getVisitaT(){
		return totalVisitas;
	}
}
