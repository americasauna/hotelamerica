<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="beans.*"%>
<%@ page import="java.util.List"%>

<%HttpSession misesion= request.getSession(); %>
<% List<Spa> spa = (List<Spa>)request.getAttribute("spa");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<h2>Agrega servicio en SPA</h2>
<form name="formulario" method="get" action="guardar" onsubmit="return revisar()"> 
Nombre de SPA al cual modificara:<br> 
<input type="text" name="nombre" ><br> 
Añadir Sala de Masajes:<br> 
<input type="text" name="cam" ><br>
Añadir Salones de Estetica:<br> 
<input type="text" name="baño"><br>
Precio:<br> 
<input type="number" name="precio"></input><br>
Descripcion:<br> 
<textarea type="text" name="descripcion"></textarea><br>
<br>
¿Desea agregar un nuevo Sauna?(Ingrese nombre/opcional)<br> 
<input type="text" name="nuevo"></input><br>

<%misesion.setAttribute("id", "spa"); %> 
<h2>Borrar SPA Especifico</h2> 
<select name="borrar">
<option value="" ></option>
<%for ( Spa s : spa ){%>
<option value="<%=s.getNombre() %>" ><%=s.getNombre() %></option><%} %>
</select>

<input type="submit" value="LISTO">
</form>


</body>
</html>