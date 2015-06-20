<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Horarios</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" href="america.ico">
<link rel="stylesheet" type="text/css" href="css/estilohorarios.css">
<script type="text/javascript"  src="js/modernizr.custom.63321.js"></script>


<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);

body {
	background: #563c55 url(images/blurred.jpg) no-repeat center top;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
}

.container>header h1, .container>header h2 {
	color: #fff;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.7);
}
</style>
<script type="text/javascript">
	var XMLHttp;
	if (window.XMLHttpRequest) {
		XMLHttp = new XMLHttpRequest();
	} else {
		XMLHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	function getData(dataSource, divID) {
		if (XMLHttp) {//Si el objeto fué creado con éxito
			var section = document.getElementById(divID);
			XMLHttp.onreadystatechange = function() { //función anónima
				if (XMLHttp.readyState == 4 && XMLHttp.status == 200) {
					section.innerHTML = XMLHttp.responseText;
				}
			}

			XMLHttp.open("GET", dataSource);
			XMLHttp.send();
		}
	}
</script>
</head>
<body>
	<div class="container">
		<h1>
			<strong>HORARIOS</strong>
		</h1>

		<nav class="codrops-demos"> <input type="button"
			value="Hospedaje"
			onclick="getData('horariohospedaje.jsp','targetDiv')"> <input
			type="button" value="Sauna"
			onclick="getData('horariosauna.jsp','targetDiv')"> <input
			type="button" value="Masajes"
			onclick="getData('horariomasajes.jsp','targetDiv')"> <input
			type="button" value="Piscina"
			onclick="getData('horariopiscina.jsp','targetDiv')"> <input
			type="button" value="Estetica"
			onclick="getData('horarioestetica.jsp','targetDiv')"> </nav> 
	</div>
	<div id="targetDiv"></div>
</body>
</html>