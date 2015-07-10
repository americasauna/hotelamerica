$(function(){

	$('.slider').fractionSlider({
		'fullWidth': 			true,
		'controls': 			true, 
		'pager': 				true,
		'responsive':  			true,
		'timeout':  			6000,
		'dimensions':  			'960,460'
		
	});
		/****funcion fixed para mostrar/ocultar nav ***/
	//ancho de la ventana cuando se convierte a menu responsive
	var ANCHO_VENTANA=750;
	//selector jquery del menu de navegación 
	var $NAV =$(".nav-list");
	$( window ).resize(function(){
		var ancho_ventana = $(window).width();
		if(ancho_ventana > ANCHO_VENTANA){
			$NAV.show();
		}else{
			$NAV.hide(); 
		}
	});
	/**************************************/

	
		
});