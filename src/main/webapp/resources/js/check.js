function checkid(){
	 var inputed = $('#mbr_email').val();
	 console.log(inputed);
	 
	 $.ajax({
		 data : {
			 mbr_email : inputed
		 }, 
		 url : "checkId",  type: 'POST',
		 success : function(data)		 
		 {
/*
 			 	if(inputed.length<8)
			 	{
				 $('#idtd2').append('<i class="checkfalse" id="id8">아이디는 8자리 이상으로 작성 해 주세요.</i>');
			 	return false;
*/
		 
				 	 if(inputed==""&&data==0)
					 {
				 		 /*$('.#id8').remove();*/
						 $('.checkfalse').remove();
						 $('#checkOk').remove();
						 /*$('#idtd').append('<p class="checkfalse">아이디가 일치하지 않습니다.</p>');*/
						 idCheck=0;
					 }
					 else if(data==0)
					 {
						 /*$('.#id8').remove();*/
						 $('.checkfalse').remove();
						 $('#checkOk').remove();
						 $('#idtd2').append('<i class="checkfalse">사용가능한 아이디 입니다.</i>');
						 idCheck=0;
					 }
					 
					 if(data==1)
					 {
						 /*$('.#id8').remove();*/
						 $('.checkfalse').remove();
						 $('#checkOk').remove();
						 $('#idtd').append("<a class='checkok' id='checkOk'>&#10004;</a>");
						 idCheck=1;
				 }
			 /*}*/
		 }		 
	 });	 
};

function nullCheck(){
	
	if($('#mbr_email').val()==""){
		alert("이메일을 입력 해 주세요.");
		$('#mbr_email').focus();
		return false;
	}
	
	if($('#password').val()==""){
		alert("비밀번호를 입력 해 주세요.");
		$('#password').focus();
		return false;
	}
	
	if($('#password2').val()==""){
		alert("비밀번호 재입력을 확인 해 주세요.");
		$('#password2').focus();
		return false;
	}
	
	if($('#mbr_name').val()==""){
		alert("이름을 입력 해 주세요.");
		$('#mbr_name').focus();
		return false;
	}
	
	if($('#mbr_tel1').val()==""){
		alert("전화번호를 입력 해 주세요.");
		$('#mbr_tel1').focus();
		return false;
	}
	
	if($('#mbr_tel2').val()==""){
		alert("전화번호를 입력 해 주세요.");
		$('#mbr_tel2').focus();
		return false;
	}
	
	if($('#mbr_tel3').val()==""){
		alert("전화번호를 입력 해 주세요.");
		$('#mbr_tel3').focus();
		return false;
	}
	
	if($('#abcd1').val()==""){
		alert("생일을 입력 해 주세요.");
		$('#abcd1').focus();
		return false;
	}
	
	if($('#mbr_nlty').val()==""){
		alert("국적을 입력 해 주세요.");
		$('#mbr_nlty').focus();
		return false;
	}
	
/*	if($('#password').val()==""){
		alert("비밀번호를 입력 해 주세요.");
		$('#password').focus();
		return false;
	}
 */
	
};

function nullCheck2()
{

	
	
	if($('#mbr_pw').val()=="")
	{
		alert("비밀번호를 입력 해 주세요ㅎ.");
		$('#mbr_pw').focus();
		return false;		
	}
	
	var inputed1 = $('#mbr_email').val();
	var inputed = $('#mbr_pw').val();


	 
	 $.ajax({
		 data : {
			 mbr_pw : inputed,
			 mbr_email : inputed1
		 }, 
		 url : "checkPw",  type: 'POST',
	
		 
		 success : function(data)
		 {
			 
			 if(data==1)
			 {
				 /*$('#tab11').remove();
				 fetch('txt/modifyinfo').then(function(response){
						response.text().then(function(text){
							document.querySelector('#tab11').innerHTML = text;
							})
						});
				 $('.abcdd').append('<input type="text" class="registerInput" name="mbr_brthdy" id="abcd1" readonly>');
			 }*/
					$('#tab').css('display','');
					var activeTab = $('#tab6').attr('data-tab');
					$('ul.tab li').removeClass('current');
					$('.tabcontent').removeClass('current');
					$('#tab6').addClass('current');
					$('#' + activeTab).addClass('current');
					
					if (document.getElementById("LOGIN")== null) {
						  alert("씨발 세션어디갔누2222222?");
						}
					
					if (document.getElementById("LOGIN")!= null) {
						  alert("씨발 세션이 있긴있는데?");
						}
					
			 }				 
				 
			 else
			 {
				 alert('비밀번호를 확인 해 주세요.');
			 }
			 
		 }
	 });
	
}



