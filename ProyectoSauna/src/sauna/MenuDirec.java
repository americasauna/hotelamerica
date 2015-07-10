package sauna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class MenuDirec extends HttpServlet {
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
//		HttpSession menu= req.getSession();
//		String enlace=(String)menu.getAttribute("enlace");
	//	String enla= req.getParameter("enlace");
/*		String a=req.getParameter("servicios");
		String b=req.getParameter("hospedaje");
		String c=req.getParameter("sauna");
		String d=req.getParameter("masajes");
		String e=req.getParameter("estetica");
		String f=req.getParameter("reservaciones");
		String g=req.getParameter("contacto");
		String h=req.getParameter("hotel");
		String i=req.getParameter("spa");
		String j=req.getParameter("home");
		String k=req.getParameter("ingresar");
		String l=req.getParameter("horarios");
		String m=req.getParameter("restaurant");
	*/
//		System.out.println(enla);
//		System.out.println("++++"+enla);
//		System.out.println(a);
		
		
		//Si es que se copia el link y no se llena nada
/*		if(a==null && b==null && c==null && d==null && e==null && f==null && g==null && h==null && i==null && j==null &&
				k==null && l==null && m==null){
			resp.sendRedirect("index.jsp");
		}
			
		
	if(a!=null && a.equals("servicios")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/servicios.jsp");
			rd.forward(req, resp);	
		}
	if(b!=null&& b.equals("hospedaje")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/hospedaje.jsp");
		rd.forward(req, resp);	
	}
	
		/////
	if(c!= null && c.equals("sauna")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/sauna.jsp");
		rd.forward(req, resp);	
	}
	if(d!= null && d.equals("masajes")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/masajes.jsp");
		rd.forward(req, resp);	
	}
	if(e!= null && e.equals("estetica")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/estetica.jsp");
		rd.forward(req, resp);	
	}
	if(f!= null && f.equals("reservaciones")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/reservaciones.jsp");
		rd.forward(req, resp);	
	}
	if(g!= null && g.equals("contacto")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/registro.jsp");
		rd.forward(req, resp);	
	}
	if(h!= null && h.equals("hotel")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/registrohotel.jsp");
		rd.forward(req, resp);	
	}
	if(i!= null && i.equals("spa")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/registrospa.jsp");
		rd.forward(req, resp);	
	}
	if(j!= null && j.equals("home")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
		rd.forward(req, resp);	
	}
	if(k!= null && k.equals("ingresar")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/ingresar.jsp");
		rd.forward(req, resp);	
		System.out.println(k);
	}
	if(l!= null && l.equals("horarios")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/horarios.jsp");
		rd.forward(req, resp);	
	}
	if(m!= null && m.equals("restaurant")){
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/restaurant.jsp");
		rd.forward(req, resp);	
	}
*/
	//if(n!= null && n.equals("estetica")){
		//RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/estetica.jsp");
		//rd.forward(req, resp);	
	//}

//		if(enlace!= null && enlace.equals("hospedaje")){
//			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/hospedaje.jsp");
//			rd.forward(req, resp);
//		}
		
		

		
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		doPost(req, resp);
	}
	

}
