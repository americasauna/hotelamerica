<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="javax.print.attribute.DocAttribute"%>
<%@page import="com.google.appengine.api.search.Document"%>
<%@page import="sauna.*"%>
<%@page import="beans.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.jdo.Query"%>
<%@page import="javax.jdo.PersistenceManager"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession menu=request.getSession(true);%>
<%menu.setAttribute("index", "index");%>
<%menu.setAttribute("idioma", "");%>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<%String us=(String) request.getAttribute("usuario");%>

<%boolean flag=false;
if(user!=null && user.equals("admin")){
	flag=true;}%>
<%registro.setAttribute("flag", flag);%>

<%PersistenceManager pm = PMF.get().getPersistenceManager();
Query q = pm.newQuery(Visitas.class);
Visitas vistas=null;
List<Visitas> visitas = (List<Visitas>) q.execute();
if(visitas.isEmpty()){
	vistas = new Visitas();
	pm.makePersistent(vistas);
}else{
	visitas.get(0).addVisita();
}%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/stilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="/css/estiloIdioma.css" media="screen" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Proyecto</title>
<script type="text/javascript" src="/js/jquery.js"></script>
	<style>
	.sugerir{
		opacity:0;
	}
	.sugerir:target{
		opacity:1;
	}
	.idiomas{
		opacity:0;
	}
	.idiomas:target{
		opacity:1;
	}
</style>
<script> 
 
</script> 

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
								<form action="" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
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
	</script>
	

	
	<center><div><hr align="center" noshade="noshade" size="2" width="75%" ></div></center>
	<br>
	<center>
	<div id="horarios" >
	<form method="POST"action="sauna" ><input type="hidden" name="horarios" value="horarios">
								<input class="po"type="submit"value="HORARIOS" style="margin: 50px;">
								</form>
	</div>
	<p><a> Forma Parte de nuestra comunidad</a></p>
	<%if(user==null){ %>	
	<!--  <p><a href="ingresar.jsp"><img src="imagen/ingresa.png" alt="" ></a></p>-->
	
	<form action="registro" method="POST"><input type="hidden" name="contacto" value="contacto">
								<input class="po" type="submit" value="REGISTRARSE">
								</form>
	<%} %>
	
	
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
	
	<a href="https://www.dropbox.com/sh/mpp7omw5o56u7mm/AAC3l6puwV-zxWZSBjPD--HWa?dl=0" style="margin-left: 8%;">PLAN DE  TRABAJOS</a>
   
   
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
            
              <ul>
                <li><a href="#" class="a_qn">Facilities</a></li>
                <li><a href="#" class="a_qn">Community</a></li>
                <li><a href="galeria.jsp" class="a_qn">Gallary</a></li>
                <li><a href="#" class="a_qn">About us</a></li>
              </ul>
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