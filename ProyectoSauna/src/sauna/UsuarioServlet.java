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
public class UsuarioServlet extends HttpServlet {
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		try {
			String nombre= req.getParameter("a");
			String apellido= req.getParameter("b");
			String telefono= req.getParameter("c");
			String dni= req.getParameter("d");
			String mail= req.getParameter("e");
			String sexo= req.getParameter("sex");
			String direccion= req.getParameter("f");
			String fecha= req.getParameter("dianaci")+"/"+req.getParameter("mesnaci")+"/"+req.getParameter("anionaci");
			String usuario= req.getParameter("g");
			String contraseña= req.getParameter("h");
			//logeo
			String login=req.getParameter("login");
			String password=req.getParameter("password");
			
			
			PersistenceManager pm = PMF.get().getPersistenceManager();
			
			
				if(nombre!=null && apellido!=null || usuario!=null 
						|| contraseña!=null){
					Cliente c1= new Cliente(nombre, apellido, telefono, dni, mail, sexo, direccion, fecha, usuario, contraseña);
					System.out.println(c1);
					HttpSession registro=req.getSession(true);
					pm.makePersistent(c1);
					registro.setAttribute("usuario",usuario);
					req.setAttribute("usuario", usuario);
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
					rd.forward(req, resp);
				}
				
				System.out.println(login+" "+password);
				String user="#";
				
				if(login!=null && password!=null){
					
					@SuppressWarnings("unchecked")
					List<Cliente> registros = (List<Cliente>)pm.newQuery(Cliente.class).execute();
					for (Cliente cliente : registros) {
						System.out.println(cliente);
					}

					HttpSession registro=req.getSession(true);
		
					for (int i = 0; i < registros.size(); i++) {
						if(registros.get(i).getLogin()==null || registros.get(i).getPassword()==null)++i;
						String l=registros.get(i).getLogin();
						String p=registros.get(i).getPassword();
					//	System.out.println(l+"   "+p);
						if(l.equals(login)&&p.equals(password)){
							user=l;
						}
					}
					System.out.println(user);
					if(!user.equals("#")){
						registro.setAttribute("usuario", user);
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
						rd.forward(req, resp);
						System.out.println("user");
					}
					else{
						req.setAttribute("regis", "no");
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/ingresar.jsp");
						rd.forward(req, resp);
					}
				}		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		//List<Cliente> registros = (List<Cliente>)pm.newQuery(Cliente.class).execute();
		
		
	}	
		
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		doPost(req, resp);
	}
	}