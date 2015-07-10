<%@page import="sauna.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/engine0/style.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/engine0/estilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/engine0/style.mod.css" media="screen" >
<link rel="stylesheet" type="text/css" href="/css/estiloIdioma.css" media="screen" >

<script type="text/javascript" src="../css/engine0/jquery.js"></script>

	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="../css/engine1/style.css" >
	<!--script type="text/javascript" src="engine1/jquery.js"></script-->
	<!-- End WOWSlider.com HEAD section -->
	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="../css/engine2/style.css" >
	<!--script type="text/javascript" src="engine2/jquery.js"></script-->
	<!-- End WOWSlider.com HEAD section --></head>
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
					<option value="esp">Español</option>
					<option value="ing">Ingles</option>
		</select> 
		</div> <br>
		<input  type = "submit" value="TRADUCIR" id="submitt" ><br>
		</form>
	</div>
	</div>
	</div>
	
	
		<table id="tablaM">
		<tr>
			<td><h2 class="titu">Masajes Relajantes</h2><br>
	El masaje relajante es una alternativa para experimentar<br>
	 un estado de paz frente a las presiones de la vida diaria<br>
	  y es una poderosa herramienta antiestres que regala total <br>
	  tranquilidad y descanzo f�sico y emocional a la paciente,<br>
	   adem�s de sus conocidos efectos a favor de la circulaci�n</td>
			<td>
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container0">
	<div class="ws_images"><ul>
		<li><img src="../css/data0/images/m1.jpg" alt="m1" title="m1" id="wows0_0"></li>
		<li><img src="../css/data0/images/m2.jpg" alt="m2" title="m2" id="wows0_1"></li>
		<li><img src="../css/data0/images/m3.jpg" alt="m3" title="m3" id="wows0_2"></li>
		<li><img src="../css/data0/images/m4.jpg" alt="m4" title="m4" id="wows0_3"></li>
		<li><a href="http://wowslider.com/vi"><img src="../data0/images/m5.jpg" alt="wordpress slider" title="m5" id="wows0_4"></a></li>
		<li><img src="../css/data0/images/m6.jpg" alt="m6" title="m6" id="wows0_5"></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="m1"><span><img src="../css/data0/tooltips/m1.jpg" alt="m1">1</span></a>
		<a href="#" title="m2"><span><img src="../css/data0/tooltips/m2.jpg" alt="m2">2</span></a>
		<a href="#" title="m3"><span><img src="../css/data0/tooltips/m3.jpg" alt="m3">3</span></a>
		<a href="#" title="m4"><span><img src="../css/data0/tooltips/m4.jpg" alt="m4">4</span></a>
		<a href="#" title="m5"><span><img src="../css/data0/tooltips/m5.jpg" alt="m5">5</span></a>
		<a href="#" title="m6"><span><img src="../css/data0/tooltips/m6.jpg" alt="m6">6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">jquery photo gallery</a> by WOWSlider.com v8.2</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="../engine0/wowslider.js"></script>
	<script type="text/javascript" src="../engine0/script.js"></script>
	
	<!-- End WOWSlider.com BODY section --></td>
		</tr>
		<tr>
		<td><h2 class="titu">Masajes Descontracturantes</h2>
		<br> Una contractura muscular es una contracción <br>
             persistente e involuntaria del músculo. Un <br>
			 músculo se contrae y se distiende, pero en <br>
			 algunos casos, una zona del vasto muscular no<br>
			 se relaja y sigue contraída.
		</td>
		<td>
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="../css/data1/images/d1.jpg" alt="d1" title="d1" id="wows1_0"></li>
		<li><a href="http://wowslider.com/vi"><img src="../data1/images/d2.jpg" alt="javascript slideshow" title="d2" id="wows1_1"></a></li>
		<li><img src="../css/data1/images/d3.jpg" alt="d3" title="d3" id="wows1_2"></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="d1"><span><img src="../css/data1/tooltips/d1.jpg" alt="d1">1</span></a>
		<a href="#" title="d2"><span><img src="../css/data1/tooltips/d2.jpg" alt="d2">2</span></a>
		<a href="#" title="d3"><span><img src="../css/data1/tooltips/d3.jpg" alt="d3">3</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">responsive slider</a> by WOWSlider.com v8.2</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="../css/engine1/wowslider.js"></script>
	<script type="text/javascript" src="../css/engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section --><!-- End WOWSlider.com BODY section --></td>
		
	
		</tr>
		<tr>
		<td>
		<h2 class="titu"> MASAJE CON PIEDRAS CALIENTES</h2>
          Puedes elegir entre un masaje relajante o descontracturante <br>
		  y sumarle un masaje con piedras calientes. Este es nuestro <br>
		  servicio premium. El masaje con piedras calientes combina el<br>
		  masaje terapéutico tradicional con la aplicación de piedras <br>
		  calientes sobre la piel.
		  
		</td>
		<td>
		
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container2">
	<div class="ws_images"><ul>
		<li><img src="../css/data2/images/p1.jpg" alt="p1" title="p1" id="wows2_0"></li>
		<li><img src="../css/data2/images/p2.jpg" alt="p2" title="p2" id="wows2_1"></li>
		<li><img src="../css/data2/images/p3.jpg" alt="p3" title="p3" id="wows2_2"></li>
		<li><a href="http://wowslider.com/vi"><img src="data2/images/p4.jpg" alt="responsive slider" title="p4" id="wows2_3"></a></li>
		<li><img src="../css/data2/images/p5.jpg" alt="p5" title="p5" id="wows2_4"></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="p1"><span><img src="../css/data2/tooltips/p1.jpg" alt="p1">1</span></a>
		<a href="#" title="p2"><span><img src="../css/data2/tooltips/p2.jpg" alt="p2">2</span></a>
		<a href="#" title="p3"><span><img src="../css/data2/tooltips/p3.jpg" alt="p3">3</span></a>
		<a href="#" title="p4"><span><img src="../css/data2/tooltips/p4.jpg" alt="p4">4</span></a>
		<a href="#" title="p5"><span><img src="../css/data2/tooltips/p5.jpg" alt="p5">5</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">responsive slider</a> by WOWSlider.com v8.2</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="../engine2/wowslider.js"></script>
	<script type="text/javascript" src="../engine2/script.js"></script>
	<!-- End WOWSlider.com BODY section --></td>
		</tr>
	</table>
</body>
</html>