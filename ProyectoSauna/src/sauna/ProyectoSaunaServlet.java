package sauna;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.*;



@SuppressWarnings("serial")
public class ProyectoSaunaServlet extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		HttpSession misesion= req.getSession(true);
		misesion.setAttribute("a", "sulingdormilona");
		
		resp.setContentType("text/plain");
		try {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		String eva=req.getParameter("valor");
		System.out.println(eva+"wdddsds");
		
		if(eva.equals("HOSPEDAJE")){
			
			List<Habitacion> h = (List<Habitacion>)pm.newQuery(Habitacion.class).execute();
			req.setAttribute("habitaciones", h);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/EditarHosp.jsp");
			rd.forward(req, resp);
			
		}
		if(eva.equals("SAUNA")){
			List<Sauna> sa = (List<Sauna>)pm.newQuery(Sauna.class).execute();
			req.setAttribute("saunas", sa);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/EditarSauna.jsp");
				rd.forward(req, resp);	
		}
		
		if(eva.equals("SPA")){
			List<Spa> rest = (List<Spa>)pm.newQuery(Spa.class).execute();
			req.setAttribute("spa", rest);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/EditarSpa.jsp");
				rd.forward(req, resp);	
		}
		
		if(eva.equals("MASAJES")){
			List<Sauna> sa = (List<Sauna>)pm.newQuery(Masajes.class).execute();
			req.setAttribute("masajes", sa);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/Editmasaje.jsp");
				rd.forward(req, resp);	
		}
		
	
			
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("asdsadsa");
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		doPost(req,resp);
	}
}
