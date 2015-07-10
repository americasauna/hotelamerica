<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="beans.*"%>
<%@ page import="java.util.List"%>

<%HttpSession misesion= request.getSession(); %>
<% List<Sauna> sau = (List<Sauna>)request.getAttribute("saunas");%>
    
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
<h2>Agrega servicio en sauna</h2>
<form name="formulario" method="get" action="guardar" onsubmit="return revisar()" id="formulario"> 
Nombre de sauna al cual modificara:<br> 
<input type="text" name="nombre" id="demo"><br> 
<p id="err1"></p>
Añadir camara:<br> 
<input type="text" name="cam" ><br>
Añadir baño:<br> 
<input type="text" name="baño"><br>
Precio:<br> 
<input type="number" name="precio" id="demo2"></input><br>
<p id="err2"></p>
Descripcion:<br> 
<textarea type="text" name="descripcion"></textarea><br>
<br>
¿Desea agregar un nuevo Sauna?(Ingrese nombre/opcional)<br> 
<input type="text" name="nuevo"></input><br>

<%misesion.setAttribute("id", "sauna"); %> 
<h2>Borrar Sauna Especifico</h2> 
<select name="borrar">
<option value="" ></option>
<%for ( Sauna s : sau ){%>
<option value="<%=s.getNombre() %>" ><%=s.getNombre() %></option><%} %>
</select>

<input type="button" value="LISTO" onclick="myFunction()">
</form>
</body>
</html>