function nullCheck3(){
	
	
	if($('#mbr_name').val()==""){
		alert("이름을 입력 해 주세요.");
		$('#mbr_name').focus();
		return false;
	}
	
	if($('#mbr_tel1').val()==""){
		alert("전화번호를 입력 해 주세요.");
		$('#mbr_tel1').focus();
		return false;
	}
	
	if($('#mbr_tel2').val()==""){
		alert("전화번호를 입력 해 주세요.");
		$('#mbr_tel2').focus();
		return false;
	}
	
	if($('#mbr_tel3').val()==""){
		alert("전화번호를 입력 해 주세요.");
		$('#mbr_tel3').focus();
		return false;
	}
	
	if($('#abcd1').val()==""){
		alert("생일을 입력 해 주세요.");
		$('#abcd1').focus();
		return false;
	}
	
	if($('#mbr_nlty').val()==""){
		alert("국적을 입력 해 주세요.");
		$('#mbr_nlty').focus();
		return false;
	}	
};

    


function pwCheck(){
	var pw1 = $('#password').val();
	var pw2 = $("#password2").val();
	
	if(pw1==pw2)
	{
		$('#pwtd').append("<a class='checkok' id='checkpwok'>&#10004;</a>");
		$('#pwtd2').append("<a class='checkok' id='checkpwok'>&#10004;</a>");
	}
	else if(pw1!=pw2)
	{
		$('#checkpwok').remove();
		$('#checkpwok').remove();
	}
	
	
}

function pwCheck2(){
	var pw1 = $('#password').val();
	var pw2 = $("#password2").val();
	
	if(pw1==pw2)
	{
		$('#pwtd').append("<a class='checkok' id='checkpwok' style='top: 5px;'>&#10004;</a>");
		$('#pwtd2').append("<a class='checkok' id='checkpwok'style='top: 5px;'>&#10004;</a>");
	}
	else if(pw1!=pw2)
	{
		$('#checkpwok').remove();
		$('#checkpwok').remove();
	}
	
	
}


function fetchPage(name){
	fetch(name).then(function(response){
		response.text().then(function(text){
			document.querySelector('article').innerHTML = text;
			})
		});
}
    
/*	
 var input = $('mbr_pw')
	$('form').on('submit',function(){
		var check = true;
		
        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }
        return check;
	});
*/


function nullCheck4(){
	
	if($('#modifyPw').val()=="")
	{
		alert("비밀번호를 입력 해 주세요ㅎ.");
		$('#modifyPw').focus();
		return false;		
	}
	
	
	var inputed1 = $('#modifyId').val();
	var inputed = $('#modifyPw').val();
	
	 $.ajax({
		 data : {
			 mbr_pw : inputed,
			 mbr_email : inputed1
		 }, 
		 url : "checkPw",  type: 'POST', 
	
		 
		 success : function(data)
		 {
			 if(data==1)
			 {
				 alert("비밀번호 일치!!");
				$('#tab').css('display','');
				var activeTab = $('#tab7').attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$('#tab7').addClass('current');
				$('#' + activeTab).addClass('current');
				$('#tab7').focus();
			 }
			 
			 else
			{
				 alert("비밀번호 불일치!!");
			}
			 
		 }
	
	 });	
};

