<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Servicios</title>
<link rel="stylesheet" type="text/css" href="css/estiloservicios.css" media="screen" >
<link rel="stylesheet" type="text/css" href="css/stilo.css" media="screen" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery_min.js"></script>
<script type="text/javascript" src="js/slimbox2.js"></script>
<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen">
</head>
<body>
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

	
	<div>
	<h1 id="titulo">Servicios</h1>
	<hr>
	<h3>El Hotel Sauna & Spa AMERICA les ofrece los siguientes servicios:</h3>
	</div>
	<br>	
	<center>
	<div id="conteiner">
	<table id="serv" cellspacing="50">
	<tr>
		<th><a href="imgServicios/habitaciones.jpg" rel="lightbox"><img class="img" src="imgServicios/habitaciones.jpg" alt="" ></a>
		</th>
		<td id="des">
			<h3><a href="">Hospedaje</a></h3><br><h4 class="des">Sienta la comodidad de un cálido hogar.<br>Contamos con diferentes tipos de habitaciones adaptables a sus ncesidades.</h4>
		</td>
	</tr>
	<tr>
		<th><a href="imgServicios/Sauna.jpg" rel="lightbox"><img class="img" src="imgServicios/Sauna.jpg" alt="" ></a>
		</th>
		<td class="des">
			<h3><a href="">Sauna</a></h3><br><h4 class="des">Un lugar perfecto para relajarse despues de mucho estrés.<br>Contamos con baños de Sauna segun su preferencia.</h4>
		</td>
	</tr>
	<tr>
		<th><a href="imgServicios/masaje-pareja.jpg" rel="lightbox"><img class="img" src="imgServicios/masaje-pareja.jpg" alt="" ></a>
		</th>
		<td class="des">
			<h3><a href="">Masajes</a></h3><br><h4 class="des">A los hombres les encanta maravillarse. Esto es la semilla de la ciencia."<br>Y que mejor que unos placenteros masajes realizados por nuestro personal especializado.</h4>
		</td>
	</tr>
	<tr>
		<th><a href="imgServicios/estetica1.jpg" rel="lightbox"><img class="img" src="imgServicios/estetica1.jpg" alt="" ></a>
		</th>
		<td class="des">
			<h3><a href="">Estética</a></h3><br><h4 class="des">Sé el centro de atención de la reunion con tu estilo unico.<br>Tu imagen estara a cargo de los mejores estilistas de la ciudad.</h4>
		</td>
	</tr>
	<tr>
		<th><a href="imgServicios/restaurant.jpg" rel="lightbox"><img class="img" src="imgServicios/restaurant.jpg" alt="" ></a>
		</th>
		<td class="des">
			<h3><a href="index.html">Restaurant</a></h3><br><h4 class="des">Disfrute su comida como nosotros al cocinarla.<br>Tenemos un comedor, ademas de un restaurant y cafeteria.</h4>
		</td>
	</tr>
	</table>
	</div>
	</center>
</body>
</html>