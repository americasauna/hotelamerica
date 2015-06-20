<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/estiloregspa.css"
	media="screen">
<link rel="stylesheet" href="style.css">
<title>Reservaciones</title>
<script type="text/javascript" src="js/jsregspa.js"></script>
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
		<table>
			<tr>
				<td width="10%"></td>
				<td width="70%"><br> <br> <br>
					<h3>Bienvenido a nuestro servicio de reserva, llene el
						formulario correctamente para proceder:</h3> <br> <br> <br>
					Seleccione el servicio que desea : <SELECT NAME="selprod"
					onChange="pagoOnChange(this)">
						<OPTION VALUE="prod1">Masajes</OPTION>
						<OPTION VALUE="prod2">Manicure</OPTION>
						<OPTION VALUE="prod3">Pedicure</OPTION>
						<OPTION VALUE="prod4">Cabello</OPTION>
						<OPTION VALUE="prod5">Tintes</OPTION>
				</SELECT> <br> <br> <br>¿Desea ser atendido por alguien en
					especial? <SELECT NAME="yesorno" onChange="pagoOnChange2(this)">
						<OPTION VALUE="yes">Si</OPTION>
						<OPTION VALUE="no">No</OPTION>
				</SELECT> <br> <br>
					<div id="des" style="display:;">
						<div id="selmas" style="display:;">
							Seleccione el empleado(a) que usted prefiera : <SELECT>
								<OPTION VALUE="mas1">Name1</OPTION>
								<OPTION VALUE="mas2">Name2</OPTION>
								<OPTION VALUE="mas3">Name3</OPTION>
								<OPTION VALUE="mas4">Name4</OPTION>
								<OPTION VALUE="mas5">Name5</OPTION>
							</SELECT>
						</div>

						<div id="selman" style="display: none;">
							Seleccione el empleado(a) que usted prefiera : <SELECT>
								<OPTION VALUE="man1">Name11</OPTION>
								<OPTION VALUE="man2">Name21</OPTION>
								<OPTION VALUE="man3">Name31</OPTION>
								<OPTION VALUE="man4">Name41</OPTION>
								<OPTION VALUE="man5">Name51</OPTION>
							</SELECT>
						</div>

						<div id="selped" style="display: none;">
							Seleccione el empleado(a) que usted prefiera : <SELECT>
								<OPTION VALUE="ped1">Name12</OPTION>
								<OPTION VALUE="ped2">Name22</OPTION>
								<OPTION VALUE="ped3">Name32</OPTION>
								<OPTION VALUE="ped4">Name42</OPTION>
								<OPTION VALUE="ped5">Name52</OPTION>
							</SELECT>
						</div>

						<div id="selcab" style="display: none;">
							Seleccione el empleado(a) que usted prefiera : <SELECT>
								<OPTION VALUE="cab1">Name13</OPTION>
								<OPTION VALUE="cab2">Name23</OPTION>
								<OPTION VALUE="cab3">Name33</OPTION>
								<OPTION VALUE="cab4">Name43</OPTION>
								<OPTION VALUE="cab5">Name53</OPTION>
							</SELECT>
						</div>

						<div id="seltin" style="display: none;">
							Seleccione el empleado(a) que usted prefiera : <SELECT>
								<OPTION VALUE="tin1">Name14</OPTION>
								<OPTION VALUE="tin2">Name24</OPTION>
								<OPTION VALUE="tin3">Name34</OPTION>
								<OPTION VALUE="tin4">Name44</OPTION>
								<OPTION VALUE="tin5">Name54</OPTION>
							</SELECT>
						</div>
					</div> <br>
				<br> Seleccione el turno de su prefencia : <select NAME="turn"
					onChange="pagoOnChange3(this)">
						<option value="mañana">Mañana</option>
						<option value="tarde">Tarde</option>
						<option value="noche">Noche</option>
				</select> <br>
				<br>
					<div id="turnm" style="display:;">
						<select>
							<option value="mañana">8:00 AM</option>
							<option value="mañana">9:00 AM</option>
							<option value="mañana">10:00 AM</option>
							<option value="mañana">11:00 AM</option>
						</select>
					</div>
					<div id="turna" style="display: none;">
						<select>
							<option value="mañana">12:00 PM</option>
							<option value="mañana">1:00 PM</option>
							<option value="mañana">2:00 PM</option>
							<option value="mañana">3:00 PM</option>
							<option value="mañana">4:00 PM</option>
							<option value="mañana">5:00 PM</option>
							<option value="mañana">6:00 PM</option>
						</select>
					</div>
					<div id="turnn" style="display: none;">
						<select>
							<option value="mañana">7:00 PM</option>
							<option value="mañana">8:00 PM</option>
						</select>
					</div> <br>
				<br>
					<form action="">
						Cupon de descuento :<input type="text">
						<br>
						<br> <input type="submit" value="registrar">
					</form></td>
				<td width="20%">
					<TABLE  style="border: 1; cellspacing:3; cellpadding:3; width: 30%; height: 30%;">
						<TR>
							<TD COLSPAN="7" ALIGN=center><B>JUNE 2015</B></TD>
						</TR>
						<TR>
							<TD>Sun</TD>
							<TD>Mon</TD>
							<TD>Tue</TD>
							<TD>Wed</TD>
							<TD>Thu</TD>
							<TD>Fri</TD>
							<TD>Sat</TD>
						</TR>
						<TR>
							<!-- <form action="">-->
								<TD><input type="radio" name="day" value="1">1</TD>
								<TD><input type="radio" name="day" value="2">2</TD>
								<TD><input type="radio" name="day" value="3">3</TD>
								<TD><input type="radio" name="day" value="4">4</TD>
								<TD><input type="radio" name="day" value="5">5</TD>
								<TD><input type="radio" name="day" value="6">6</TD>
								<TD><input type="radio" name="day" value="7">7</TD>
						</TR>
						<TR>
							<TD><input type="radio" name="day" value="8">8</TD>
							<TD><input type="radio" name="day" value="9">9</TD>
							<TD><input type="radio" name="day" value="10">10</TD>
							<TD><input type="radio" name="day" value="11">11</TD>
							<TD><input type="radio" name="day" value="12">12</TD>
							<TD><input type="radio" name="day" value="13">13</TD>
							<TD><input type="radio" name="day" value="14">14</TD>
						</TR>
						<TR>
							<TD><input type="radio" name="day" value="15">15</TD>
							<TD><input type="radio" name="day" value="16">16</TD>
							<TD><input type="radio" name="day" value="17">17</TD>
							<TD><input type="radio" name="day" value="18">18</TD>
							<TD><input type="radio" name="day" value="19">19</TD>
							<TD><input type="radio" name="day" value="20">20</TD>
							<TD><input type="radio" name="day" value="21">21</TD>
						</TR>
						<TR>
							<TD><input type="radio" name="day" value="22">22</TD>
							<TD><input type="radio" name="day" value="23">23</TD>
							<TD><input type="radio" name="day" value="24">24</TD>
							<TD><input type="radio" name="day" value="25">25</TD>
							<TD><input type="radio" name="day" value="26">26</TD>
							<TD><input type="radio" name="day" value="27">27</TD>
							<TD><input type="radio" name="day" value="28">28</TD>
						</TR>
						<TR>
							<TD><input type="radio" name="day" value="29">29</TD>
							<TD><input type="radio" name="day" value="30">30</TD>
							<TD></TD>
							<TD></TD>
							<TD></TD>
							<TD></TD>
							<TD></TD>
						<!-- </form> -->	
						</TR>
					</TABLE>
				</td>
			</tr>
			
		</table>
	</center>
	<br>
	<br>
	<br>
	<br>
</body>
</html>