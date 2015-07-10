<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="sauna.*"%>
<%@page import="beans.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.jdo.Query"%>
<%@page import="javax.jdo.PersistenceManager"%>
<%@page import="java.util.*"%>

<%HttpSession menu=request.getSession();%>
<%menu.removeAttribute("index"); %>
<%menu.setAttribute("index", "visitas");%>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>

<%boolean flag=false;
if(user!=null && user.equals("admin")){
	flag=true;}%>
<%registro.setAttribute("flag", flag);%>

<%
PersistenceManager pm = PMF.get().getPersistenceManager();
Query q = pm.newQuery(Visitas.class);
Visitas vistas=null;
List<Visitas> visitas = (List<Visitas>) q.execute();
if(visitas.isEmpty()){
	vistas = new Visitas();
	pm.makePersistent(vistas);
}else{
	vistas= visitas.get(0);
}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/estilovisit.css" media="screen" >
<link rel="stylesheet" type="text/css" href="/css/estiloIdioma.css" media="screen" >

<title>N° Visitas</title>


<style type="text/css">
<!--
.table {
	font:16px Verdana, Arial, Helvetica, sans-serif;
	color:#777;
	padding:7px;
	
}
.barrasv {
	width:30px;
	text-shadow:#CCC 0.1em 0.1em 0.1em;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	box-shadow:1px 1px 1px black;
	-webkit-box-shadow:1px 1px 1px black;
	-moz-box-shadow:1px 1px 1px black
}
.rotar{
	height:95px;
	-webkit-transform:rotate(-90deg);
	-moz-transform:rotate(-90deg);
	margin:0 auto;
}
#tablaPer{
	position:absolute;
	font:19px Verdana, Arial, Helvetica, sans-serif;
	color:#3B3838;
	width:120px;
	float:left;
	BACKGROUND-COLOR:gray;
	border-radius:5px;
	margin-top:10px;
	margin-left:10px;
}
#tablaPer .cabe{
	width:50px;
	margin:2px;
	float:left;
	text-align:center;
}
#tablaPer .num{
	width:50px;
	float:left;
	margin:2px;
	text-align:center;
}
-->
</style>
</head>


<body>

