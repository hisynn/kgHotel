<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>HOTEL LOGIN PAGE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--  CSS -->
	<link rel="icon" type="image/png" href="log/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="log/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="log/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="log/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="log/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="log/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="log/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="log/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="log/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="log/css/util.css">
	<link rel="stylesheet" type="text/css" href="log/css/main.css">
	<!--  폰트 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean" rel="stylesheet">
	<!-- 
	style="font-family: 'Nanum Gothic', sans-serif;"
	style="font-family: 'Sunflower', sans-serif;"
	style="font-family: 'Cute Font', cursive;"
	 -->
		<style>
        /* Preloader CSS */
        .loading{
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999999;
            width: 100%;
            height: 100%;
            background-color: #fff;
            background-image: url(images/1.gif);
            background-repeat: no-repeat;
            background-position: center center;
        }

		</style>
</head>
<body>
<div class="loading"></div>
	
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="login" method="post" >
				<!-- <form class="login100-form validate-form" > -->
					<div>
					<a class="ftitle2">KG HOTEL</a>
					</div>
					<span class="login100-form-title p-b-34" style="font-family: 'Nanum Gothic', sans-serif;"> <b style="font-size:35px">맴버쉽 로그인</b> </span>

					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name" style="font-family: 'Sunflower', sans-serif;">
						<input id="first-name" class="input100" type="text" name="mbr_email" placeholder="회원 이메일"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password" name="mbr_pw" placeholder="비밀번호"> <span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn" style="font-family: 'Sunflower', sans-serif;" ><b style="font-size:25px" >로그인</b></button>
					</div>

					<div class="w-full text-center p-t-27 p-b-239" style="font-family: 'Cute Font', cursive;">
						<span class="txt1" > Forgot </span> <a href="#" class="txt2" style="font-size:16px" onclick="document.location.href='searchUserInfo'"> 회원 이메일 / 비밀번호</a>
					</div>

					<div class="w-full text-center">
						<a href="main.jsp" class="txt3" > <b style="font-size:20px">홈 이동</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="register.jsp" class="txt3"><b style="font-size:20px">회원가입</b></a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('log/images/14.jpg');"></div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>
	
	<script src="log/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="log/vendor/animsition/js/animsition.min.js"></script>
	<script src="log/vendor/bootstrap/js/popper.js"></script>
	<script src="log/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="log/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
	<script src="log/vendor/daterangepicker/moment.min.js"></script>
	<script src="log/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="log/vendor/countdowntime/countdowntime.js"></script>
	<script src="log/js/main.js"></script>
	<script src="js/loading.js"></script>
	
</body>
</html>