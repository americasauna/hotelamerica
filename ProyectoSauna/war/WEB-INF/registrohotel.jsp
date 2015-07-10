<%@page import="sauna.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/estiloreghotel.css" media="screen">
<link rel="stylesheet" type="text/css" href="../a/jquery.datetimepicker.css" >
<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen">
<link rel="stylesheet" type="text/css" href="../css/estiloIdioma.css" media="screen" >
<title>Reservaciones Hotel</title>
<script type="text/javascript" src="../js/jsreghotel.js"></script>
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
<!--  <script>
	function validar() {
		var adulto = document.getElementById("adulto").value;
		var menores = document.getElementById("menores").value;
		var fecha1 = document.getElementById("date_timepicker_start").value;
		var fecha2 = document.getElementById("date_timepicker_end").value;
		var indice = document.registro.cuartos.selectedIndex; var cuarto = document.registro.cuartos.options[indice].text;
		var indice2 = document.registro.fumar.selectedIndex; var fumar = document.registro.fumar.options[indice2].text;
		var indice3 = document.registro.cama.selectedIndex; var cama = document.registro.cama.options[indice3].text;
		div1 = document.getElementById("errorad");
		div2 = document.getElementById("errormen");
		div3 = document.getElementById("errorfecha1");
		div4 = document.getElementById("errorfecha2");
		div5 = document.getElementById("errorcuarto");
		div6 = document.getElementById("errorfumar");
		div7 = document.getElementById("errorcama");
		if (cama==document.registro.cama.options[0].value) {
			div7.style.display = "";
		} else {
			div7.style.display = "none";
		}
		
		if (fumar==document.registro.fumar.options[0].value) {
			div6.style.display = "";
		} else {
			div6.style.display = "none";
		}
		
		if (cuarto==document.registro.cuartos.options[0].value) {
			div5.style.display = "";
		} else {
			div5.style.display = "none";
		}
		
		if ((adulto.match("[0-9]{1}")) && !(adulto == "")) {
			div1.style.display = "none";
		} else {
			div1.style.display = "";
		}
		
		if ((menores.match("[0-9]{1}")) && !(menores == "")) {
			div2.style.display = "none";
		} else {
			div2.style.display = "";
		}
		
		if (!(fecha1=="")) {
			div3.style.display = "none";
		} else {
			div3.style.display = "";
		}
		
		if (!(fecha2=="")) {
			div4.style.display = "none";
		} else {
			div4.style.display = "";
		}
		
		if((!(cuarto==document.registro.cuartos.options[0].value))&&((adulto.match("[0-9]{1}")) && !(adulto == ""))&&((menores.match("[0-9]{1}")) && !(menores == ""))&&(!(fecha1==""))&& (!(fecha2==""))&&!(fumar==document.registro.fumar.options[0].value)){
			divs = document.getElementById("registro");
			divs.submit();
		}
	}
</script>-->
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

    
	<table>
		<tr>
			<td width="10%"></td>
			<td width="70%">
			<center>
			<br> <br> <br>
				<h3>Bienvenido a nuestro servicio de reserva de habitacion,
					llene el formulario correctamente para proceder:</h3> 
					
				<br><br><br> 
				Seleccione el tipo de cuarto que desea : 
				<form action="hospedajereserva" method="post" onsubmit="return validacion()" id="registro" name="registro">
				<SELECT name="cuartos" id="cuarto">
				    <option>--Seleccione--</option>
					<OPTION VALUE="Single Room">Single Room</OPTION>
					<OPTION VALUE="Double Room">Double Room</OPTION>
					<OPTION VALUE="Suit">Suit</OPTION>
			     </SELECT>  
			     <br>
			     <div id="errorcuarto" style="display:none;">
				<pre>Por favor, seleccione un tipo de cuarto</pre>
				</div>
			     <br><br> 
			     Numero de Huéspedes :
                 Adultos: <input type="number"  name="adultos" min="1" max="7" id="adulto" />
                 Niños: <input type="number"  name="menores" min="0" max="6" id="menores" />
                 <div id="errorad" style="display:none;">
				<pre>Ingrese un número valido de adultos</pre>
				</div>
                 <div id="errormen" style="display:none;">
				<pre>Ingrese un número valido de niños</pre>
				</div>
				 <br><br><br> 
				 ¿Desea una habitacion donde de pueda fumar? 
				 <SELECT NAME="fumar" id="fumar">
				    <option>--elegir--</option>
					<OPTION VALUE="No" >No</OPTION>
					<OPTION VALUE="Si">Si</OPTION>
			     </SELECT>
			     <br> 
			     <div id="errorfumar" style="display:none;">
				<pre>Por favor, seleccion si o no</pre>
				</div>
			     <br><br> 
			     Seleccione el typo de cama que desea :
				<select name="cama" onChange="pagoOnChange(this)" id="cama">
				    <option>--Seleccione--</option>
					<option value="Normal" >Normal</option>
					<option value="Twin">Twin</option>
					<option value="Queen-Size">Queen-Size</option>
					<option value="King-Size">King-Size</option>
			   </select> 
			   <br>
			   <div id="errorcama" style="display:none;">
				<pre>Seleccione el tipo de cama a usar</pre>
				</div>
			   <br>
				Cupon de descuento(opcional) :<input type="text" name="cupon" id="cupon" /> 
				<br>
				<br>
				<p>Fecha de llegada :</p> <br> <input name="fecha1" type="text" id="date_timepicker_start" />
				<br>
				<div id="errorfecha1" style="display:none;">
				<pre>Seleccione correctamente la fecha de llegada</pre>
				</div>
				<br>
				<p>Fecha de partida:</p> <br> <input name="fecha2" type="text" id="date_timepicker_end" /> 	
				<br>
				<div id="errorfecha2" style="display:none;">
				<pre>Seleccione correctamente la fecha de llegada</pre>
				</div>
				<br> <br>
				<!--  <div id="noall"><input type="button" value="registrar" onclick="validar()"/></div>
				--><input type="submit"value="registrar" />
				</form>
				<br><br>
				
				<div id="camanor" style="display:;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="../imgRegistro/sroom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div>
				<div id="camatwin" style="display: none;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="../imgRegistro/droom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div>
				<div id="camaqueen" style="display: none;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="../imgRegistro/qroom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div>
				<div id="camaking" style="display: none;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="../imgRegistro/kroom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div> 
				</center>
				<br><br>
				</td>
			<td width="10%"></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<br>
</body>
</html>