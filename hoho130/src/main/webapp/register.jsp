<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOTEL REGISTER</title>
<!--  웹참조 -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Comfortaa:300,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- 내장 CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-slider.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/comeonmenu.css">
<link rel="stylesheet" href="css/kakaoMap.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<!--  SCRIPT -->
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/bootstrap-datepicker.ko.js"></script>
<script src="js/jquery.mixitup.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wNumb.js"></script>
<script src="js/additional-methods.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/custom-script.js"></script>
<script src="js/datepicker.min.js"></script>
<script src="js/loading.js"></script>
<script src="js/check.js"></script>
<!-- 달력 -->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.min.js"></script>
<script src="js/abcd1.js"></script>
<!--  다음 카카오 우편번호  -->
<script src="js/kakaoZipcode.js"></script>
<script src="js/kakaoZipSearch.js"></script>
<link rel="stylesheet" href="css/checkbox_radio_bootstrap3.css">
<!-- 글꼴 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<!-- 
	style="font-family: 'Nanum Gothic', sans-serif;"
	style="font-family: 'Sunflower', sans-serif;"
	style="font-family: 'Cute Font', cursive;"
	style="font-family: 'Do Hyeon';"
	 -->
<style>
.loading {
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
<style>
</style>
</head>
<body>
	<div class="loading"></div>
	<!--  배너 -->
	<div class="row imgstillback2">
		<div class="toprow" id="top">

			<div class="container" style="margin-right: 0px;">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-4" style="margin-left: 700px;">
					<p>
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a style="color: white;" href="register.jsp">회원가입</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a style="color: white;" href="#" onclick="document.location.href='logout'">로그아웃</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a style="color: white;" href="login.jsp">로그인</a>&nbsp;
						 	</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a style="color: white;" href="#" onclick="document.location.href='myPage'">마이페이지</a>&nbsp;					 	    
					 	    </c:if>
						<i class="fa fa-user"></i><a style="color: white;" href="register3.jsp">예약확인</a>&nbsp; <input type="button" class="btn btn-danger" value="예약하기" data-toggle="modal" data-target="#reservConfirm">
					</p>
				</div>
			</div>
		</div>
		<!-- -------------------------------------------------------------->
		<!--  헤더부분 -->
		<div id="comeonhead">
			<header class="row menubar menu" id="myHeader">
				<div class="container">
					<div class="col-sm-12" style="padding-left: 150px">
						<div class="col-sm-3" style="height: 35px;">
							<a class="ftitle2" style="padding: 1%;" href="main.jsp">HOTEL</a>
						</div>
						<div class="col-sm-9" style="padding-right: 280px; padding-top: 20px;">
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
										<li><a href="Rooms.jsp" class="roominfo">객실</a></li>
										<li><a href="rewards.jsp" class="rewardsinfo">리워즈</a></li>
										<li><a href="notice" class="noticeinfo">공지사항</a></li>
										<li><a href="hotelinfo.jsp" class="hotelinfo">호텔소개</a></li>
										<li><a href="#" class="booknow" data-toggle="modal" data-target="#reservConfirm">예약하기</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
		<!-- HEADER 종료 -->
	</div>
	<!--  HEADER 종료 -->
	<div class="row grayback">
		<div class="container" style="padding-left: 60px;">
			<div class="row">
				<div class="col-sm-12">
					<form class="form-inline" role="form" action="register">
						<H1 style="text-align: center; padding-top: 50px; font-family: 'Jua', sans-serif;">회원정보 입력</H1>
						<table class="registerTB">
							<tr>
								<td class="registerTD1" id="regrequired">이메일</td>
								<td class="registerTD2" id="idtd"><input type="text" class="registerInput" name="mbr_email" id="mbr_email" oninput="checkid()" /> <!-- <a class="checkok" id="checkOk">&#10004;</a> --></td>
							</tr>
							<tr>
								<td class="registerTD1"></td>
								<td class="registerTD2" id="idtd2"></td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired">비밀번호</td>
								<td class="registerTD2" id="pwtd"><input type="password" class="registerInput" name="mbr_pw" id="password" /></td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired">비밀번호 확인</td>
								<td class="registerTD2" id="pwtd2"><input type="password" class="registerInput" name="mbr_pw2" id="password2" oninput="pwCheck()" /></td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired">성명</td>
								<td class="registerTD2"><input type="text" class="registerInput" name="mbr_name" id="mbr_name" /></td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired">성별</td>
								<td>
									<div class="col-sm-4" style="text-align: left; margin-left: 30px;">
										<div class="radio">
											<label style="font-size: 16px;"> <input type="radio" name="mbr_sexdstnr" value="M" checked> <i class="fa fa-2x icon-radio"></i> 남자
											</label>
										</div>
									</div>
									<div class="col-sm-4" style="text-align: left; margin-left: -200px;">
										<div class="radio" style="margin-left: 20px;">
											<label style="font-size: 16px;"> <input type="radio" name="mbr_sexdstnr" value="M" checked id="mbr_sexdstnr"> <i class="fa fa-2x icon-radio"></i> 여자
											</label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired">전화번호</td>
								<td class="registerTD2">
									<div class="regform-input"></div> <select class="registerInputTel" style="margin-left: 15px;" name="mbr_tel1" id="mbr_tel1">
										<option value="" style="padding-left: 15px;">선택</option>
										<option>010</option>
										<option>011</option>
										<option>016</option>
										<option>017</option>
										<option>053</option>
										<option>02</option>
										<option>031</option>
										<option>054</option>
								</select> -&nbsp; <input type="text" class="registerInputTel" name="mbr_tel2" value="" id="mbr_tel2" />&nbsp;- <input type="text" class="registerInputTel" name="mbr_tel3" value="" id="mbr_tel3" />
								</td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired">생년원일</td>
								<td class="registerTD2"><input type="text" class="registerInput" name="mbr_brthdy" id="abcd1" readonly></td>
							</tr>
							<tr>
								<td class="registerTD1">주소</td>
								<td class="registerTD2"><input type="button" class="btn btn-primary" value="우편번호검색" style="width: 250px; height: 50px; margin-left: 15px; margin-top: 15px; font-size: 22px; padding-left: 30px;" onClick="openDaumZipAddress();"></td>
							</tr>
 							<tr>
								<td class="registerTD1"></td>
								<td class="registerTD2">
								
								<!-- <input type="text" class="registerInputTel" name="mbr_postcode1" value="" id="postcode1" style="margin-left: 15px;" readonly>&nbsp;- 
								<input type="text" class="registerInputTel" name="mbr_postcode2" id="postcode2" value="" readonly>&nbsp;-   -->
								
								<input type="text" class="registerInputTel" name=mbr_zonecode id="zonecode" value="" readonly style="margin-left: 15px;"></td>
							</tr> 

							<tr>
								<td class="registerTD1"></td>
								<td class="registerTD2">
									<input type="text" class="registerInput" name="mbr_address" id="address" value="" readonly />
									
								</td>
							</tr>
							<tr>
								<td class="registerTD1">상세주소</td>
								<td class="registerTD2"><input type="text" class="registerInput" name="mbr_address_etc" id="address_etc" value="" placeholder="상세주소를 입력 해 주세요"></td>
							</tr>
							<tr>
								<td class="registerTD1" id="regrequired" style="padding: 20px;">국적</td>
								<td class="registerTD2"><select class="form-control" style="width: 350px; margin-left: 15px; height: 50px; margin-top: 30px; padding-top: 15px; margin-bottom: 50px;" name="mbr_nlty" id="mbr_nlty">
										<option value="" style="padding-left: 15px;">선택</option>
										<option value="Korea">Korea</option>
										<option value="Japan">Japan</option>
										<option value="China">China</option>
										<option value="Vietnam">Vietnam</option>
										<option value="Belgium">Belgium</option>
										<option value="Germany">Germany</option>
										<option value="Portugal">Portugal</option>
										<option value="Spain">Spain</option>
										<option value="United Kingdom">United Kingdom</option>
										<option value="Australia">Australia</option>
										<option value="Canada">Canada</option>
										<option value="United States">United States</option>
								</select></td>
							</tr>
						</table>
						<table class="registerTB2">
							<tr>
								<td><input type="submit" class="btn btn-primary" id="submitinput" value="회원가입" style="margin-left: 370px; margin-right: 30px;" onclick="return nullCheck()"> <input type="button" class="btn btn-primary" id="submitinput" value="취소" onclick="return nullCheck()"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>


	<hr>
	<h2 style="text-align: center; color: green; font-size: 300px;">&#10004;</h2>






	<footer class="row footer">
		<div class="container" style="margin-top: 0px; margin-bottom: 0px;">
			<div class="col-sm-12" style="margin: 0px; padding-left: 140px;">
				<table>
					<tr>
						<td class="maintd"><a class="ftitle98" href="notice">공지사항</a></td>
						<td class="maintd"><a class="ftitle98" href="Privacyinfo.jsp">개인정보처리방침</a></td>
						<td class="maintd"><a class="ftitle98" href="Privacyinfo.jsp">이용약관</a></td>
						<td class="maintd"><a class="ftitle98" href="Privacyinfo.jsp">자주하는질문</a></td>
						<td class="maintd"><a class="ftitle98" href="Privacyinfo.jsp">고객의소리</a></td>
						<td class="maintd"><a class="ftitle3" href="Privacyinfo.jsp">사이트맵</a></td>
					</tr>
				</table>
			</div>
			<div class="col-sm-3" style="margin-top: 50px;">
				<a class="ftitle2" href="main.jsp">HOTEL</a>
			</div>

			<div class="col-sm-5" style="margin-bottom: 0px;">
				<p class="ftitle">HOTEL</p>
				<br>
				<br>
				<p class="ftitle97">상호명 : HOTEL 대표자 : 홍길동 개인정보관리책임자 : 나길동</p>
				<p class="ftitle97">등록번호 : 없습니다. 사업자등록번호 : 없습니다.</p>
				<p class="ftitle97">법인등록번호 : 없습니다. 통신판매번호 : 없습니다.</p>
				<p class="ftitle">ADDRESS</p>
				<br>
				<br>
				<p class="ftitle97">대구광역시 달서구 대구광역시 달서구 1234번지</p>
			</div>

			<div class="col-sm-3">
				<p class="ftitle">만든사람</p>
				<br> <br>
				<table>
					<tr>
						<td>조정인</td>
						<td>이창선</td>
						<td>이용우</td>
						<td>박상현</td>
					</tr>
				</table>
				<br>
				<p class="ftitle">제작기간</p>
				<br> <br>
				<table>
					<tr>
						<td>2020.03.09 ~ 2020.03.23</td>
					</tr>
				</table>
			</div>
		</div>
	</footer>
	<!-- // End Of Footer  -->
</body>
</html>