package sauna;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class GmailServlet extends HttpServlet {
 public void doGet(HttpServletRequest req, HttpServletResponse resp)
 throws IOException {
	 resp.setContentType("text/html");
 
	 PrintWriter out = resp.getWriter();
 
	 UserService us = UserServiceFactory.getUserService();
	 User user = us.getCurrentUser();
 	
	 if(user == null){
		 resp.sendRedirect(us.createLoginURL(req.getRequestURI()));
 	}else{
		 out.println("<!DOCTYPE html>"	 
		 + "<html>"
		 + "<head><title>Informacion de la cuenta</title>"
		 + "<meta charset=utf-8;>"
		 + "<body>"
		 + "<h1>Informacion de la Cuenta Google</h1>"
		 + "<br><a href='../'>Regresar...</a>"
		 +"<br/><b>User :</b>"
		 +"<br/>getNickname retorn : "+user.getNickname()
		 +"<br/>getAuthDomain retornó : "+user.getAuthDomain()
		 +"<br/>getEmail retornó : "+user.getEmail()
		 +"<br/>getUserId retornó : "+user.getUserId()
		 +"<br/>getFederatedIdentity retornó : "+user.getFederatedIdentity()
		 +"<br/>"
		 +"<br/><b>UserService :</b>"
		 +"<br/>isUserAdmin retornó : "+us.isUserAdmin() 
		 +"<br/>isUserLoggedIn retornó : "+us.isUserLoggedIn()
		 +"<br/>getCurrentUser retornó : "+us.getCurrentUser()
		 +"<br/>"
		 +"<a href='"+ us.createLogoutURL(req.getRequestURI())+"'> Cerrar sesión </a>"
		 + "</body></html>");
 	}
 }
}