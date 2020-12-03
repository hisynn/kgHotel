<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOTEL NOTICE</title>
<!--  CSS -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Comfortaa:300,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/smoothness/jquery-ui.css?ver=4.2.4" type="text/css" media="all" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap-slider.css">
<!--  SCRIPT -->
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/bose.slider.js"></script>
<script src="js/bose.js"></script>
<script src="log/js/main.js"></script>
<script src="js/loading.js"></script>
<script src="js/hideHREF.js"></script>
<!--  LOADER -->
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


</head>
<body onload="hideHREF.js">
	<div class="loading"></div>
	<div class="row imgback">

		<!--  TOP  -->
		<div class="toprow" id="top">

			<div class="container">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-11 col-sm-push-12">
					<p>
						<i class="fa fa-user"></i><a href="register.jsp">회원가입</a>&nbsp;
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a href="login.jsp">로그인</a>&nbsp;
						 	</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a onclick="document.location.href='logout'">로그아웃</a>&nbsp;
					 	    </c:if>
						<i class="fa fa-user"></i><a href="register3.jsp">예약확인</a>&nbsp; <input type="button" class="btn btn-danger" value="예약하기" data-toggle="modal" data-target="#reservConfirm">
					</p>
				</div>
			</div>
		</div>
	</div>
	<!--  TOPP 종료 -->
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
<div class="row whiteback">
		<div class="container"> 
			<div class="row">
				<div class="col-sm-12">
					<h1>공지사항</h1>
					<hr class="detailHr">
					<div class="detailsubject">
						${NDto.notice_sj}<br>					
					</div>
					<hr>
					<div class="detailCN">
							${NDto.notice_cn}
					</div>
					<hr>
					<div align="right">
					<button class="detailbutton" onclick="location.href='notice?pageNum=${EDto.pageNum}'">목록으로</button>
					</div>
				</div>
			</div>
		</div>
</div>	
	
	<!-- FOOTER -->
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
				
			<div class="col-sm-5" style="margin-bottom:0px;">
					<p class="ftitle">HOTEL</p><br><br>
					<p class="ftitle97">상호명 : HOTEL 대표자 : 홍길동  개인정보관리책임자 : 나길동</p>
					<p class="ftitle97">등록번호 : 없습니다. 사업자등록번호 : 없습니다.</p> 
					<p class="ftitle97">법인등록번호 : 없습니다. 통신판매번호 : 없습니다.</p>
					 <p class="ftitle">ADDRESS</p><br><br>
					<p class="ftitle97">대구광역시 달서구 대구광역시 달서구 1234번지</p>
			</div>
			
			<div class="col-sm-3">
				<p class="ftitle">만든사람</p>
				<br>
				<br>
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
				<br>
				<br>
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