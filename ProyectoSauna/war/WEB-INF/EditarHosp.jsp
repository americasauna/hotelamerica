<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="beans.*"%>
<%@ page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="javax.servlet.http.*;" %>

<%HttpSession misesion= request.getSession(); %>
<% List<Habitacion> habi = (List<Habitacion>)request.getAttribute("habitaciones");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function myFunction() {
    var str = document.getElementById("demo").value
    var str2 = document.getElementById("demo2").value
    if(!(str.match(/[1-9][1-9]*/)) && str.match(/[a-zA-Z][a-zA-Z]*$/)
&& !(str.match(/[1-9][1-9]*$/)) ){
    var res1 ="";
    document.getElementById("err1").innerHTML = res1;
    }else {
    var res1 ="ingrese solo letras";
    document.getElementById("err1").innerHTML = res1;
    }
    if( !(str2.match(/[a-zA-Z][a-zA-Z]*/)) &&
str2.match(/[1-9][1-9]*$/) && !(str2.match(/[a-zA-Z][a-zA-Z]*$/))){

    var res2 ="";
    document.getElementById("err2").innerHTML = res2;
    }else {

    var res2 ="solo numeros";
    document.getElementById("err2").innerHTML = res2;
    }
    
    if((!(str.match(/[1-9][1-9]*/)) && str.match(/[a-zA-Z][a-zA-Z]*$/)
    		&& !(str.match(/[1-9][1-9]*$/)) ) && ( !(str2.match(/[a-zA-Z][a-zA-Z]*/)) &&
    				str2.match(/[1-9][1-9]*$/) && !(str2.match(/[a-zA-Z][a-zA-Z]*$/))) ){
    	divs = document.getElementById("formulario");
		divs.submit();
    }
}
</script>
<h1>Habitaciones activas</h1>

<%if(habi!=null){ %>
<%for( Habitacion p : habi ) {%>
	<div class="Row">
		<div style="width:65%; background-color: lime; padding: 20px;"><h3><%=p.getTipo()%></h3>
		<%= p.getDescripcion() %>
		<h4><%= p.getNum() %></h4>
		</div>
		<br>
	</div>
<%}%>
<%} %>
<br>
<h2>Agregar Habitacion</h2>
<form name="formulario" method="get" action="guardar" onsubmit="return revisar()" id="formulario"> 
Nombre:<br> 
<input type="text" name="nombre" id="demo"><br> 
<p id="err1"></p>
Numero:
<br> 
<input type="text" name="numero" id="demo2"><br> 
<p id="err2"></p>
Descripcion:
<br> 
<textarea type="text" name="descripcion" ></textarea><br>
<br> 
<%misesion.setAttribute("id", "hospeda");%>

<h2>Borrar Habitacion</h2> 
<select name="borrar">
<%for ( Habitacion p : habi ){%>                                                                                                                                                                                                                                                                                                                                                                                                                               
<option value="<%=p.getNum() %>" ><%=p.getNum() %></option>
<% System.out.println(p);
}%>
</select>
<input type="button" value="LISTO" onclick="myFunction()">
</form>
</body>
</html>