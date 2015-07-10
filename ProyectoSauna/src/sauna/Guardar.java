package sauna;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Habitacion;
import beans.Sauna;
import beans.Spa;

public class Guardar extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		
		try {
			HttpSession misesion= req.getSession();
			String pagina=(String) misesion.getAttribute("id");

			PersistenceManager pm = PMF.get().getPersistenceManager();
			// Hospedaje
			String a = req.getParameter("nombre");
			String b = req.getParameter("numero");
			String c = req.getParameter("descripcion");
			String d = req.getParameter("borrar");
			String e = req.getParameter("precio");
			String f = req.getParameter("cam");
			String g = req.getParameter("baño");
			String h = req.getParameter("nuevo");
			// String d=req.getParameter("foto");

		/*		
		 * 
			// sauna
			String e = req.getParameter("no");
			String f = req.getParameter("des");
			String g = req.getParameter("pre");
			String i = req.getParameter("saunborrar");
			// masajes
			String j = req.getParameter("nom");
			String k = req.getParameter("desc");
			String l = req.getParameter("prec");
			String m = req.getParameter("masajeborrar");

			// restaurante
			String n = req.getParameter("nomb");
			String ñ = req.getParameter("descr");
			String o = req.getParameter("preci");
			String p = req.getParameter("restauranteborrar");

			// hospedaje....
		*/	
			if(pagina.equals("hospeda")){
				if (a != null && b != null && c != null) {
				Habitacion habit = new Habitacion(a, b, c);
				pm.makePersistent(habit);
				req.setAttribute("alerta", "true");
				req.setAttribute("dato", habit);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
				rd.forward(req, resp);
				}
				//if (d != null &&(a=="" || b=="" || c=="")) {
				Habitacion habita = null;
				if(d!=null){
				List<Habitacion> registros = (List<Habitacion>) pm.newQuery(Habitacion.class).execute();
				for (Habitacion hab : registros)
					if (d.equals(hab.getNum())){
						
						pm.deletePersistent(hab);
						
						}
				//}
				req.setAttribute("alerta", "false");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
				rd.forward(req, resp);
				}
				
				
				
			}

			
			//SAUNA
			if(pagina.equals("sauna")){
			
				if(!(h.equals(""))){
					Sauna s = new Sauna(h);
					pm.makePersistent(s);
					req.setAttribute("alerta", "true");
					req.setAttribute("datosauna", s);
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
					rd.forward(req, resp);
				}
				
				List<Sauna> registros = (List<Sauna>) pm.newQuery(Sauna.class).execute();
				if(!(a.equals(""))){
					
					for (Sauna sau : registros){ 
						if (a.equals(sau.getNombre())){
							
							sau.aumentarCamara(f);
							sau.aumentarBaño(g);
						}
						System.out.println(sau);
					}
					req.setAttribute("alerta", "mof");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
					rd.forward(req, resp);
				}
							System.out.println(d);
							
				if(!d.equals("")){
					for (int i = 0; i < registros.size() ; i++) {
						if(registros.get(i).getNombre()==null)break;
						String l=registros.get(i).getNombre();
						System.out.println(l+" "+d);
						if(l.equals(d))
							System.out.println("aqui borra");
							pm.deletePersistent(registros.get(i));
				}
					req.setAttribute("alerta", "false");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
					rd.forward(req, resp);
			}
				
				if(a.equals(""))
					resp.sendRedirect("Administracion.jsp");
			}
		
			
			//SPA
			if(pagina.equals("spa")){
				
				if(!(h.equals("")) || h!=null){
				
					Spa s = new Spa(h);
				
					pm.makePersistent(s);
				
					req.setAttribute("alerta", "true");
					req.setAttribute("datospa", s);
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
					rd.forward(req, resp);	
				}
				List<Spa> registros = (List<Spa>) pm.newQuery(Spa.class).execute();
				if(!(a.equals(""))){

					for (Spa spa : registros){ 
						if (a.equals(spa.getNombre())){
							spa.aumentarSalaMasaje(f);
							spa.aumentarSalon(g);
						}
						System.out.println(spa);
					}
					
					req.setAttribute("alerta", "mof");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
					rd.forward(req, resp);
				}
				System.out.println(d);

				if(!d.equals("")){
					for (int i = 0; i < registros.size() ; i++) {
						if(registros.get(i).getNombre()==null)break;
						String l=registros.get(i).getNombre();
						System.out.println(l+" "+d);
						if(l.equals(d))
							System.out.println("aqui borra");
						pm.deletePersistent(registros.get(i));
				}
					req.setAttribute("alerta", "false");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/alertas.jsp");
					rd.forward(req, resp);
			}
				if(a.equals(""))
					resp.sendRedirect("Administracion.jsp");
			}
			
		/*	
			if(pagina.equals("restaurante")){
				Restaurante r = new Restaurante(a, b, c);
				pm.makePersistent(r);
				
				List<Restaurante> registros = (List<Restaurante>) pm.newQuery(Restaurante.class).execute();
				for (Restaurante rest : registros) 
					if (d.equals(rest.getTipo())) 	pm.deletePersistent(rest);
			}
			
			
			if(pagina.equals("masaje")){
				Masajes ma = new Masajes(a, b, c);
				pm.makePersistent(ma);
				
				List<Masajes> registros = (List<Masajes>) pm.newQuery(Restaurante.class).execute();
				for (Masajes mas : registros) 
					if (d.equals(mas.getTipodemasaje())) 	pm.deletePersistent(mas);
			}

	/*
			
			// sauna
			if (e != null && f != null && g != null) {
				Sauna s = new Sauna(e, f, g);
				pm.makePersistent(s);
			}
			if (i != null) {
				List<Sauna> s = (List<Sauna>) pm.newQuery(Sauna.class).execute();
				for (Sauna sau : s) {
					if (f.equals(sau.getTipodesauna())) {
						pm.deletePersistent(sau);
					}
				}
			}
			
			
			// masaje
			if (j != null && k != null && l != null) {
				Sauna s = new Sauna(a, b, c);
				pm.makePersistent(s);
			}
			if (m != null) {
				List<Masajes> masa = (List<Masajes>) pm.newQuery(Masajes.class).execute();
				for (Masajes mas : masa) {
					if (f.equals(mas.getTipodemasaje())) {
						pm.deletePersistent(mas);
					}
				}}

			if (n != null && ñ != null && o != null) {
				Sauna s = new Sauna(a, b, c);
				pm.makePersistent(s);
			}
			/*
			 * if(p!=null){ List<restaurante> resta =
			 * (List<restaurante>)pm.newQuery(masajes.class).execute();
			 * for(restaurante rest :resta) { if(f.equals(mas.getTipodeplato())){
			 * pm.deletePersistent(mas);}}}
			 */
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		


	}
}
