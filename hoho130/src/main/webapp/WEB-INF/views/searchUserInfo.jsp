<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HOTEL INFORMATION</title>
	<!--  웹참조 -->
	<!-- 내장 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<!-- <link rel="stylesheet" href="css/owl.carousel.css"> -->
	<!--  SCRIPT -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/sticky2.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/bose.slider.js"></script>
	<script src="js/bose.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/aajex4.js"></script>
	<script src="js/check.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c8221c23589dfed8ee1b3a0a762585b"></script>
	<!-- 글꼴 -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
	<!-- 달력 -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/abcd1.js"></script>
	<style>
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
<!--  배너 -->
			<div class="toprow" id="top">
			<div class="container" style="margin-right:0px;">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-4" style="margin-left: 700px;">
					<p>
						<c:if test="${LOGIN != 'true'}">
						<i class="fa fa-user"></i><a style="color:white;" href="register.jsp">회원가입</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i><a href="#" onclick="document.location.href='logout'">로그아웃</a>&nbsp;
						</c:if>						
						    <c:if test="${LOGIN != 'true'}">
						 		<i class="fa fa-user"></i><a href="login.jsp">로그인</a>&nbsp;
						 	</c:if>
					 	    <c:if test="${LOGIN == 'true'}">		
					 	    <i class="fa fa-user"></i><a 	href="#" onclick="document.location.href='myPage'">마이페이지</a>&nbsp;					 	    
					 	    </c:if>						 
						 <i class="fa fa-user"></i><a href="register3.jsp">예약확인</a>&nbsp;
						 <input type="button" class="btn btn-danger" value="예약하기" data-toggle="modal" data-target="#reservConfirm">
					</p>
				</div>
			</div>
		</div>
<!-- -------------------------------------------------------------->	
<!--  헤더부분 -->
<div id="comeonhead">
	<header class="row menubar menu" id="myHeader">
		<div class="container">
			<div class="col-sm-12" style="padding-left:150px">
				<div class="col-sm-3" style="height: 35px;">
					<a class="ftitle2" style="padding:1%;" href="main.jsp">HOTEL</a>
				</div>
				<div class="col-sm-9" style="padding-right:280px; padding-top: 20px;">
					<div class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#firstmenu">
								<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"></a>
						</div>
						<div class="navbar-collapse collapse" id="firstmenu">
							<ul class="nav navbar-nav" style="font-size: 15px">
								<li><a href="main.jsp" class="homepagelink">HOME</a></li>
								<li><a href="Rooms.jsp" class="roominfo" 	>객실</a></li>
								<li><a href="rewards.jsp" class="rewardsinfo">리워즈</a></li>
								<li><a href="notice" class="noticeinfo">공지사항</a></li>
								<li><a href="hotelinfo.jsp" class="hotelinfo">호텔소개</a></li>
								<li><a href="#" class="booknow" data-toggle="modal" data-target="#reservConfirm" >예약하기</a></li>
							</ul>
						</div>
					</div>
				</div>
				</div>
			</div>
	</header>
</div>
<!-- HEADER 종료 -->
<!-- -------------------------------------------------------------->
	<div>
		<div class="container">
			<ul id="tab">
				<li class="loginfoli"><button class="loginfobt" id="searchbtn1" data-tab='tab1' style="background-color: black; color: white;">아이디 찾기</button></li>
				<li class="loginfoli"><button class="loginfobt" id="searchbtn2" data-tab='tab2'>비밀번호 찾기</button></li>
			</ul>
		</div>
	</div>

<!----------------------------------------------------------------->
<div id="tab1" class="tabcontent current" >      
	<div class="row whiteback" style="padding-top: 20px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="large reddish fwb" id="searchidH2" style="font-size: 30px; text-align:center;">아이디 찾기</h2>
					<table class="searchInfoTB" id=searchformTB>
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2"  >성명</h2></td>
							<td class="searchInfoTD2"><input class="searchInput" type="text" style="width:426px;" id="mbr_name" name="mbr_name"></td>
						</tr>
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2" >생일</h2></td>
							<td class="searchInfoTD2"><input class="searchInput" type="text" style="width:426px;" id="abcd1" name="mbr_brthdy" readonly></td>
						</tr>	
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2" >휴대전화</h2></td>
							<td class="searchInfoTD3">
									<select class="searchInputTel1" id="mbr_tel1">
										<option value="" style="padding-left: 15px;">선택</option>
										<option >010</option>
										<option >011</option>
										<option >016</option>
										<option >017</option>
										<option>053</option>
										<option >02</option>
										<option >031</option>
										<option >054</option>
									</select>&nbsp;-				
								<input class="searchInput" type="text" name="mbr_tel2" id="mbr_tel2">&nbsp;-
								<input class="searchInput" type="text"name="mbr_tel3" id="mbr_tel3">
							</td>							
						</tr>
						 <tr>
							<td colspan="2" class="searchInfoTD1" style="padding-left: 410px; padding-right: 0px;">
								<button class="btn btn-primary searchBT" onclick="searchId()">아이디 찾기</button>
								<button class="btn btn-primary searchBT" onclick="document.location.href='main.jsp'">취소</button>
							</td>
						</tr>
					</table>
					</div>
				</div>
			</div>				
		</div>
	</div>
    
   
