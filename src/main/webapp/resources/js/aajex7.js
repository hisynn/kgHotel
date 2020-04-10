$(function() {
	
	
	$('ul.tab li, #reserveSearchBt1,#reserveSearchBt2,#reserveSearchBt3').click(function() {
			$('#tab').css('display','');
			var activeTab = $(this).attr('data-tab');
			$('ul.tab li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current');
			$('#' + activeTab).addClass('current');
	});
	
	$('#reserveSearchBt1').click(function(){

		$('#reserveSearchBt1').css('background-color','black').css('color','white');
		$('#reserveSearchBt2').css('background-color','white').css('color','black');
		$('#reserveSearchBt3').css('background-color','white').css('color','black');
		});
	
	$('#reserveSearchBt2').click(function(){

		$('#reserveSearchBt1').css('background-color','white')	.css('color','black');
		$('#reserveSearchBt2').css('background-color','black').css('color','white');
		$('#reserveSearchBt3').css('background-color','white').css('color','black');
		});
	
	$('#reserveSearchBt3').click(function(){

		$('#reserveSearchBt1').css('background-color','white')	.css('color','black');
		$('#reserveSearchBt2').css('background-color','white').css('color','black');
		$('#reserveSearchBt3').css('background-color','black').css('color','white');
		});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
// 끝이요
});