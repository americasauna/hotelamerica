<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Servicios-Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/stilo.css"
	media="screen">
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="js/mostrar.js"></script>
</head>
<body>
	<center>
		<div class="header">
			<table width="0px">
				<tr>
					<td>
						<ul class="nav">
							<li><a href="/">Home</a></li>
						</ul>
					</td>
					<td>
						<div id="header">
							<ul class="nav">
								<li><a href="servicios.jsp">Servicios</a>
									<ul id="capa11">
										<li><a href="hospedaje.jsp">Hospedaje</a>
										<li><a href="">Sauna</a></li>
										<li><a href="masajes.jsp"> <!-- Salon de-->Masajes
										</a></li>
										<li><a href="">
												<!-- Centro de-->Estetica
										</a>
											<ul>
												<li><a href="">Cabello</a></li>
												<li><a href="">Pedicure</a></li>
												<li><a href="">Manicure</a></li>
												<li><a href="">Tintes</a></li>
											</ul></li>
										<li><a href="">Otros</a></li>
									</ul></li>
							</ul>
						</div>
					</td>

					<td><img height="75" width="300" src="spa.jpg" alt=""></td>

					<td>
						<ul class="nav">
							<li><a href="">Reservaciones</a>

								<ul id="capa1">

									<li><a href="registrohotel.jsp">Hotel</a></li>
									<li><a href="registrospa.jsp">Spa</a></li>
								</ul></li>
						</ul>
					</td>
					<td>
						<div>
							<ul class="nav">
								<li><a href="registro.jsp">Contacto/Registro</a></li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</center>
	<center>
		<br>
		<br>
		<br>
		<table width="80%">
			<tr>
				<td>
					<h2>Single Room</h2>
				</td>
			</tr>
			<tr>
				<td>
					<p>Una comoda habitacion para pasar la noche incluye los
						servicios basicos:</p>
					<ul>
						<li>Internet</li>
						<li>TV</li>
					</ul>
				</td>
			</tr>
		</table>
		<table width="80%">
			<tr>
				<td width="33%"></td>
				<td width="33%"><img src="imagen/sroom.jpg" height="350"
					width="500" alt="">
				<form action="" method="get">
						<input type="submit" value="Reservar">
					</form></td>
				<td width="33%"></td>
			</tr>
		</table>

		<br>
		<br>
		<br>
		<table width="80%">
			<tr>
				<td>
					<h2>Double Room</h2>
				</td>
			</tr>
			<tr>
				<td>
					<p>Una muy comoda habitacion con una cama para dos persona:</p>
					<ul>
						<li>Internet</li>
						<li>Room service</li>
						<li>Servicios de lavandería</li>
						<li>TV con sistema de cable</li>
					</ul>
				</td>
			</tr>
		</table>
		<table width="80%">
			<tr>
				<td width="33%"></td>
				<td width="33%"><img src="imagen/droom.jpg" height="350"
					width="500" alt="">
				<form action="">
						<input type="submit" value="Reservar">
					</form></td>
				<td width="33%"></td>
			</tr>
		</table>

		<br>
		<br>
		<br>
		<table width="80%">
			<tr>
				<td>
					<h2>Twin Room</h2>
				</td>
			</tr>
			<tr>
				<td>
					<p>Una habitacion con 2 camas:</p>
					<ul>
						<li>Internet</li>
						<li>Room service</li>
						<li>Servicios de lavandería</li>
						<li>TV con sistema de cable</li>
					</ul>
				</td>
			</tr>
		</table>
		<table width="80%">
			<tr>
				<td width="33%"></td>
				<td width="33%"><img src="imagen/troom.jpg" height="350"
					width="500" alt="">
				<form action="">
						<input type="submit" value="Reservar">
					</form></td>
				<td width="33%"></td>
			</tr>
		</table>

		<br>
		<br>
		<br>
		<table width="80%">
			<tr>
				<td>
					<h2>Suite Room</h2>
				</td>
			</tr>
			<tr>
				<td>
					<p>Una habitacion premium para pasar la noche:</p>
					<ul>
						<li>Internet</li>
						<li>Televisor LCD / Cable / Conexión USB con sistema de cable</li>
						<li>Calefacción</li>
						<li>Room service las 24 horas del día</li>
						<li>Servicios de lavandería</li>
					</ul>
				</td>
			</tr>
		</table>
		<table width="80%">
			<tr>
				<td width="33%"></td>
				<td width="33%"><img src="imagen/suroom.jpg" height="350"
					width="500" alt="">
				<form action="">
						<input type="submit" value="Reservar">
					</form></td>
				<td width="33%"></td>
			</tr>
		</table>
	</center>
</body>
</html>