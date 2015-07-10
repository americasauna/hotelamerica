<%@page import="sauna.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/engine0/estilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="css/stilo.css" media="screen" >
</head>
<body>

<%if(user!=null && user.equals("admin")){ %>
	<input type="button" onclick=" location.href='Administracion.jsp' "
		value="ADMINISTRAR EMPRESA" name="boton" width="100px"  height="120px"/>
	<%}%>

	<center>
		<div class="header">
			<table >
				<tr>
					<%if(user!=null && user.equals("admin")){ %>
							<td><ul class="nav">
							<li><form action="sauna" method="POST">
							<input type="hidden" name="administrador" value="administrador">
								<input class="po" type="submit" value="ADMINISTRAR">
								</form></li></ul>
	
					</td><%}%>
				
					<td>
						<ul class="nav">
							<li><form action="sauna" method="POST">
							<input type="hidden" name="home" value="home">
								<input class="po" type="submit" value="HOME">
								</form></li></ul></td>
					<td>
						<div id="header">
								<ul class="nav">
									<li>
									<form method="POST"action="sauna" ><input type="hidden" name="servicios" value="servicios">
								<input class="po"type="submit" value="SERVICIOS">
								</form> 
								<!--	<form action="sauna" method="get" name="f1" id="f1">
										<input type="hidden" name="enlace" value="servicios">
									</form>
									-->
									<ul  id="capa11">
												<li><form method="POST" action="sauna" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="sauna" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="sauna" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="sauna" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="sauna" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="sauna" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
								<input class="sub"type="submit" value="PEDICURE">
								</form></li>
														<li><form action="sauna" method="POST"><input type="hidden" name="restaurante" value="restaurante">
								<input class="sub"type="submit" value="RESTAURANT">
								</form></li>
													</ul></li>
											
											</ul></li>
								</ul>
						</div></td>

					<td><img height="75" width="300" src="/spa.jpg" alt=""></td>
     
					<td>
						<ul class="nav">
								<li>
								<form action="sauna" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
								<input class="po"type="submit" value="RESERVACIONES">
								</form>
									
									<ul  id="capa1">
											
											<li><form method="POST" action="sauna" ><input type="hidden" name="hotel" value="hotel">
								<input class="sub"type="submit" value="HOTEL">
								</form></li>
											<li><form method="POST" action="sauna" ><input type="hidden" name="spa" value="spa">
								<input class="sub" type="submit" value="SPA">
								</form></li>
									</ul>
									
										
									</li>
							</ul></td>
					<td>
						<div >
							<ul class="nav">
								<li>
								<%if(user==null){ %>
								<form action="sauna" method="POST"><input type="hidden" name="contacto" value="contacto">
								<input class="po" type="submit" value="CONTACTO/REGISTRO">
								</form><%}else{%>
								<form action="sauna" method="POST"><input type="hidden" name="cerrar" value="cerrar">
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
		<table id="tablamm">
	<tr>
	<td>
	 <h1 class="titu">LORENA</h1>
	 Masajista Profesional
	Masaje descontracturante y relajante. <br>
	Antiestres. Sedativo.
	Masaje circulatorio. Drenaje linfático manual.
	Reflexología
	Masajes reductores. Tratamientos de estética.
	- Atención ambos sexos -  
	</td>
	<td> <img src="css/data0/images/lorena.jpg" alt=""></td>
	</tr>
	<tr><td> <h1 class="titu">MAGALY</h1>
     Masajista Matriculada ( Mat. 19417 )
	Si tenés ganas de sentirte pleno y experimentar una
	sensación de bienestar total, es el momento de decir
	adiós al estres.Masajes Descontracturantes.Deportivos. 
	Shiatsu.Quiropraxia. Reflexología de manos y pies.
	Solicitar turnos con más de dos horas de anticipación.
	</td>
	<td>  <img src ="css/data0/images/magaly.jpg" alt=""></td>
	<tr>
	<td><h1 class="titu">Malena</h1>
	Masajes Descontracturantes
	Piedras calientes. Relax. Anti estres
	</td>
	<td> <img src="css/data0/images/malena.jpg"alt=""></td>
	
    </tr>
	<tr>
	<td><h1 class="titu">Normi</h1>
	Masajista Profesional 
	Masajes descontracturantes, relajantes y sedativos. 
	Reflexología.
	Gabinete confortable. Absoluta privacidad.
	Trabajo sola, en mi consultorio propio
	Recomendacion Cahuina de s.....!
	- Atención ambos sexos -
	</td>
	<td> <img src="css/data0/images/Normi.jpg"alt=""></td>
	</tr>
	</table>
</body>
</html>