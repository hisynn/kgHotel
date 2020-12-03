function modfyinfofo(){
fetch('txt/modifyinfotool').then(function(response){
				response.text().then(function(text){
					document.querySelector('article').innerHTML = text;
					})
				});
}