<div id="tab2" class="tabcontent" >      
	<div class="row whiteback" style="padding-top: 20px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="large reddish fwb" id="searchidH2" style="font-size: 30px; text-align:center;">비밀번호 찾기<br><span class="searchpW">등록하신 e-mail로 임시비밀번호가 전송됩니다.</span></h2>
					<table class="searchInfoTB">
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2"  >이메일</h2></td>
							<td class="searchInfoTD2"><input class="searchInput" type="text" style="width:426px;" id="mbr_email1" name="mbr_email"></td>
						</tr>
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2" >성명</h2></td>
							<td class="searchInfoTD2"><input class="searchInput" type="text" style="width:426px;" id="mbr_name1" name="mbr_name"></td>
						</tr>	
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2" >휴대전화</h2></td>
							<td class="searchInfoTD3">
									<select class="searchInputTel1"  name="mbr_tel1" id="mbr_tel11">
										<option value="" style="padding-left: 15px;">선택</option>
										<option >010</option>
										<option >011</option>
										<option >016</option>
										<option >017</option>
										<option>053</option>
										<option >02</option>
										<option >031</option>
										<option >054</option>
									</select>&nbsp;-				
								<input class="searchInput" type="text" name="mbr_tel2" id="mbr_tel22">&nbsp;-
								<input class="searchInput" type="text" name="mbr_tel3" id="mbr_tel33">
							</td>							
						</tr>
						 <tr>
							<td colspan="2" class="searchInfoTD1" style="padding-left: 410px; padding-right: 0px;">
								<button class="btn btn-primary searchBT" onclick="searchPw()">비밀번호 찾기</button>
								<button class="btn btn-primary searchBT" onclick="document.location.href='main.jsp'">취소</button>
								
							</td>
						</tr>
					</table>
				</div>
			</div>
				
		</div>
	</div>
    </div>

	<div id="tab3" class="tabcontent">
		<div class="row whiteback" style="padding-top: 20px;">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h2 class="large reddish fwb" id="searchid"
							style="font-size: 40px; text-align: center;">아이디 찾기</h2>
						<div id="ajaxResult"></div>
					</div>
				</div>

			</div>
		</div>
	</div>



<div id="tab4" class="tabcontent" >      
	<div class="row whiteback" style="padding-top: 20px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">				
					<h2 class="large reddish fwb" id="searchidH2" style="font-size: 30px; text-align:center;">비밀번호 변경</h2>
					<form action="logUpdatePW">
					<table class="searchInfoTB" id=searchformTB>
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2"  >임시 비밀번호</h2></td>
							<td class="searchInfoTD2"><input class="searchInput" type="text" style="width:426px;" id="mbr_pw" name="mbr_pw"></td>
						</tr>
						<tr>
							<td class="searchInfoTD1"><h2 class="large reddish fwb searchH2" >변경할 비밀번호</h2></td>
							<td class="searchInfoTD2 " id="pwtd"><input class="searchInput" type="password" style="width:426px;" id="password" name="password"></td>
						</tr>	
						<tr>
							<td class="searchInfoTD1" ><h2 class="large reddish fwb searchH2" >비밀번호 확인</h2></td>
							<td class="searchInfoTD2" id="pwtd2"><input class="searchInput" type="password" style="width:426px;" id="password2"  oninput="pwCheck2()"></td>
						</tr>
						 <tr>
							<td colspan="2" class="searchInfoTD1" style="padding-left: 410px; padding-right: 0px;" id="aabbcc">
								<button type="submit" class="btn btn-primary searchBT" >비밀번호 변경</button>
								<button class="btn btn-primary searchBT" onclick="document.location.href='main.jsp'">취소</button>
							</td>
						</tr>
					</table>
					</form>
					</div>
				</div>
			</div>
				
		</div>
	</div>
 <!-- -------------------------------------------------------------->
</body>
</html>
