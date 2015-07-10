<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%HttpSession registro=request.getSession(); %>
<%String user= (String)registro.getAttribute("usuario");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/estilorestaurant.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/stilo.css" media="screen" >
<link rel="stylesheet" type="text/css" href="../css/estiloIdioma.css" media="screen" >

<link href="http://fonts.googleapis.com/css?family=Courgette" rel="stylesheet" type="text/css">

<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery_min.js"></script>
<script type="text/javascript" src="../js/slimbox2.js"></script>
<link rel="stylesheet" href="../css/slimbox2.css" type="text/css" media="screen">

<meta charset="UTF-8">
<title>Restaurante</title>


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
												<li><form method="POST" action="hospedaje" ><input type="hidden" name="hospedaje" value="hospedaje">
								<input class="sub"type="submit" value="HOSPEDAJE">
								</form>
												<li><form method="POST"action="sauna" ><input type="hidden" name="sauna" value="sauna">
								<input class="sub"type="submit" value="SAUNA">
								</form></li>
												<li><form method="POST" action="masaje" ><input type="hidden" name="masajes" value="masajes">
								<input class="sub"type="submit" value="MASAJES">
								</form></li>
												<li><form action="estetica" method="POST" ><input type="hidden" name="estetica" value="estetica">
								<input class="sub"type="submit" value="ESTETICA">
								</form>
													<ul>
														<li><form action="estetica/cabello" method="POST"><input type="hidden" name="cabello" value="cabello">
								<input class="sub"type="submit" value="CABELLO">
								</form></li>
														<li><form action="estetica/manicure" method="POST"><input type="hidden" name="manicure" value="manicure">
								<input class="sub"type="submit" value="MANICURE">
								</form></li>
														<li><form action="estetica/pedicure" method="POST" ><input type="hidden" name="pedicure" value="pedicure">
								<input class="sub"type="submit" value="PEDICURE">
								</form></li>
														
													</ul></li>
											<li><form action="restaurant" method="POST"><input type="hidden" name="restaurant" value="restaurant">
								<input class="sub"type="submit" value="RESTAURANT">
								</form></li>
											</ul></li>
								</ul>
						</div></td>
     
					<td>
						<ul class="nav">
								<li>
								<form action="../reservacion" method="POST"><input type="hidden" name="reservaciones" value="reservaciones">
								<input class="po"type="submit" value="RESERVACIONES">
								</form>
									
									<ul  id="capa1">
											
											<li><form method="POST" action="../reservacion/hotel" ><input type="hidden" name="hotel" value="hotel">
								<input class="sub"type="submit" value="HOTEL">
								</form></li>
											<li><form method="POST" action="../reservacion/spa" ><input type="hidden" name="spa" value="spa">
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
	
	
		
<div id="content">
<h1 class="title">Restaurant America</h1>
<hr>

<br>
</div>

<div id="contenido">
<div>
<h2>Desayuno</h2>
Deleitese con nuestros nutritivos desayunos para enpezar el dia con energia.
<br><br>
<img class="img" alt="" src="../imgrestaurante/cafeteria/cafeteria1.jpg">
</div>
<br><hr>
<div>
<h2>Almuerzo</h2>
De nuestra mejor seleccion para tener un almuerzo exquisito.
<br><br>
<img class="img" alt="" src="../imgrestaurante/almuerzo.jpg">
</div>
<br><hr>
<div>
<h2>Cena</h2>
Para terminar el dia tenemos variedad de platos.
<br><br>
<img class="img" alt="" src="../imgrestaurante/buffet.jpg">
</div>

</div>
<br>
<div id="delivery">
<h1 class="title">Delivery</h1>
<div id="carta">
	<div class="secc" style="width: 215px; ">
				<h2>Desayunos</h2>
				<a href="../static/img/desayuno-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/desayuno-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>			
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-01.png" alt="">
	</div>
			
	<div class="secc" style="width: 215px; ">
				<h2>Jugos</h2>
				<a href="../static/img/jugos-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-02.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Ensaladas</h2>
				<a href="../static/img/ensaladas-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/ensaladas-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/ensaladas-03.png" rel="lightbox"><img class="img" src="static/3.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/ensaladas-04.png" rel="lightbox"><img class="img" src="static/4.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-03.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Bocaditos</h2>
				<a href="../static/img/bocaditos-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/bocaditos-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-04.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Sandwichs</h2>
				<a href="../static/img/sandwich-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/sandwich-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/sandwich-03.png" rel="lightbox"><img class="img" src="static/3.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/sandwich-04.png" rel="lightbox"><img class="img" src="static/4.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/sandwich-05.png" rel="lightbox"><img class="img" src="static/5.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/sandwich-06.png" rel="lightbox"><img class="img" src="static/6.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-05.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Pastas</h2>
				<a href="../static/img/pasta-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/pasta-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/pasta-03.png" rel="lightbox"><img class="img" src="static/3.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/pasta-04.png" rel="lightbox"><img class="img" src="static/4.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-06.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Postres</h2>
				<a href="../static/img/postres-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/postres-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/postres-03.png" rel="lightbox"><img class="img" src="static/3.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/postres-04.png" rel="lightbox"><img class="img" src="static/4.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-07.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Bebidas</h2>
				<a href="../static/img/bebidas-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/bebidas-02.png" rel="lightbox"><img class="img" src="static/2.jpg" alt="" width="20px" height="20px" ></a>
				<a href="../static/img/bebidas-03.png" rel="lightbox"><img class="img" src="static/3.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-08.png" alt="">
	</div>
	<div class="secc" style="width: 215px; ">
				<h2>Café</h2>
				<a href="../static/img/cafe-01.png" rel="lightbox"><img class="img" src="static/1.jpg" alt="" width="20px" height="20px" ></a>
				<br>
				<img class="foto" src=".././static/img/seccion-02-img-09.png" alt="">
	</div>
