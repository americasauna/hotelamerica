<%@page import="sauna.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../a/jquery.datetimepicker.css">
<link rel="stylesheet" type="text/css" href="../css/estiloregspa.css" media="screen">
<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen">
<link rel="stylesheet" type="text/css" href="../css/estiloIdioma.css" media="screen" >
<title>Reservaciones Spa</title>
<script type="text/javascript" src="../js/jsregspa.js"></script>
<script src="../a/jquery.js"></script>
<script src="../a/jquery.datetimepicker.js"></script>
<script>
jQuery(function() {
	jQuery('#date_timepicker_start').datetimepicker(
			{
				format : 'Y/m/d',
				onShow : function(ct) {
					this
							.setOptions({
								maxDate : jQuery('#date_timepicker_end')
										.val() ? jQuery(
										'#date_timepicker_end').val()
										: false
							})
				},
				timepicker : false
			});
	jQuery('#date_timepicker_end').datetimepicker(
			{
				format : 'Y/m/d',
				onShow : function(ct) {
					this
							.setOptions({
								minDate : jQuery('#date_timepicker_start')
										.val() ? jQuery(
										'#date_timepicker_start').val()
										: false
							})
				},
				timepicker : false
			});
});
</script>
<script>
function validar() {
var indice = document.wtf.selprod.selectedIndex; 
var servicio = document.wtf.selprod.options[indice].text;

var indice2 = document.wtf.yesorno.selectedIndex; 
var servicio2 = document.wtf.yesorno.options[indice2].text;

div1 = document.getElementById("errorserv");
div2 = document.getElementById("erroraten");

if (servicio2==document.wtf.yesorno.options[0].value) {
	div2.style.display = "";
} else {
	div2.style.display = "none";
}
if (servicio==document.wtf.selprod.options[0].value) {
	div1.style.display = "";
} else {
	div1.style.display = "none";
}

div3 = document.getElementById("errorname");
var indice3 = document.wtf.trabajador1.selectedIndex;  var servicio3 = document.wtf.trabajador1.options[indice3].text;
var indice4 = document.wtf.trabajador2.selectedIndex;  var servicio4 = document.wtf.trabajador2.options[indice4].text;
var indice5 = document.wtf.trabajador3.selectedIndex;  var servicio5 = document.wtf.trabajador3.options[indice5].text;
var indice6 = document.wtf.trabajador4.selectedIndex;  var servicio6 = document.wtf.trabajador4.options[indice6].text;
var indice7 = document.wtf.trabajador5.selectedIndex;  var servicio7 = document.wtf.trabajador5.options[indice7].text;

if ( (!(servicio3==document.wtf.trabajador1.options[0].text)&&!(document.getElementById("selmas").style.display=="none")) || (!(servicio4==document.wtf.trabajador2.options[0].text)&&!(document.getElementById("selman").style.display=="none")) || (!(servicio5==document.wtf.trabajador3.options[0].text)&&!(document.getElementById("selped").style.display=="none")) || (!(servicio6==document.wtf.trabajador4.options[0].text)&&!(document.getElementById("selmcab").style.display=="none")) || (!(servicio7==document.wtf.trabajador5.options[0].text)&&!(document.getElementById("seltin").style.display=="none")) ) {
	div3.style.display = "none";
} else {
	div3.style.display = "";
}

div4 = document.getElementById("errorturn");
var indice8 = document.wtf.turn.selectedIndex;  var servicio8 = document.wtf.turn.options[indice8].text;
if (servicio8==document.wtf.turn.options[0].text) {
	div4.style.display = "";
} else {
	div4.style.display = "none";
}

div5 = document.getElementById("errorhor");
var indice8 = document.wtf.turnma.selectedIndex;  var servicio8 = document.wtf.turnma.options[indice8].text;
var indice9 = document.wtf.turnta.selectedIndex;  var servicio9 = document.wtf.turnta.options[indice9].text;
var indice10 = document.wtf.turnno.selectedIndex;  var servicio10 = document.wtf.turnno.options[indice10].text;

if ((!(servicio8==document.wtf.turnma.options[0].text)&&!(document.getElementById("turnm").style.display=="none"))||(!(servicio9==document.wtf.turnta.options[0].text)&&!(document.getElementById("turnt").style.display=="none"))||(!(servicio10==document.wtf.turnno.options[0].text)&&!(document.getElementById("turnn").style.display=="none"))) {
	div5.style.display = "none";
} else {
	div5.style.display = "";
}
if(!(servicio2==document.wtf.yesorno.options[0].value)&& !(servicio==document.wtf.selprod.options[0].value) && ( (!(servicio3==document.wtf.trabajador1.options[0].text)&&!(document.getElementById("selmas").style.display=="none")) || (!(servicio4==document.wtf.trabajador2.options[0].text)&&!(document.getElementById("selman").style.display=="none")) || (!(servicio5==document.wtf.trabajador3.options[0].text)&&!(document.getElementById("selped").style.display=="none")) || (!(servicio6==document.wtf.trabajador4.options[0].text)&&!(document.getElementById("selmcab").style.display=="none")) || (!(servicio7==document.wtf.trabajador5.options[0].text)&&!(document.getElementById("seltin").style.display=="none")) ) && !(servicio8==document.wtf.turn.options[0].text) || ((!(servicio8==document.wtf.turnma.options[0].text)&&!(document.getElementById("turnm").style.display=="none"))||(!(servicio9==document.wtf.turnta.options[0].text)&&!(document.getElementById("turnt").style.display=="none"))||(!(servicio10==document.wtf.turnno.options[0].text)&&!(document.getElementById("turnn").style.display=="none")))){
	divs = document.getElementById("wtf");
	divs.submit()
}

}
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
												<li><form method="POST" action="/servicios/hospedaje" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="/servicios/sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="/servicios/masaje" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="/servicios/estetica" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="/servicios/estetica/cabello" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="/servicios/estetica/manicure" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="/servicios/estetica/pedicure" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
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
											
											<li><form method="POST" action="hotel" ><input type="hidden" name="hotel" value="hotel">
								<input class="sub"type="submit" value="HOTEL">
								</form></li>
											<li><form method="POST" action="spa" ><input type="hidden" name="spa" value="spa">
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

		<center>
		<table>
			<tr>
				<td width="10%"></td>
				<td width="70%"><br> <br> <br>
					<center>
						<h3>Bienvenido a nuestro servicio de reserva, llene el
							formulario correctamente para proceder:</h3>
						<br> <br> <br>
						<form id="wtf" name="wtf" method="get" action="reservacionspa">
							Seleccione el servicio que desea : <SELECT name="selprod"
								onChange="pagoOnChange(this)">
								<option>--Seleccione--</option>
								<OPTION VALUE="prod1">Masajes</OPTION>
								<OPTION VALUE="prod2">Manicure</OPTION>
								<OPTION VALUE="prod3">Pedicure</OPTION>
								<OPTION VALUE="prod4">Cabello</OPTION>
								<OPTION VALUE="prod5">Tintes</OPTION>
							</SELECT> <br>
							<div id="errorserv" style="display: none;">
								<pre>Seleccione un tipo de servicio</pre>
							</div>
							<br> <br> ¿Desea ser atendido por alguien en especial?
							<SELECT id="yesorno" name="yesorno"
								onChange="pagoOnChange2(this)">
								<option value="--Seleccione--">--Seleccione--</option>
								<OPTION VALUE="No">No</OPTION>
								<OPTION VALUE="Si">Si</OPTION>
							</SELECT> <br>
							<div id="erroraten" style="display: none;">
								<pre>Seleccione una opcion</pre>
							</div>
							<br>
							<div id="des" style="display:;">
								<div id="selmas" style="display: none;">
									Seleccione el empleado(a) que usted prefiera : <SELECT
										name="trabajador1">
										<option value="--Seleccione--">--Seleccione--</option>
										<OPTION VALUE="name1">Name1</OPTION>
										<OPTION VALUE="name2">Name2</OPTION>
										<OPTION VALUE="name3">Name3</OPTION>
										<OPTION VALUE="name4">Name4</OPTION>
										<OPTION VALUE="name5">Name5</OPTION>
									</SELECT>
								</div>

								<div id="selman" style="display: none;">
									Seleccione el empleado(a) que usted prefiera : <SELECT
										name="trabajador2">
										<option>--Seleccione--</option>
										<OPTION VALUE="name11">Name11</OPTION>
										<OPTION VALUE="name12">Name21</OPTION>
										<OPTION VALUE="name13">Name31</OPTION>
										<OPTION VALUE="name14">Name41</OPTION>
										<OPTION VALUE="name1">Name51</OPTION>
									</SELECT>
								</div>

								<div id="selped" style="display: none;">
									Seleccione el empleado(a) que usted prefiera : <SELECT
										name="trabajador3">
										<option>--Seleccione--</option>
										<OPTION VALUE="ped1">Name12</OPTION>
										<OPTION VALUE="ped2">Name22</OPTION>
										<OPTION VALUE="ped3">Name32</OPTION>
										<OPTION VALUE="ped4">Name42</OPTION>
										<OPTION VALUE="ped5">Name52</OPTION>
									</SELECT>
								</div>
								<div id="selcab" style="display: none;">
									Seleccione el empleado(a) que usted prefiera : <SELECT
										name="trabajador4">
										<option>--Seleccione--</option>
										<OPTION VALUE="cab1">Name13</OPTION>
										<OPTION VALUE="cab2">Name23</OPTION>
										<OPTION VALUE="cab3">Name33</OPTION>
										<OPTION VALUE="cab4">Name43</OPTION>
										<OPTION VALUE="cab5">Name53</OPTION>
									</SELECT>
								</div>

								<div id="seltin" style="display: none;">
									Seleccione el empleado(a) que usted prefiera : <SELECT
										name="trabajador5">
										<option>--Seleccione--</option>
										<OPTION VALUE="tin1">Name14</OPTION>
										<OPTION VALUE="tin2">Name24</OPTION>
										<OPTION VALUE="tin3">Name34</OPTION>
										<OPTION VALUE="tin4">Name44</OPTION>
										<OPTION VALUE="tin5">Name54</OPTION>
									</SELECT>
								</div>
								<div id="errorname" style="display: none;">
									<pre>Seleccione un trabajador(a)</pre>
								</div>
							</div>

							<br> <br> Seleccione el turno de su prefencia : <select
								NAME="turn" onChange="pagoOnChange3(this)">
								<option value="--Seleccione--">--Seleccione--</option>
								<option value="Mañana">Mañana</option>
								<option value="Tarde">Tarde</option>
								<option value="Noche">Noche</option>
							</select> <br>

							<div id="errorturn" style="display: none;">
								<pre>Seleccione un turno</pre>
							</div>
							<br>
							<div id="what" style="display:;">
								<div id="turnt" style="display: none;">
									<select name="turnta">
									    <option>--Seleccione--</option>
										<option value="12:00 PM">12:00 PM</option>
										<option value="1:00 PM">1:00 PM</option>
										<option value="2:00 PM">2:00 PM</option>
										<option value="3:00 PM">3:00 PM</option>
										<option value="4:00 PM">4:00 PM</option>
										<option value="5:00 PM">5:00 PM</option>
										<option value="6:00 PM">6:00 PM</option>
									</select>
								</div>
								<div id="turnm" style="display: none;">
									<select name="turnma">
									    <option>--Seleccione--</option>
										<option value="8:00">8:00 AM</option>
										<option value="9:00 AM">9:00 AM</option>
										<option value="10:00 AM">10:00 AM</option>
										<option value="11:00 AM">11:00 AM</option>
									</select>
								</div>
								<div id="turnn" style="display: none;">
									<select name="turnno">
									    <option>--Seleccione--</option>
										<option value="7:00 PM">7:00 PM</option>
										<option value="8:00 PM">8:00 PM</option>
									</select>
								</div>
								<br>
								<div id="errorhor" style="display: none;">
									<pre>Seleccione el horario</pre>
								</div>

							</div>

							<br> <br> Cupon de descuento :<input type="text">
							<br> <br> Seleccione la fecha :<input name="fecha1" type="text" id="date_timepicker_start" /> <br> <br> <input
								type="button" value="Enviar" onclick="validar()"> <br>
							<br> <br>
						</form>
					</center></td>
				<td width="10%"></td>
			</tr>
		</table>
	</center>
	<br>
	<br>
	<br>
	<br>
</body>
</html>