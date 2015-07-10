function pagoOnChange(sel) {
	if (sel.value == "prod1") {
		div1 = document.getElementById("selmas");
		div1.style.display = "";

		div2 = document.getElementById("selman");
		div2.style.display = "none";

		div3 = document.getElementById("selped");
		div3.style.display = "none";

		div4 = document.getElementById("selcab");
		div4.style.display = "none";

		div5 = document.getElementById("seltin");
		div5.style.display = "none";
	}
	if (sel.value == "prod2") {
		div1 = document.getElementById("selmas");
		div1.style.display = "none";

		div2 = document.getElementById("selman");
		div2.style.display = "";

		div3 = document.getElementById("selped");
		div3.style.display = "none";

		div4 = document.getElementById("selcab");
		div4.style.display = "none";

		div5 = document.getElementById("seltin");
		div5.style.display = "none";
	}
	if (sel.value == "prod3") {
		div1 = document.getElementById("selmas");
		div1.style.display = "none";

		div2 = document.getElementById("selman");
		div2.style.display = "none";

		div3 = document.getElementById("selped");
		div3.style.display = "";

		div4 = document.getElementById("selcab");
		div4.style.display = "none";

		div5 = document.getElementById("seltin");
		div5.style.display = "none";
	}
	if (sel.value == "prod4") {
		div1 = document.getElementById("selmas");
		div1.style.display = "none";

		div2 = document.getElementById("selman");
		div2.style.display = "none";

		div3 = document.getElementById("selped");
		div3.style.display = "none";

		div4 = document.getElementById("selcab");
		div4.style.display = "";

		div5 = document.getElementById("seltin");
		div5.style.display = "none";
	}
	if (sel.value == "prod5") {
		div1 = document.getElementById("selmas");
		div1.style.display = "none";

		div2 = document.getElementById("selman");
		div2.style.display = "none";

		div3 = document.getElementById("selped");
		div3.style.display = "none";

		div4 = document.getElementById("selcab");
		div4.style.display = "none";

		div5 = document.getElementById("seltin");
		div5.style.display = "";
	}
}
function pagoOnChange2(sel) {
	if (sel.value == "No") {
		div1 = document.getElementById("des");
		div1.style.display = "none";
	}
	if (sel.value == "Si") {
		div1 = document.getElementById("des");
		div1.style.display = "";
	}
	if (sel.value == "--Seleccione--") {
		div1 = document.getElementById("des");
		div1.style.display = "none";
	}
}
function pagoOnChange3(sel) {
	if (sel.value == "--Seleccione--") {
		div1 = document.getElementById("turnm");
		div1.style.display = "none";

		div2 = document.getElementById("turnt");
		div2.style.display = "none";

		div3 = document.getElementById("turnn");
		div3.style.display = "none";
		
		div4 = document.getElementById("what");
		div4.style.display = "none";

	}else{
		div4 = document.getElementById("what");
		div4.style.display = "";
	}
	if (sel.value == "Mañana") {	
		div1 = document.getElementById("turnm");
		div1.style.display = "";

		div2 = document.getElementById("turnt");
		div2.style.display = "none";

		div3 = document.getElementById("turnn");
		div3.style.display = "none";

	}
	if (sel.value == "Tarde") {

		div1 = document.getElementById("turnm");
		div1.style.display = "none";

		div2 = document.getElementById("turnt");
		div2.style.display = "";

		div3 = document.getElementById("turnn");
		div3.style.display = "none";
		
	}
	if (sel.value == "Noche") {
		
		div1 = document.getElementById("turnm");
		div1.style.display = "none";

		div2 = document.getElementById("turnt");
		div2.style.display = "none";

		div3 = document.getElementById("turnn");
		div3.style.display = "";


	}
}