function nullCheck5(){
	
	var inputed = $('#modifyPw1').val();
	var inputed1 = $('#modifyPw2').val();
	var email = $('#modifyId').val(); 
		
	if($('#modifyPw1').val()=="")
	{
		alert("1번 비밀번호를 입력 해 주세요ㅎ.");
		$('modifyPw1').focus();
		return;		
	}
	
	if($('#modifyPw2').val()=="")
	{
		alert("2번 비밀번호를 입력 해 주세요ㅎ.");
		$('modifyPw2').focus();
		return;;		
	}
	
/*	
	 $.ajax({
		 data : {
			 mbr_pw : inputed,
			 mbr_email : email
		 }, 
		 url : "PWupdate",  type: 'POST', 
	
		 
		 success : function(data)
		 {
			 alert('비밀번호 변경 성공!!');
		 }
	 });
*/
	return false();
};


function searchId(){
	
	 var inputed2 = $('#mbr_name').val();
	 var inputed1 = $('#abcd1').val();
	 var mbr_tel1 = $('#mbr_tel1').val();
	 var mbr_tel2 = $('#mbr_tel2').val();
	 var mbr_tel3= $('#mbr_tel3').val();
	 
	 
	 $.ajax({
		 data : {
			 mbr_name : inputed2,
			 mbr_brthdy : inputed1,
			 mbr_tel1 : mbr_tel1,
			 mbr_tel2 : mbr_tel2,
			 mbr_tel3 : mbr_tel3,
			 },
			 
		 url : "searchId",  type: 'POST',
		 success : function(data)		 
		 {
		 
		 	 if(data.mbr_email != null)
			 {
		 		

		 		$('#searchformTB').remove();
//				$('#tab').css('display','');
				var activeTab = $('#tab3').attr('data-tab');
//				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$('#ajaxResult').append('<h2 class="ajaxResult"> 회원님의 아이디는 : '+data.mbr_email+' 입니다.</h2>');
				$('#tab3').addClass('current');
				$('#' + activeTab).addClass('current');
				$('#tab3').focus();
			 }					 
		 	 else
		 	 {
/*				 $('.#searchformTB').remove();
				 $('#checkOk').remove();
				 $('#idtd').append("<a class='checkok' id='checkOk'>&#10004;</a>");
				 idCheck=1;
				 alert('성공');
				 	$('.checkfalse').remove();
*/				 	alert('틀렸어요 완전히 비었어요.');
	 		  }
		 }		 
	 });
};

function searchPw(){
	
	 var mbr_name = $('#mbr_name1').val();
	 var mbr_email = $('#mbr_email1').val();
	 var mbr_tel1 = $('#mbr_tel11').val();
	 var mbr_tel2 = $('#mbr_tel22').val();
	 var mbr_tel3= $('#mbr_tel33').val();
	 
	 
	 $.ajax({
		 data : {
			 mbr_name : mbr_name,
			 mbr_email : mbr_email,
			 mbr_tel1 : mbr_tel1,
			 mbr_tel2 : mbr_tel2,
			 mbr_tel3 : mbr_tel3,
			 },
			 
		 url : "searchPw",  type: 'POST', 
		 success : function(data)		 
		 {
		 
		 	 if(data.mbr_email != "")
			 {
		 		 alert('비밀번호를 발송하였습니다.');
		 		$('#searchformTB').remove();
		 		var activeTab = $('#tab4').attr('data-tab');
				$('.tabcontent').removeClass('current');
				/*$('#aabbcc').append("<input type='hidden' value="+data.mbr_email+" id='mbr_email1' name='mbr_email'>");*/
				$('#aabbcc').append("<input type='hidden' name='mbr_email' value="+data.mbr_email+">");
				$('#tab4').addClass('current');
				$('#' + activeTab).addClass('current');
				$('#tab4').focus();
			 }					 
		 	 else
		 	 {
			 	alert('틀렸어요 완전히 비었어요.');
	 		  }
		 },
		error: function(data) {
		alert("입력하신 정보가 일치하지 않습니다. 확인 해 주세요.");
		}
	 });
};

