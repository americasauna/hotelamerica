<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/stilo.css" media="screen" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Proyecto</title>
<script type="text/javascript" src="js/jquery.js"></script>
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

	<div id="capa2" class="principal">
		<div id="capa3" class="imagenes">
			<img src="imagen/01.jpg" alt="" > <img src="imagen/02.jpg" alt="" > 
			<img src="imagen/03.jpg" alt="" > <img src="imagen/04.jpg" alt="" >
			<img src="imagen/05.jpg" alt="" >

		</div>
	</div>

	<script type="text/javascript"  src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script type="text/javascript"  src="js/jquery.slides.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".imagenes").slidesjs({
				play : {
					active : true,
					effect : "slide",
					interval : 3000,
					auto : true,
					swap : true,
					pauseOnHover : false,
					restartDelay : 2500
				}
			});
		});
	</script>}
	

	
	<center><div><hr align="center" noshade="noshade" size="2" width="75%" ></div></center>
	<br>
	<center>
	<div>
	<a href="horarios.jsp" class="horario">Horarios</a>
	</div>
	
	</center>
	<center><div>
	<table width="89%">
	<tr><th>
	<div class="maps"><center>
	<h2>Mapa de Ubicación</h2></center>
	
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.774284777349!2d-71.
	52130199999998!3d-16.436285999999992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!
	4f13.1!3m3!1m2!1s0x91424b262fbde513%3A0xeeeaa7fd269ac062!
	2sAmerica%2C+Hotel+Sauna+%26+Spa!5e0!3m2!1ses!2spe!4v1434223754506" 
	width="600" height="450" frameborder="1" style="border:2px">
	</iframe>
	</div>
	</th>
	<td>
	<br><br><center>
	<h2 >Realiza tus pagos </h2></center>
	
	<div class="pagos">
	<table class="table">
	<tr><th>
	<a href="https://www.viabcp.com/wps/portal/viabcpp/personas" target="_blank">
 <img src="imagen/bancobcp.jpg" alt="">
</a></th>
	<th>
	 <div>            	
	 		Con pagos en BCP <br>
	 		obtendras <br>
            10% de descuento servicios <br>
            propios de nuestro hotel
            </div>
	</th></tr>
	<tr><th>
	<a href="https://www.visanet.com.pe/" target="_blank">
 <img src="imagen/visa.jpg" alt="">
</a></th>
	<th>
	 <div style=" line-height: 25px">
            	Realiza pagos con tu tarjeta<br>
               Visa y acumula puntos 
            </div>
	</th></tr>
	<tr><th>
	<a href="https://comparte.mastercard.com/pe/" target="_blank">
 <img src="imagen/mastercard.png" alt="">
</a></th>
	<th>
	 <div style=" line-height: 25px">
            	Paga con tu tarjeta MasterCard<br>
               	y reserva una habitacion con un<br>
               10% de descuento
            </div>
	</th></tr>
	<tr>
	<th>
	<a href="http://www.scotiabank.com.pe/Personas/Default" target="_blank">
 <img src="imagen/scotiabank.jpg" alt="">
</a>
	</th>
	<th>
    <div style=" line-height: 25px">
            	Obten muchas mas promociones<br>
               	en reservaciones pagando en <br>
                en reservaciones pagando en<br>
				Scotiabank.
            </div>
	</th>
	</tr></table></div>
	
	</td></tr>
	</table>
	</div></center>
   
   
    <div style="height:25px"></div>
    <div class="line"></div>
    <div id="bottom">
        <div id="b_col1">
            <h1>About</h1>
            <div style="height:10px"></div>
SPA WORLD is the total Family spa resort the runs 24/7 Throughout the year. Open Hour: 24 hour on Poultice room, Sauna, Bade pool and Fitness center
        </div>
        <div id="b_col2">
            <h1>Contact Information</h1>
            <div style="height:20px"></div>
            <div style=" line-height: 25px">
            	13830-A10 Braddock Road,<br>
                Centreville, VA 20121<br>
                Phone:  703-815-8959<br>
				E-mail: info@spaworld.com
            </div>
        </div>
        <div id="b_col3">
            <h1>Quick Navigation</h1>
            <div style="height:15px"></div>
            <table border="0">
              <tr>
                <td style="width: 76px;"><a href="#" class="a_qn">Facilities</a></td>
                <td><a href="#" class="a_qn">Community</a></td>
              </tr>
              <tr>
                <td ><a href="galeria.jsp" class="a_qn">Gallary</a></td>
                <td><a href="#" class="a_qn">About us</a></td>
              </tr>
            </table>
        </div>
        <div id="b_col4">
            <h1>Follow Us</h1>
            <div style="height:15px"></div>
            <ul class="spis_fu">
                <li><img src="imagen/carta.jpg" class=" fu_i" alt="" ><a href="#">Subscribe to Blog</a></li>
                <li><img src="imagen/facebook.jpg" class=" fu_i" alt="" ><a href="https://www.facebook.com/pages/America-Hotel-Sauna-Spa/292260277482762?fref=ts">Be a fan on Facebook</a></li>
                <li><img src="imagen/red.jpg" class=" fu_i" alt="" ><a href="#">RSS Feed</a></li>
	                <li><img src="imagen/twitter.png" class=" fu_i" alt="" ><a href="#">Follow us on Twitter</a></li>
            </ul> 
        </div>
       </div>
       <a href="http://validator.w3.org/check?uri=http%3A%2F%2F4-dot-proyectosaunaspa.appspot.com%2F&charset=%28detect+automatically%29&doctype=Inline&group=0&user-agent=W3C_Validator%2F1.3+http%3A%2F%2Fvalidator.w3.org%2Fservices">
<img src="http://www.w3.org/Icons/valid-html401" alt="Valid HTML 4.01 Transitional" height="31" width="88">
</a>
<a href="https://jigsaw.w3.org/css-validator/validator?uri=http%3A%2F%2F4-dot-proyectosaunaspa.appspot.com%2F&profile=css3&usermedium=all&warning=1&vextwarning=&lang=es">
<img style="border:0;width:88px;height:31px"
            src="http://jigsaw.w3.org/css-validator/images/vcss"
            alt="¡CSS Válido!">
</a>
</body>
</html>