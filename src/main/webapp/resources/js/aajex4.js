$(function() {
	
	
	$('ul.tab li,#mypagebtn1,#mypagebtn2,#mypagebtn3,#mypagebtn4,#mypagebtn5,#infobtn1,#infobtn2,#infobtn3').click(function() {
			$('#tab').css('display','');
			var activeTab = $(this).attr('data-tab');
			$('ul.tab li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current');
			$('#' + activeTab).addClass('current');
	});
	
	$('ul.tab li,#infobtn4').click(function() {
		$('#tab').css('display','');
		var activeTab = $(this).attr('data-tab');
		$('ul.tab li').removeClass('current');
		$('.tabcontent').removeClass('current');
		$(this).addClass('current');
		$('#' + activeTab).addClass('current');
});
		

	$('#searchbtn1, #searchbtn2').click(function() {
		var activeTab = $(this).attr('data-tab');
		$('.tabcontent').removeClass('current');
		$('.tabcontent').removeClass('ajaxResult');
		$(this).addClass('current');
		$('#' + activeTab).addClass('current');
	});
	
	
		/*회원정보 수정*/
		$('#modinfo,#mypagebtn1').click(function(){
		setTimeout(function() { 
		    document.location.href='#tab1'}, 10);
		$('#mypagebtn1').css('background-color','black')
		.css('color','white');
		$('#mypagebtn2').css('background-color','white').css('color','black');
		$('#mypagebtn3').css('background-color','white').css('color','black');
		$('#mypagebtn4').css('background-color','white').css('color','black');
		$('#mypagebtn5').css('background-color','white').css('color','black');
		});
		
		/* 비밀번호 변경*/
		$('#modipw,#mypagebtn2').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab2'}, 10);
			$('#mypagebtn2').css('background-color','black')
			.css('color','white');
			$('#mypagebtn1').css('background-color','white').css('color','black');
			$('#mypagebtn3').css('background-color','white').css('color','black');
			$('#mypagebtn4').css('background-color','white').css('color','black');
			$('#mypagebtn5').css('background-color','white').css('color','black');
			});
		/* 포인트 조회 */
		$('#mypagebtn3').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab3'}, 10);
			$('#mypagebtn3').css('background-color','black')
			.css('color','white');
			$('#mypagebtn1').css('background-color','white').css('color','black');
			$('#mypagebtn2').css('background-color','white').css('color','black');
			$('#mypagebtn4').css('background-color','white').css('color','black');
			$('#mypagebtn5').css('background-color','white').css('color','black');
			});
		/* 예약 확인 */
		$('#mypagebtn4').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab4'}, 10);
			$('#mypagebtn4').css('background-color','black')
			.css('color','white');
			$('#mypagebtn1').css('background-color','white').css('color','black');
			$('#mypagebtn2').css('background-color','white').css('color','black');
			$('#mypagebtn3').css('background-color','white').css('color','black');
			$('#mypagebtn5').css('background-color','white').css('color','black');
			});
		/* 회원 탈퇴 */
		$('#mypagebtn5').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab5'}, 10);
			$('#mypagebtn5').css('background-color','black')
			.css('color','white');
			$('#mypagebtn1').css('background-color','white').css('color','black');
			$('#mypagebtn2').css('background-color','white').css('color','black');
			$('#mypagebtn3').css('background-color','white').css('color','black');
			$('#mypagebtn4').css('background-color','white').css('color','black');
			});
		
		
		$('#infobtn1').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab'}, 10);
			$('#infobtn1').css('background-color','black').css('color','white');
			
			$('#infobtn2').css('background-color','white').css('color','black');
			$('#infobtn3').css('background-color','white').css('color','black');
			$('#infobtn4').css('background-color','white').css('color','black');
			});
		
		$('#infobtn2').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab'}, 10);
			$('#infobtn2').css('background-color','black').css('color','white');
			
			$('#infobtn1').css('background-color','white').css('color','black');
			$('#infobtn3').css('background-color','white').css('color','black');
			$('#infobtn4').css('background-color','white').css('color','black');
			});
		
		$('#infobtn3').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab'}, 10);
			$('#infobtn3').css('background-color','black').css('color','white');
			
			$('#infobtn1').css('background-color','white').css('color','black');
			$('#infobtn2').css('background-color','white').css('color','black');
			$('#infobtn4').css('background-color','white').css('color','black');
			});
		
		$('#infobtn4').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab'}, 10);
			$('#infobtn4').css('background-color','black').css('color','white');
			
			$('#infobtn1').css('background-color','white').css('color','black');
			$('#infobtn2').css('background-color','white').css('color','black');
			$('#infobtn3').css('background-color','white').css('color','black');
			});
		
		$('#searchbtn1').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab1'}, 10);
			$('#searchbtn1').css('background-color','black')
			.css('color','white');
			$('#searchbtn2').css('background-color','white').css('color','black');
			});
		
		$('#searchbtn2').click(function(){
			setTimeout(function() { 
			    document.location.href='#tab1'}, 10);
			$('#searchbtn2').css('background-color','black')
			.css('color','white');
			$('#searchbtn1').css('background-color','white').css('color','black');
			});
		
		
	});


	

