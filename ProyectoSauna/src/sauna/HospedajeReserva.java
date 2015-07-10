package sauna;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class HospedajeReserva extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String cuarto = req.getParameter("cuartos");
		String adultos = req.getParameter("adultos");
		String menores = req.getParameter("menores");
		String fumar = req.getParameter("fumar");
		String cama = req.getParameter("cama");
		String cupon = req.getParameter("cupon");
		String fecha1 = req.getParameter("fecha1");
		String fecha2 = req.getParameter("fecha2");

		ReservaHotel reserva = new ReservaHotel(cuarto, adultos, menores,
				fumar, cama, cupon, fecha1, fecha2);
		if (validate(reserva)) {
			PersistenceManager pm = PMF.get().getPersistenceManager();
			resp.setContentType("text/plain");
			try {
				pm.makePersistent(reserva);
				// resp.getWriter().println("correcto"+reserva.toString());
				req.setAttribute("objeto", reserva);
				RequestDispatcher rd = getServletContext()
						.getRequestDispatcher("/WEB-INF/aaa.jsp");
				rd.forward(req, resp);

			} catch (Exception a) {
				System.out.println(a);
			}
			System.out.println("correcto");
		}else{
			resp.sendRedirect("/WEB-INF/registrohotel.jsp");
			System.out.println("false");
		}
	}

	public boolean validate(ReservaHotel a) {
		return (a.getCuarto().matches("[A-Z]*[a-z]*")
				&& a.getAdultos().matches("[0-9]{1}")
				&& a.getNiños().matches("[0-9]{1}")
				&& a.getFumar().matches("[A-Z]*[a-z]*")
				&& a.getCama().matches("[A-Z]*[a-z]*")
				&& a.getCupon().matches("[A-Z]*[a-z]*")
				&& a.getFecha1().matches("[2][0][1][5-6][/][0-1][0-9][/][0-3][0-9]") && a
				.getFecha2()
				.matches("[2][0][1][5-6][/][0-1][0-9][/][0-3][0-9]"));
	}

}
