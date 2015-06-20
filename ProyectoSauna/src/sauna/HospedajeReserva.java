package sauna;


	import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	@SuppressWarnings("serial")
	public class HospedajeReserva extends HttpServlet {
		public void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws IOException {
			String cuarto=req.getParameter("cuartos");
			String adultos=req.getParameter("adulto");
			String niños =req.getParameter("niños");
			
			
		}
	}