<center>
		<div class="header">
			<table >
				<tr>
					<%if(user!=null && user.equals("admin")){ %>
							<td><ul class="nav">
							<li><form action="/adm.jsp" method="POST">
							<input type="hidden" name="adm" value="admi">
								<input class="po" type="submit" value="ADMINISTRAR">
								</form></li></ul>
	
					</td><%}%>
				
					<td>
						<ul class="nav">
							<li><form action="/inicio" method="POST">
							<input type="hidden" name="home" value="home">
								<input class="po" type="submit" value="HOME">
								</form></li></ul></td>
					<td>
						<div id="header">
								<ul class="nav">
									<li>
									<form method="POST" action="/servicios" ><input type="hidden" name="servicios" value="servicios">
								<input class="po"type="submit" value="SERVICIOS">
								</form> 
								<!--	<form action="sauna" method="get" name="f1" id="f1">
										<input type="hidden" name="enlace" value="servicios">
									</form>
									-->
									<ul  id="capa11">
												<li><form method="POST" action="/servicios/hospedaje" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="/servicios/sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="/servicios/masaje" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="/servicios/estetica" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="/servicios/estetica/cabello" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="/servicios/estetica/manicure" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="/servicios/estetica/pedicure" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
								<input class="sub"type="submit" value="PEDICURE">
								</form></li>
														
													</ul></li>
											<li><form action="/servicios/restaurant" method="POST"><input type="hidden" name="restaurant" value="restaurant">
								<input class="sub"type="submit" value="RESTAURANT">
								</form></li>
											</ul></li>
								</ul>
						</div></td>
     
					<td>
						<ul class="nav">
								<li>
								<form action="" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
								<input class="po"type="submit" value="RESERVACIONES">
								</form>
									
									<ul  id="capa1">
											
											<li><form method="POST" action="/reservacion/hotel" ><input type="hidden" name="hotel" value="hotel">
								<input class="sub"type="submit" value="HOTEL">
								</form></li>
											<li><form method="POST" action="/reservacion/spa" ><input type="hidden" name="spa" value="spa">
								<input class="sub" type="submit" value="SPA">
								</form></li>
									</ul>
									
										
									</li>
							</ul></td>
					
					
					<td><img height="75" width="300" src="../spa.jpg" alt=""></td>
					
					<td>
					<ul class="nav">
								<li>
								<form action="" method="POST">
								<input class="po"type="submit" value="CONTACTENOS">
								</form>
									<ul  id="capa1">
											<li><form method="POST" action="/encuesta" >
								<input class="sub" type="submit" value="Encuesta">
								</form></li>
											<li><form method="POST" action="/sugerencias.do" >
								<input class="sub" type="submit" value="Sugerencias">
								</form></li>
									</ul>	
									</li>
						</ul>
					</td>
					
					<td>
					<ul class="nav">
								<li>
								<form action="" method="POST">
								<input class="po"type="submit" value="VISITAS/IDIOMAS">
								</form>
									<ul id="capa1">
											<li><form method="POST" action="/visitas.do" >
								<input class="sub"type="submit" value="Visitas">
								</form></li>
											<li><form method="POST" action="#idiomas" >
								<input class="sub" type="submit" value="Idioma">
								</form></li>
									</ul>	
									</li>
						</ul>
					</td>
					
					<td>
						<div >
							<ul class="nav">
								<li>
								<%if(user==null){ %>
								<form method="POST" action="../login" >
	<input type="hidden" name="ingresar" value="ingresar">
	<input class="po"type="submit" value="INICIAR SESION">
								</form>
								<%}else{%>
								<form action="../1" method="POST"><input type="hidden" name="cerrar" value="cerrar">
								<input class="po" type="submit" value="CERRAR SESION">
								</form>
								<%} %>
								</li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</center>
	
	
	<div id="idiomas" class="idiomas">
	<div>
		<a href="" title="Cerrar" class="cerrar">X</a>
		<div id="sugerir">
		<form action="/index.do" method="post" name="formuIdiomas">	
		<div id="titulo"><H2>Escoje el idioma</H2></div>
		<div class="selectt">
		<select name="idioma" id="idioma" class="selecttt">
				    <option>--Seleccione--</option>
					<option value="esp">Español</option>
					<option value="ing">Ingles</option>
		</select>
		<input type="hidden" name="">
		</div> <br>
		<input type = "submit" value="TRADUCIR" id="submitt" ><br>
		</form>
	</div>
	</div>
	</div>

<div class="arribas">
<div id="tablaPer">
<%String hoy=vistas.getVisitaD();
String numero=hoy.substring(hoy.indexOf(":")+1,hoy.length());
%>
	<div class="cabe">Hoy</div><div class="cabe">Total</div>
	<div class="num"><% out.print(numero);%></div><div class="num"><%out.print(vistas.getVisitaT()); %></div>
</div>
<br><br><br><br><br>

<pre class="aqui">GRAFICO DE VISITAS</pre>
<div class="tablasas"><center>
<table class="table" align="center"></table></center>
<table class="table" align="center" cellpadding="2" cellspacing="2" border="1">
<%
ArrayList<String> dias=vistas.getSeisDias();
%>
  <tbody align="center">
    <tr>
    <%
    	if(dias!=null && dias.size()!=0)
    	for(String d:dias){
    		out.print("<td valign='bottom'><div class='barrasv' style='height:");
    		out.print(d.substring(d.indexOf(":")+1,d.length())+"px;");
    		out.print(" background-color:#BDDA4C'>&nbsp;</div></td>");
    	}
    %>
    </tr>
    <tr>
    <%
    if(dias!=null && dias.size()!=0)
    	for(String d:dias){
    		out.print("<td>");
    		out.print(d.substring(d.indexOf(":")+1,d.length()));
    		out.print("</td>");
    	}
    %>
    </tr>
    <tr id="etiq">
    <%
    	if(dias!=null && dias.size()!=0)
    	for(String d:dias){

    		out.print("<td class='rotar'>");
    		out.print(d.substring(0,d.indexOf(":")-1));
    		out.print("</td>");
    	}
    %>
    </tr>
  </tbody>
</table><BR>

</div>
</div>


</body>
</html>