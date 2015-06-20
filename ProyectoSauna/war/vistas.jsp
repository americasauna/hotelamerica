<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Presentacion</title>
<style type="text/css">
body {
	background-image: url("presentacion1.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	-moz-background-size: cover;
}
#form {
	width: 50%;
	background-color: rgba(225,64,0,0.2);
	font-style: oblique; 
	padding: 20px;
	font-size: 25px;
	
}
#form #button {
	height: 45px; 
	width: 120px;
	font-style: inherit;
}
</style>
</head>
<body>
<center>
	<h1>Proyecto HOTEL SAUNA & SPA AMERICA</h1>

	<div id="form">
	<form action="vistas" method="get">
		<label for="num">Seleccione el numero de la vista a ver: </label> 
		<select name="num">
			<%
				for (int i = 1; i < 11; i++) {
			%>
					<option value="<%=i %>"><%=i %></option>
			<%
				}
			%>
		</select> 
		<br><br>
		<input type="submit" id="button" value="Mostrar">
	</form>
	</div>
</body>
</html>