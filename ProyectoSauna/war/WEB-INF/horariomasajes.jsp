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
<title>Horario-masajes</title>

</head>
<body>

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
	

<div id="container">   

<center><h1>Horario de Masajes</h1></center>
<br><br><br>
	<table class="zebra">
    		<thead>
        	<tr>
				<th>Fecha actualizada</th>
				<th>Hora de Inicio</th>
				<th>Hora de FIN</th>
				<th>lUGAR</th>
            </tr>
		</thead>
        <tbody>
        	<tr>
            	<td>Lunes 15</td>
                <td>10:00</td>
                <td>12:00</td>
                <td>   </td>
            </tr>
            <tr>
            	<td>Martes 16</td>
                <td>12:00</td>
                <td>15:00</td>
                <td>   </td>
            </tr>
            <tr>
            	<td>Miercoles 17</td>
                <td>15:00</td>
                <td>17:00</td>
                <td>   </td>
            </tr>
            <tr>
            	<td>Jueves 18</td>
                <td>17:00</td>
                <td>21:00</td>
                <td>   </td>
            </tr>
            <tr>
            	<td>Viernes 19</td>
                <td>21:00</td>
                <td>07:00</td>
                <td>    </td>
            </tr>
        </tbody>
	</table>
</div>

</body>
</html>