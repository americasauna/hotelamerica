package sauna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Vistas extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String num = req.getParameter("num");

		resp.setContentType("text/plain");

		switch (Integer.parseInt(num)) {
		case 1:
			RequestDispatcher uno = getServletContext().getRequestDispatcher("/index.jsp");
			uno.forward(req, resp);
			break;
		case 2:
			RequestDispatcher dos = getServletContext().getRequestDispatcher("/servicios.jsp");
			dos.forward(req, resp);
			break;
		case 3:
			RequestDispatcher tres = getServletContext().getRequestDispatcher("/registrohotel.jsp");
			tres.forward(req, resp);
			break;
		case 4:
			RequestDispatcher cuatro = getServletContext().getRequestDispatcher("/registrospa.jsp");
			cuatro.forward(req, resp);
			break;
			
		case 5:
			RequestDispatcher cinco = getServletContext().getRequestDispatcher("/registro.jsp");
			cinco.forward(req, resp);
			break;
			
		case 6:
			RequestDispatcher seis = getServletContext().getRequestDispatcher("/hospedaje.jsp");
			seis.forward(req, resp);
			break;
			
		case 7:
			RequestDispatcher ocho = getServletContext().getRequestDispatcher("/horarios.jsp");
			ocho.forward(req, resp);
			break;
			
		case 8:
			RequestDispatcher nueve = getServletContext().getRequestDispatcher("/horarioestetica.jsp");
			nueve.forward(req, resp);
			break;
			
		case 9:
			RequestDispatcher diez = getServletContext().getRequestDispatcher("/masajes.jsp");
			diez.forward(req, resp);
			break;
			
		case 10:
			RequestDispatcher once= getServletContext().getRequestDispatcher("/galeria.jsp");
			once.forward(req, resp);
			break;
			
		case 11:
			RequestDispatcher doce= getServletContext().getRequestDispatcher("/ma.jsp");
			doce.forward(req, resp);
			break;
		default:
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/vistas.jsp");
			rd.forward(req, resp);
			break;
		}
	}
}
