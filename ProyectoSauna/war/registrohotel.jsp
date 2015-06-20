<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/estiloreghotel.css"
	media="screen">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" type="text/css"
	href="a/jquery.datetimepicker.css" />
<title>Reservaciones</title>
<script type="text/javascript" src="js/jsreghotel.js"></script>
<script src="a/jquery.js"></script>
<script src="a/jquery.datetimepicker.js"></script>
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
										<li><a href=""> <!-- Centro de-->Estetica
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


	<table>
		<tr>
		<form>
			<td width="10%"></td>
			<td width="70%"><br> <br> <br>
				<h3>Bienvenido a nuestro servicio de reserva de habitacion,
					llene el formulario correctamente para proceder:</h3> <br> <br>
				<br> Seleccione el tipo de cuarto que desea : 
				<form action="hospedaje">
				<SELECT name="cuartos">
					<OPTION VALUE="prod1">Single Room</OPTION>
					<OPTION VALUE="prod2">Double Room</OPTION>
					<OPTION VALUE="prod4">Suit</OPTION>
			</SELECT> <br> <br> <br> Numero de Huéspedes :
				
					Adultos: <input type="text" value="1" name="adulto"> Niños: <input
						type="text" value="0" name="niños">
				</form> <br> <br> <br> ¿Desea una habitacion donde de pueda
				fumar? <SELECT NAME="yesorno">
					<OPTION VALUE="no" name="">No</OPTION>
					<OPTION VALUE="yes">Si</OPTION>
			</SELECT> <br> <br> <br> Seleccione el typo de cama que desea :
				<select NAME="kind" onChange="pagoOnChange(this)">
					<option value="normal">Normal</option>
					<option value="twin">Twin</option>
					<option value="queen">Queen-size</option>
					<option value="king">King-size</option>
			</select> <br> <br>
				
					Cupon de descuento :<input type="text"> <br> <br>
					<input type="submit" value="registrar">
				 <br> <br>
				<div id="camanor" style="display:;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="imgRegistro/sroom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div>
				<div id="camatwin" style="display: none;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="imgRegistro/droom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div>
				<div id="camaqueen" style="display: none;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="imgRegistro/qroom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div>
				<div id="camaking" style="display: none;">
					<table border="1">
						<tr>
							<td width="33%"></td>
							<td width="33%"><img src="imgRegistro/kroom.jpg"
								height="350" width="500" alt=""></td>
							<td width="33%"></td>
						</tr>
					</table>
				</div> <br> <br></td>
			<td width="20%">
				<p>Fecha de llegada :</p> <br> <input type="text"
				id="date_timepicker_start" />

				<p>Fecha de partida:</p> <br> <input type="text"
				id="date_timepicker_end" /> <br> <br>
			</td>
			</form>
		</tr>
	</table>

	<br>
	<br>
	<br>
	<br>
</body>
</html>