function pagoOnChange(sel) {
    if (sel.value=="normal"){
           div1 = document.getElementById("camanor");
           div1.style.display = "";
		   div2 = document.getElementById("camatwin");
           div2.style.display = "none";
		   div3 = document.getElementById("camaqueen");
           div3.style.display = "none";
		   div4 = document.getElementById("camaking");
           div4.style.display = "none";
    }
	if (sel.value=="twin"){
           div1 = document.getElementById("camatwin");
           div1.style.display = "";
		   div3 = document.getElementById("camanor");
           div3.style.display = "none";
		   div3 = document.getElementById("camaqueen");
           div3.style.display = "none";
		   div4 = document.getElementById("camaking");
           div4.style.display = "none";
		   
    }
	if (sel.value=="queen"){
		   div3 = document.getElementById("camaqueen");
           div3.style.display = "";
           div1 = document.getElementById("camatwin");
           div1.style.display = "none";
		   div2 = document.getElementById("camanor");
           div2.style.display = "none";
		   div4 = document.getElementById("camaking");
           div4.style.display = "none";
    }
	if (sel.value=="king"){
		   div3 = document.getElementById("camaqueen");
           div3.style.display = "none";
           div1 = document.getElementById("camatwin");
           div1.style.display = "none";
		   div2 = document.getElementById("camanor");
           div2.style.display = "none";
		   div4 = document.getElementById("camaking");
           div4.style.display = "";
    }

}