</div>
		<div id="pedidos">
		<h1 class="title">Realice su pedido:</h1>
		<form action="pedidorestaurant" method="post">
		Categoria: 
		<select name="campo1" style="width: 182px; height: 28px">
		<option value="">---------</option>
		<option value="desayunos">Desayunos</option>
		<option value="jugos">Jugos</option>
		<option value="ensaladas">Ensaladas</option>
		<option value="bocaditos">Bocaditos</option>
		<option value="sandwichs">Sandwichs</option>
		<option value="pastas">Pastas</option>
		<option value="postres">Postres</option>
		<option value="bebidas">Bebidas</option>
		<option value="café">Café</option>
		</select>
		>>
		<select name="campo1_2" style="height: 28px; width: 182px">
		<option value="">----------</option>
		<option value="1">Desayuno Mano</option>
		<option value="2">Continental</option>
		<option value="2">Americano</option>
		<option value="3">Light</option>
		
		</select>
	<br><br>
		Categoria: 
		<select name="campo2" style="width: 182px; height: 28px">
		<option value="">---------</option>
		<option value="desayunos">Desayunos</option>
		<option value="jugos">Jugos</option>
		<option value="ensaladas">Ensaladas</option>
		<option value="bocaditos">Bocaditos</option>
		<option value="sandwichs">Sandwichs</option>
		<option value="pastas">Pastas</option>
		<option value="postres">Postres</option>
		<option value="bebidas">Bebidas</option>
		<option value="café">Café</option>
		</select>
		>>
		<select name="campo2_2" style="height: 28px; width: 182px">
		<option value="">----------</option>
		<option value="1">Desayuno Mano</option>
		<option value="2">Continental</option>
		<option value="2">Americano</option>
		<option value="3">Light</option>
		
		</select>
	<br><br>
		Categoria: 
		<select name="campo3" style="width: 182px; height: 28px">
		<option value="">---------</option>
		<option value="desayunos">Desayunos</option>
		<option value="jugos">Jugos</option>
		<option value="ensaladas">Ensaladas</option>
		<option value="bocaditos">Bocaditos</option>
		<option value="sandwichs">Sandwichs</option>
		<option value="pastas">Pastas</option>
		<option value="postres">Postres</option>
		<option value="bebidas">Bebidas</option>
		<option value="café">Café</option>
		</select>
		>>
		<select name="campo3_2" style="height: 28px; width: 182px">
		<option value="">----------</option>
		<option value="1">Desayuno Mano</option>
		<option value="2">Continental</option>
		<option value="2">Americano</option>
		<option value="3">Light</option>
		
		</select>
	<br><br>
		Categoria: 
		<select name="campo4" style="width: 182px; height: 28px">
		<option value="">---------</option>
		<option value="desayunos">Desayunos</option>
		<option value="jugos">Jugos</option>
		<option value="ensaladas">Ensaladas</option>
		<option value="bocaditos">Bocaditos</option>
		<option value="sandwichs">Sandwichs</option>
		<option value="pastas">Pastas</option>
		<option value="postres">Postres</option>
		<option value="bebidas">Bebidas</option>
		<option value="café">Café</option>
		</select>
		>>
		<select name="campo4_2" style="height: 28px; width: 182px">
		<option value="">----------</option>
		<option value="1">Desayuno Mano</option>
		<option value="2">Continental</option>
		<option value="2">Americano</option>
		<option value="3">Light</option>
		
		</select>
	<br>
	<br>
	<center><input type="submit" value="Enviar" style="height: 50px; width: 75px">		<img alt="" src="deli.png"></center>	
		
		</form>
		</div>
		
</div>		
</body>
</html>