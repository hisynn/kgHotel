function init() {
	window.addEventListener('scroll', function(e){
		var distanceY = window.pageYOffset || document.documentElement.scrollTop,
		shrinkOn = 750,
		header = document.querySelector("#comeonhead");
		if (distanceY > shrinkOn) {
			classie.add(header,"smallmenu");
		} else {
			if (classie.has(header,"smallmenu")) {
				classie.remove(header,"smallmenu");
			}
		}
	});
}
window.onload = init();