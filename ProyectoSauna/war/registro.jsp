<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/estilomenu.css" media="screen" >
<link rel="stylesheet" type="text/css" href="css/estiloregistro.css" media="screen" >
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<script type="text/javascript" src="js/funciones.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro</title>
</head>
<body
style="background-image:url(fond.jpg);
backgroun-repeat: no-repeat;
width=100%;
height=100%;
margin=0;
border=0;
padding=0;">
	<center>
		<div class="header">
			<table width="0px">
				<tr>
					<td>
						<ul class="nav">
							<li><a href="/">Home</a></li></ul></td>
					<td>
						<div id="header">
								<ul class="nav">
									<li><a href="servicios.jsp">Servicios</a>
										<ul id="capa11">
												<li><a href="hospedaje.jsp">Hospedaje</a>
												<li><a href="">Sauna</a></li>
												<li><a href="masajes.jsp">
														<!-- Salon de-->Masajes</a></li>
												<li><a href=""><!-- Centro de-->Estetica</a>
													<ul>
														<li><a href="">Cabello</a></li>
														<li><a href="">Pedicure</a></li>
														<li><a href="">Manicure</a></li>
														<li><a href="">Tintes</a></li>
													</ul></li>
													<li><a href="">Otros</a></li>
											</ul></li>
								</ul>
						</div></td>

					<td><img height="75" width="300" src="spa.jpg" alt=""></td>

					<td>
						<ul class="nav">
								<li><a href="">Reservaciones</a>
									
									<ul id="capa1">
											
											<li><a href="registrohotel.jsp">Hotel</a></li>
											<li><a href="registrospa.jsp">Spa</a></li>
									</ul>
									
										
									</li>
							</ul></td>
					<td>
						<div >
							<ul class="nav">
								<li><a href="registro.jsp">Contacto/Registro</a></li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</center>
<h1>Registrase</h1>
<div STYLE="left:20px; width:500px; padding:50px; background-color: rgba(225,64,0,0.2);font-style: oblique; margin-left: 30%;">


<form id="formulario">
		<div id="transparencia">
			<div id="transparenciaMensaje">aaaaaaaaaaaa</div>
		</div>
		<table>
			
				<tr>
					<td class="label">Nombre:</td>
					<td class="campo"><input class="inputNormal" type="text" id="inputNombre"></td>
					<td class="ayuda"><img src="imagen/ayuda.gif" alt="Ayuda" onmouseover="muestraAyuda(event, 'Nombre')"></td>
				</tr>
				<tr>
					<td class="label">Apellido:</td>
					<td class="campo"><input class="inputNormal" type="text" id="inputEmpresa"></td>
					<td class="ayuda"><img src="imagen/ayuda.gif" alt="Ayuda" onmouseover="muestraAyuda(event, 'Apellido')"></td>
				</tr>
				<tr>
					<td class="label">Teléfono:</td>
					<td class="campo"><input class="inputNormal" type="text" id="inputTelefono"></td>
					<td class="ayuda"><img src="imagen/ayuda.gif" alt="Ayuda" onmouseover="muestraAyuda(event, 'Telefono')"></td>
				</tr>
				<tr>
					<td class="label">Mail:</td>
					<td class="campo"><input class="inputNormal" type="mail" id="inputCorreo"></td>
					<td class="ayuda"><img src="imagen/ayuda.gif" alt="Ayuda" onmouseover="muestraAyuda(event, 'Correo')"></td>
				</tr>
				<tr>
					<td class="label">Sexo</td>
					<td class="campo"><select id="sex" name="sex">
					  			<option selected></option>
								<option>Masculino</option>
								<option>Femenino</option>
								<option>Otros</option>
						</select></td>
					<td class="ayuda"><img src="imagen/ayuda.gif" alt="Ayuda" onmouseover="muestraAyuda(event, 'Genero')"></td>
				</tr>
				<tr>
					<td class="label">Direccion:</td>
					<td class="campo"><input class="inputNormal" type="mail" id="inputCorreo"></td>
					<td class="ayuda"><img src="imagen/ayuda.gif" alt="Ayuda" onmouseover="muestraAyuda(event, 'Direccion')"></td>
				</tr>
				<tr>
					<td class="label">Nacimiento:</td>

						</select> <br>
						<br> 
						<select name="dianaci" style="width: 40px">
								<%for(int i=1; i<=31; i++){%>
								<option value="<%=i %>"><%=i %></option><%} %>
								</select>
								<% String[] meses = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Setiembre", "Octubre", "Noviembre", "Diciembre"};%>
								<select name="mesnaci" style="width: 90px;">
									<%for(int i=0; i < meses.length ; i++){%>
									<option value="<%=i+1%>"><%=meses[i] %></option>
									<%} %>
							</select>
								<select name="anionaci" style="width: 60px">
									<%
										for(int i=1950; i<=1996; i++){
									%>
									<option value="<%=i%>"><%=i %></option>
									<%} %>
							</select>
							</td>
							
					</tr>
					
		</table>
				<br>
		<div>
			<button id="botonEnviar" onClick="validaForm()" type="button">Enviar</button>
			<button type="reset">Borrar</button>
		</div>
		</form>
<center>
<h4>-o-</h4>
<form action="gmail" method="get">
<input type="submit" value="Registrese con su cuenta Gmail" style=" height: 60px; width: 300px"> 
</form></center>
<div id="mensajesAyuda">
	<div id="ayudaTitulo"></div>
	<div id="ayudaTexto"></div>
</div>
</div>
</body>
</html>