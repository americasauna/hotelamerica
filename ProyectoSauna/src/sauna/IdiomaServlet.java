package sauna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
public class IdiomaServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
		//quiza codigo para saber si esta logeado o no
		HttpSession menu=req.getSession();
		String pagina =(String)menu.getAttribute("index");
	//	String idioma =(String)menu.getAttribute("idioma");
		String idioma=req.getParameter("idioma");
		
		System.out.println(pagina+" aaa ");
		System.out.println(idioma);
		
//		String a;
		
//		if(idioma==null || idioma.equals(""))
//			a="/en/";
//		else
//			a="/";
		if(idioma==null || idioma.equals("")){
			idioma="/";
		}else {
			if(idioma.equals("ing"))
				idioma="/en/";
			else
				idioma="/";
		}
		
		pagina+=".jsp";
		
		System.out.println(pagina);
			
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF"+idioma+""+pagina);
		rd.forward(req, resp);	
		
		menu.invalidate();
		
//		menu.removeAttribute("idioma");
		
//		
//		System.out.println("--------------");
//		System.out.println(a);
//		System.out.println(idioma);
//		
//		
//		RequestDispatcher rd1 = getServletContext().getRequestDispatcher("/WEB-INF+"+a+""+idioma);
//		rd1.forward(req, resp);	
				
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		doPost(req,resp);
	}
	
}