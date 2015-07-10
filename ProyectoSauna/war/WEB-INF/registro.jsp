<%@page import="sauna.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="../css/estiloregistro.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/estiloIdioma.css" media="screen" >

<script type="text/javascript" src="../js/funciones.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro</title>
</head>
<body
style="background-image:url(fond.jpg);
background-repeat: no-repeat;
width=100%;
height=100%;
margin=0;
border=0;
padding=0;">


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
								</form></li></ul>
					</td>
					
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
												<li><form method="POST" action="servicios/hospedaje" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="servicios/sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="servicios/masaje" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="servicios/estetica" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="servicios/estetica/cabello" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="servcios/estetica/manicure" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="servicios/estetica/pedicure" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
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
								<form action="/reservacion" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
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
							
					<td><img height="75" width="300" src="/spa.jpg" alt=""></td>
					
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
								<form method="POST" action="/login" >
	<input type="hidden" name="ingresar" value="ingresar">
	<input class="po"type="submit" value="INICIAR SESION">
								</form>
								<%}else{%>
								<form action="/1" method="POST"><input type="hidden" name="cerrar" value="cerrar">
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
		</div> <br>
		<input  type = "submit" value="TRADUCIR" id="submitt" ><br>
		</form>
	</div>
	</div>
	</div>

		
/<div STYLE="left:20px; width:500px; padding:50px; background-color: rgba(225,64,0,0.2);font-style: oblique; margin-left: 30%; font-size: 25px;">


<form action ="usuario" method ="post" id="formulario">
		<table>
			
				<tr>
					<td class="label" style="width: 233px; ">Nombre:</td>
					<td class="campo"><input required class="inputNormal" type="text" name="a" style="height: 35px; width: 230px"></td>
					
				</tr>
				<tr>
					<td class="label">Apellido:</td>
					<td class="campo"><input required class="inputNormal" type="text" name="b" style="height: 35px; width: 230px"></td>
					
				</tr>
				<tr>
					<td class="label">Teléfono:</td>
					<td class="campo"><input class="inputNormal" type="text" name="c" style="height: 35px; width: 230px"></td>
					
				</tr>
				<tr>
					<td class="label">DNI:</td>
					<td class="campo"><input class="inputNormal" type="number" name="d" style="height: 35px; width: 230px"></td>
					
				</tr>
				<tr>
					<td class="label">Mail:</td>
					<td class="campo"><input required class="inputNormal" type="mail" name="e" style="height: 35px; width: 230px"></td>
					
				</tr>
				<tr>
					<td class="label">Sexo</td>
					<td class="campo"><select id="sex" name="sex" style="height: 35px; width: 230px">
					  			<option selected></option>
								<option>Masculino</option>
								<option>Femenino</option>
								<option>Otros</option>
						</select></td>
				</tr>
				<tr>
					<td class="label">Direccion:</td>
					<td class="campo"><input class="inputNormal" type="mail" name="f" style="height: 35px; width: 230px"></td>
					
				</tr>
				<tr>
					<td class="label">Nacimiento:</td>

						<td><select required name="dianaci" style="width: 45px; height: 32px" >
								<%for(int i=1; i<=31; i++){%>
								<option value="<%=i %>"><%=i %></option><%} %>
								</select>
								<% String[] meses = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Setiembre", "Octubre", "Noviembre", "Diciembre"};%>
								<select name="mesnaci" style="width: 102px; height: 35px">
									<%for(int i=0; i < meses.length ; i++){%>
									<option value="<%=i+1%>"><%=meses[i] %></option>
									<%} %>
							</select>
								<select name="anionaci" style="width: 74px; height: 35px">
									<%
										for(int i=1950; i<=1996; i++){
									%>
									<option value="<%=i%>"><%=i %></option>
									<%} %>
							</select>
							
							</td>
					</tr>
					
					<tr>
					<td class="label">Usuario:</td>
					<td class="campo"><input required class="inputNormal" type="text" name="g" style="height: 35px; width: 230px"></td>
				
				</tr>
				<tr>
					<td class="label">Contraseña:</td>
					<td class="campo"><input required class="inputNormal" type="password" name="h" style="height: 35px; width: 230px"></td>
				</tr>		
		
		<tr> <th><input type="submit" value="ENVIAR" style=" height: 50px; width: 200px"></th>
             <th><input type="reset" value="BORRAR" style=" height: 50px; width: 200px"></th>
				</tr>
		</table>
		</form>
<center>
<form action="gmail" method="get">
<input type="submit" value="Registrese con su cuenta Gmail" style=" height: 60px; width: 300px"> 
</form></center>
</div>
</body>
</html>