function mailSend(){
	alert('nullCheck6 진입했쥬?');
	var password = $('#password').val();
	var inputed1 = $('#password2').val();
	var mbr_pw = $('#mbr_pw').val();
	var mbr_email = $('#mbr_email1').val();
	
	if($('#mbr_pw').val()=="")
	{
		alert("현재 비밀번호를 입력 해 주세요ㅎ.");
		$('mbr_pw').focus();
		return;		
	};
	
	if($('#password').val()=="")
	{
		alert("변경할 비밀번호를 입력 해 주세요ㅎ.");
		$('password').focus();
		return;	
	};
	
	if($('#password2').val()=="")
	{
		alert("변경할 비밀번호를 확인 해 주세요ㅎ.");
		$('password2').focus();
		return;	
	};
	
	alert('ajax 진입 전!!!!!!');
	 $.ajax({
		 
		 data : {
			 mbr_pw : mbr_pw,
			 password : password,
			 mbr_email : mbr_email1
		 }, 
		 url : "searchPw",  type: 'POST', async: true,
	
		 
		 success : function(data)
		 {
			 alert('success 진입ㄷㄷㄷㄷㄷㄷㄷ.');
			if(data==true)
			{
				alert("성공적으로 변경되었습니다. 다시 로그인 해 주세요.");
				location.href = 'main.jsp';
			}
			else
			{
				alert("비밀번호 변경에 실패하였습니다. 다시 확인 해 주세요.");
			}
		 }, 
		 
		error: function(data) {
				alert("오류가 발생했습니다.");
			}
	 });
}


function reserveOption2(){
	 var price = $('#inputprice').val();
	 var chkin = $('#chkin').val();
	 var chckt = $('#chckt').val();
	 var aaa = $('#aaa').val();
	 var bbb = $('#bbb').val();
	 var ccc = $('#ccc').val();
	 
	 var adult_nmpr = $('#adult_nmpr').val();
	 var child_nmpr = $('#child_nmpr').val();
	 var rum_qy = $('#rum_qy').val();
	 var nmpr_lmtt = $('#nmpr_lmtt').val();
	 var goods_no = $('#goods_no').val();
	 
	 var request_matter = $('#request_matter').val();
	 
	 console.log(price);
	 console.log(chkin);
	 console.log(chckt);
	 
	 $.ajax({
		 data : {
			 /*mbr_email : inputed*/
			 price : price,
			 chkin : chkin,
			 chckt : chckt,
			 adult_nmpr : adult_nmpr,
			 child_nmpr : child_nmpr,
			 rum_qy : rum_qy,
			 nmpr_lmtt : nmpr_lmtt,
			 goods_no : goods_no,
			 request_matter : request_matter,
			 aaa : aaa,
			 bbb : bbb,
			 ccc : ccc
			 
			 
		 }, 
		 url : "reserveOption5",  type: 'POST',
		 success : function(data)		 
		 {
/*
			 	if(inputed.length<8)
			 	{
				 $('#idtd2').append('<i class="checkfalse" id="id8">아이디는 8자리 이상으로 작성 해 주세요.</i>');
			 	return false;
*/
			 
			  /*document.location.href=('reserveOption2?price='+data.price+'&chkin='+data.chkin+'&chckt='+data.chckt+'')*/
			 	var form = document.createElement('form');
			 	var objs;

				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'price');
				objs.setAttribute('value', data.price);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'chkin');
				objs.setAttribute('value', data.chkin);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'chckt');
				objs.setAttribute('value', data.chckt);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'adult_nmpr');
				objs.setAttribute('value', data.adult_nmpr);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'child_nmpr');
				objs.setAttribute('value', data.child_nmpr);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'rum_qy');
				objs.setAttribute('value', data.rum_qy);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'nmpr_lmtt');
				objs.setAttribute('value', data.nmpr_lmtt);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'goods_no');
				objs.setAttribute('value', data.goods_no);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'request_matter');
				objs.setAttribute('value', data.request_matter);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'aaa');
				objs.setAttribute('value', data.aaa);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'bbb');
				objs.setAttribute('value', data.bbb);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				objs = document.createElement('input');
				objs.setAttribute('type', 'hidden');
				objs.setAttribute('name', 'ccc');
				objs.setAttribute('value', data.ccc);
				form.appendChild(objs);
				form.setAttribute('method', 'post');
				form.setAttribute('action', "reserveOption2");
				document.body.appendChild(form);
				
				
				form.submit();

				


			 /*}*/
		 }		 
	 });	 
};