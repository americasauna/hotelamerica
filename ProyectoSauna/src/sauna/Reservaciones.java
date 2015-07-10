package sauna;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Reservaciones extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/plain");

		String servicio = req.getParameter("selprod");
		if (servicio.equals("prod1"))
			servicio = "Masaje";
		if (servicio.equals("prod2"))
			servicio = "Manicure";
		if (servicio.equals("prod3"))
			servicio = "Pedicure";
		if (servicio.equals("prod4"))
			servicio = "Cabello";
		if (servicio.equals("prod5"))
			servicio = "Tinte";
		String atendido = req.getParameter("yesorno");
		String turno = req.getParameter("turn");
		String hora = "";
		if (turno.equals("Mañana")) {
			hora = req.getParameter("turnma");
		}
		if (turno.equals("Tarde")) {
			hora = req.getParameter("turnta");
		}
		if (turno.equals("Noche")) {
			hora = req.getParameter("turnno");
		}
		String fecha = req.getParameter("fecha1");
		if (atendido.equals("No")) {
			ReservaSpa1 reservans = new ReservaSpa1(servicio, turno, hora, "",
					fecha);
			try {
				resp.getWriter().println(reservans.toString());

			} catch (Exception a) {
			}
		}
		System.out.println(servicio);
		String hgb=servicio;
		if (atendido.equals("Si")) {
			String trabajador="";
			if (hgb.equals("Masaje")) trabajador = req.getParameter("trabajador1");
			if (hgb.equals("Manicure")) trabajador = req.getParameter("trabajador2");
			if (hgb.equals("Pedicure")) trabajador = req.getParameter("trabajador3");
			if (hgb.equals("Cabello")) trabajador = req.getParameter("trabajador4");
			if (hgb.equals("Tinte")) trabajador = req.getParameter("trabajador5");
			ReservaSpa2 reservans = new ReservaSpa2(hgb, turno, hora, "",fecha,trabajador);
			try {
				resp.getWriter().println(reservans.toString());

			} catch (Exception a) {
			}
		}

	}
}
