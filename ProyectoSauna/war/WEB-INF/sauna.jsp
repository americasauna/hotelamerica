<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<html>
<head>
<title>Sauna</title>
<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/estiloservicios.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/estiloIdioma.css" media="screen" >

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery_min.js"></script>
<script type="text/javascript" src="../js/slimbox2.js"></script>
<link rel="stylesheet" href="../css/slimbox2.css" type="text/css" media="screen">
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
												<li><form method="POST" action="hospedaje" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="masaje" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="estetica" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="estetica/cabello" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="estetica/manicure" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="estetica/pedicure" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
								<input class="sub"type="submit" value="PEDICURE">
								</form></li>
														
													</ul></li>
											<li><form action="restaurant" method="POST"><input type="hidden" name="restaurant" value="restaurant">
								<input class="sub"type="submit" value="RESTAURANT">
								</form></li>
											</ul></li>
								</ul>
						</div></td>
     
					<td>
						<ul class="nav">
								<li>
								<form action="../reservacion" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
								<input class="po"type="submit" value="RESERVACIONES">
								</form>
									
									<ul  id="capa1">
											
											<li><form method="POST" action="../reservacion/hotel" ><input type="hidden" name="hotel" value="hotel">
								<input class="sub"type="submit" value="HOTEL">
								</form></li>
											<li><form method="POST" action="../reservacion/spa" ><input type="hidden" name="spa" value="spa">
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
					<option value="esp">Espa�ol</option>
					<option value="ing">Ingles</option>
		</select> 
		</div> <br>
		<input  type = "submit" value="TRADUCIR" id="submitt" ><br>
		</form>
	</div>
	</div>
	</div>
	
	
	<div>
	<h1 id="titulo">Sauna</h1>
	<hr>
	<p>El Hotel Sauna & Spa AMERICA les ofrece los servicios de sauna:</p>
	</div>
	<br>	
	<center>
	<div id="conteiner">
	<table id="serv" cellspacing="50">
	<tr>
		<td class="des">
			<h3>UNA CAMARA SECA</h3><br><h4 class="des">Reduce calorías a través de la transpiraci{on, recomendable tomar duchas frías entre cada ingreso a las cámaras y reposar en los intervalos.</h4>
			<form action="" method="get">
				<input type="submit" value="Reservar">
			</form>
		</td>
		<th><a href="http://www.saunahostalmonterrey.com/img/banners/barp1.jpg" rel="lightbox"><img class="img" src="http://www.saunahostalmonterrey.com/img/banners/barp1.jpg" alt="" ></a>
		</th>
	</tr>
	<tr>
		<td class="des">
			<h3>DOS CAMARAS A VAPOR</h3><br><h4 class="des">Temperaturas de 70° a 80°C el vapor dilata los poros de la piel favoreciendo la transpiración y así eliminar toxinas, acelera la circulación de la sangre y relaja los músculos nosotros utilizamos distintas clases de yerbas eucalipto, menta, manzanilla.</h4>
			<form action="" method="get">
				<input type="submit" value="Reservar">
			</form>
		</td>
		<th><a href="http://www.saunahostalmonterrey.com/img/banners/barp2.jpg" rel="lightbox"><img class="img" src="http://www.saunahostalmonterrey.com/img/banners/barp2.jpg" alt="" ></a>
		</th>
	</tr>
	<tr>
		<td class="des">
			<h3>DOS HIDROMASAJES</h3><br><h4 class="des">Con potentes inyecciones de agua que producirán un masaje, especialmente espalda y pies.</h4>
			<form action="" method="get">
				<input type="submit" value="Reservar">
			</form>
		</td>
		<th><a href="http://www.saunahostalmonterrey.com/img/banners/barp3.jpg" rel="lightbox"><img class="img" src="http://www.saunahostalmonterrey.com/img/banners/barp3.jpg" alt="" ></a>
		</th>
		
	</tr>
	<tr>
		<td class="des">
			<h3>PISCINA TEMPERADA</h3><br><h4 class="des">Con efectos de chorro de agua y una cascada que te da la sensación de estar junto con la naturaleza.</h4>
			<form action="" method="get">
				<input type="submit" value="Reservar">
			</form>
		</td>
		<th><a href="http://www.saunahostalmonterrey.com/img/banners/barp4.jpg" rel="lightbox"><img class="img" src="http://www.saunahostalmonterrey.com/img/banners/barp4.jpg" alt="" ></a>
		</th>
		
	</tr>
	<tr>
		<td class="des">
			<h3>DUCHA ESPAÑOLA</h3><br><h4 class="des">Chorros de agua, fría excelente entre los intervalos complemento de los baños turcos.</h4>
			<form action="" method="get">
				<input type="submit" value="Reservar">
			</form>
		</td>
		<th><a href="http://www.saunahostalmonterrey.com/img/banners/barp5.jpg" rel="lightbox"><img class="img" src="http://www.saunahostalmonterrey.com/img/banners/barp5.jpg" alt="" ></a>
		</th>
		
	</tr>
	<tr>
		<td class="des">
			<h3>SALA DE MASAJES</h3><br><h4 class="des">Ambientes amplios con música ambiental. </h4>
			<form action="" method="get">
				<input type="submit" value="Reservar">
			</form>
		</td>
		<th><a href="http://www.saunahostalmonterrey.com/img/banners/barp6.jpg" rel="lightbox"><img class="img" src="http://www.saunahostalmonterrey.com/img/banners/barp6.jpg" alt="" ></a>
		</th>
		
	</tr>
	</table>
	</div>
	</center>
</body>
</html>