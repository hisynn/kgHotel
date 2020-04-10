function init() {
	window.addEventListener('scroll', function(e){
		var distanceY = window.pageYOffset || document.documentElement.scrollTop,
		shrinkOn = 750,
		header = document.querySelector("#comeonhead2");
			classie.add(header,"smallmenu2");
		
/*		else {
			if (classie.has(header,"smallmenu2")) {
				classie.remove(header,"smallmenu2");
			}
		}*/
	});
}
window.onload = init();



/*function init() {
	window.addEventListener('scroll', function(e){
		var distanceY = window.pageYOffset || document.documentElement.scrollTop,
		shrinkOn = 750,
		header = document.querySelector("#comeonhead");
		if (distanceY > shrinkOn) {
			classie.add(header,"smallmenu2");
		} 
		
	else {
			if (classie.has(header,"smallmenu2")) {
				classie.remove(header,"smallmenu2");
			}
		}
	});
}
window.onload = init();*/