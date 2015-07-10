<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "sauna.*" %>
    
    <%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/stilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="css/adminestilo.css" media="screen" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script>
function realizaProceso(valor){
      var parametros={
              "valor": valor,
      }
        
        $.ajax({
                data: parametros,
                url:  'servlet',
                type: 'post',
                beforeSend: function () {
                        $("#area").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#area").html(response);
                }
				});
				}
</script>

<title>Administracion</title>
</head>
<body>

	<center>
		<div class="header">
			<table >
				<tr>
					<%if(user!=null && user.equals("admin")){ %>
							<td><ul class="nav">
							<li><form action="sauna" method="POST">
							<input type="hidden" name="administrador" value="administrador">
								<input class="po" type="submit" value="ADMINISTRAR">
								</form></li></ul>
	
					</td><%}%>
				
					<td>
						<ul class="nav">
							<li><form action="sauna" method="POST">
							<input type="hidden" name="home" value="home">
								<input class="po" type="submit" value="HOME">
								</form></li></ul></td>
					<td>
						<div id="header">
								<ul class="nav">
									<li>
									<form method="POST"action="sauna" ><input type="hidden" name="servicios" value="servicios">
								<input class="po"type="submit" value="SERVICIOS">
								</form> 
								<!--	<form action="sauna" method="get" name="f1" id="f1">
										<input type="hidden" name="enlace" value="servicios">
									</form>
									-->
									<ul  id="capa11">
												<li><form method="POST" action="sauna" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="sauna" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="sauna" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="sauna" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="sauna" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="sauna" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
								<input class="sub"type="submit" value="PEDICURE">
								</form></li>
														<li><form action="sauna" method="POST"><input type="hidden" name="restaurante" value="restaurante">
								<input class="sub"type="submit" value="RESTAURANT">
								</form></li>
													</ul></li>
											
											</ul></li>
								</ul>
						</div></td>

					<td><img height="75" width="300" src="/spa.jpg" alt=""></td>
     
					<td>
						<ul class="nav">
								<li>
								<form action="sauna" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
								<input class="po"type="submit" value="RESERVACIONES">
								</form>
									
									<ul  id="capa1">
											
											<li><form method="POST" action="sauna" ><input type="hidden" name="hotel" value="hotel">
								<input class="sub"type="submit" value="HOTEL">
								</form></li>
											<li><form method="POST" action="sauna" ><input type="hidden" name="spa" value="spa">
								<input class="sub" type="submit" value="SPA">
								</form></li>
									</ul>
									
										
									</li>
							</ul></td>
					<td>
						<div >
							<ul class="nav">
								<li>
								<%if(user==null){ %>
								<form action="sauna" method="POST"><input type="hidden" name="contacto" value="contacto">
								<input class="po" type="submit" value="CONTACTO/REGISTRO">
								</form><%}else{%>
								<form action="sauna" method="POST"><input type="hidden" name="cerrar" value="cerrar">
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
	
	
	<br><br><br>
	
	
<div id='cssmenu'>
<ul>
   <li class='active has-sub'><input type="button" id="HOSPEDAJE" name="HOSPEDAJE" value="HOSPEDAJE" onclick="realizaProceso($('#HOSPEDAJE').val())"></li>
   <li ><input type="button" id="SAUNA" name="SAUNA" value="SAUNA" onclick="realizaProceso($('#SAUNA').val())"></li>
   <li><input type="button" id="SPA" name="SPA" value="SPA" onclick="realizaProceso($('#SPA').val())"></li>
   <li class='active has-sub'><input type="button" id="MASAJES" name="MASAJES" value="MASAJES" onclick="realizaProceso($('#MASAJES').val())"></li>
  <!-- -  <li ><a href='#' onclick="getData('AdmiReservacion.jsp','area')"><span>RESERVACIONES</span></a>
   	<ul>
		<li><a href='#'><span>Hotel</span></a></li>
		<li class='last'><a href='#'><span>Spa</span></a></li>
	</ul></li>
-->
</ul>
</div>

<div id="area">
 
</div>
 


</body>
</html>