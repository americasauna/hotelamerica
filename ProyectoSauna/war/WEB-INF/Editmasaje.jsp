<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="beans.*"%>
<%@ page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat" %>

<%HttpSession misesion= request.getSession(); %>
<% List<Masajes> masa = (List<Masajes>)request.getAttribute("masajes");%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Agregar Tipo de servicio en sauna</h2>
<form name="formulario" method="get" action="guardar" onsubmit="return revisar()"> 
Nombre:<br> 
<input type="text" name="nombre"><br> 
Descripcion:<br> 
<textarea type="text" name="descricpcion"></textarea><br>
<br> 
Precio:<br> 
<textarea type="text" name="precio"></textarea><br>
<br> 
<h2>Borrar tipo de masaje Especifico</h2> 
<select name="borrar">
<%for ( Masajes m : masa ){%>
<option value="<%=m.getTipodemasaje() %>" ></option><%} %>
</select>
<%misesion.setAttribute("id", "masaje"); %>
<input type="submit" value="LISTO">
</form>
</body>
</html>