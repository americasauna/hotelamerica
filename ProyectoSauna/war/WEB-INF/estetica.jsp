<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Estetica</title>

<link rel="stylesheet" type="text/css" href="../css/estiloestetica.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen" >
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
	<h1 id="titulo">Estetica</h1>
	
	<p>El Hotel Sauna & Spa AMERICA les ofrece los servicios de esteica:</p>
	<br><hr>
	</div>
	<br>	
	<center>
	<div id="conteiner">
		<div class="sec">
			<center><h3>Cabello</h3>
			<br>
			<h4>Los tratamientos profesionales para el pelo proporcionan un cuidado especializado que puede durar bastante tiempo. Suelen ser un poco más costosos que los caseros, pero valen la pena.Algunos tratamientos profesionales que deberías probar son:</h4>
			<img class="img" src="http://imagenesdepeinados.com/wp-content/uploads/2014/04/cortes-de-cabello-segun-forma-del-rostro.jpg">
			</center>
		</div>
		<hr>
		<div class="sec">
			<center><h3>Pedicure</h3>
			<br>
			<h4>Durante un día normal, los pies soportan varios kilos de peso. Además, tener pies saludables, tratarse los pies es vital para gozar de una buena salud en general. Limpia el pie, da un cuidado especial a las uña y se aplica un revitalizador masaje. Una buena Pedicure puede ser muy relajante, y si existen problemas de salud, muy terapéutico.</h4>
			<img class="img" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRZMaKHjaJaaLvrFAUvjjH1KsxT8WMlraGN2R9peBPVAkpT5Pwx">
			</center>
		</div>
		<hr>
		<div class="sec">
			<center><h3>Manicure</h3>
			<br>
			<h4>El manicure ayuda a mantener en perfecto estado las uñas y embellecer las manos y de esta manera, complementar el aspecto general de cada persona.<h4>
			<img class="img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTATFR20Nn_yrzwSt7QnsNjTvJBxyzfn-Z_83b5yQuZ39mkSeOU">
			</center>
		</div>
		<hr>
		<div class="sec">
			<center><h3>Tintes</h3>
			<br>
			<h4>Combina el color de tu cabello con tu estilo de ropa. Con nuestros productos de calidad importados de los mejores paises productores de tintes a nivel mundial.</h4>
			<img class="img" src="data:image/jpeg;base64,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">
			</center>
		</div>
	</div>
	</center>
</body>
</html>