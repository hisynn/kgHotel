<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HOTEL NOTICE</title>
	<!--  CSS -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Comfortaa:300,700" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap-slider.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<!--  SCRIPT -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/classie.js"></script>
	<script src="https://kit.fontawesome.com/309c848f43.js"></script>
	<!--  LOADER -->
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
            
        a { color: #000; }
		a:link { color: #000; }
		/* a:visited { color: #400080; } */
		a:visited { color: #000; }    
	</style>
	<!--  폰트 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	

</head>
<body onload="hideHREF.js">
<div class="loading"></div>
	<div class="row imgback">
		<div class="toprow" id="top">
		
	<div class="container" style="margin-right:0px;">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-4" style="margin-left: 700px;">
					<p>
						<c:if test="${LOGIN != 'true'}">
						<i class="fa fa-user"></i><a style="color:white;" href="register.jsp">회원가입</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i><a style="color:white;" href="#" onclick="document.location.href='logout'">로그아웃</a>&nbsp;
						</c:if>						
						    <c:if test="${LOGIN != 'true'}">
						 		<i class="fa fa-user"></i><a style="color:white;" href="login.jsp">로그인</a>&nbsp;
						 	</c:if>
					 	    <c:if test="${LOGIN == 'true'}">		
					 	    <i class="fa fa-user"></i><a 	style="color:white;" href="#" onclick="document.location.href='myPage'">마이페이지</a>&nbsp;					 	    
					 	    </c:if>						 
						 <i class="fa fa-user"></i><a style="color:white;" href="register2.jsp">예약확인</a>&nbsp;
						 <input type="button" class="btn btn-danger" value="예약하기" data-toggle="modal" data-target="#reservConfirm" >
					</p>
				</div>
			</div>
		</div>
	</div>
	
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

<!--  MODAL -->
	<div class="modal fade" id="reservConfirm" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="tac">
						<span>예약하기</span>
					</h2>
					<a class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="images/modalexit.png" class="modalexit" alt=""></span></a>
				</div>
				<div class="modal-body">
					<!--  MODAL BODY -->
							<h1 class="thesunh2">
								<span class="span1"></span> <span class="span2"></span> <span class="span3"></span>
							</h1>
							<div class="row memberselection">
								<div class="col-sm-offset-1 col-sm-10 pld0">
									<div class="row">
										<div class="col-sm-9">
											<div class="col-xs-6 col-sm-3">
												<table>
													<tr>
														<td><input type="text" id="abcd3" placeholder="체크인"></td>
														<td class="calenicon"><i class="fa fa-calendar"></i></td>
													</tr>
												</table>
											</div>
											<div class="col-xs-6 col-sm-3">
												<table>
													<tr>
														<td><input type="text" id="abcd4" placeholder="체크아웃"></td>
														<td class="calenicon"><i class="fa fa-calendar"></i></td>
													</tr>
												</table>
											</div>
											<div class="col-xs-6 col-sm-3">
												<select name="#">
													<option value="Guests" selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;성인</option>
													<option value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</option>
													<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</option>
													<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</option>
													<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</option>
												</select>
											</div>
											<div class="col-xs-6 col-sm-3">
												<select name="#" class="pr1r">
													<option value="Children" selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;어린이</option>
													<option value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0</option>
													<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</option>
													<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</option>
													<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</option>
												</select>
											</div>
										</div>
										<div class="col-sm-3">
											<div>
												<button class="searchbutton opl" onclick="window.location='search.html'">
													<i class="fa fa-search"></i> 검색하기
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	<!--  MODAL BODY 종료 -->


	<div class="row whiteback">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1>공지사항</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<h3 style="margin-top: 50px; margin-bottom: 50px;">

						총&nbsp;<span style="color: red">${EDto.count}</span>건
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<table id="noticeTB">
						<tr id="noticeTR">
							<th id="noticet1">제목</th>
							<th id="noticet2">관리자아이디</th>
							<th id="noticet3">등록일자</th>
							<th id="noticet4">조회수</th>
						</tr>
						<c:forEach var="notice" items="${LIST}" >
							<tr style="border-bottom: 1px solid; border-color: #e3e3e3; text-align:left;">
								<td class="abc" ><a href="#" onclick="location.href=('noticeDetail?pageNum=${EDto.pageNum}&mngr_id=${notice.mngr_id}&rgsde=${notice.rgsde}')">${notice.notice_sj}</a></td>
								<td class="abcc">${notice.mngr_id}</td>
								<!--  날짜 자르기 -->
								<c:set var = "string1" value = "${notice.rgsde}"/>
							  	<c:set var = "string2" value="${fn:substring(string1, 2, 10)}"/>
								<td class="abcc">${string2}</td>		
								<td class="abcc">${notice.rdcnt}</td>
							</tr>
						</c:forEach>
					</table>


					<table style="margin: auto;">
						<tr>
							<td class="abcc">
									<button class="fas fa-angle-double-left fa-1x" onclick="document.location.href='notice?pageNum=1'" style="margin-right: 10px;"></button>
								<c:choose>
									<c:when test="${EDto.pagePre==false}">
										<button class="fas fa-angle-left fa-1x"  onclick="document.location.href='notice?pageNum=1'" ></button>
									</c:when>
									<c:otherwise>
									<button class="fas fa-angle-left fa-1x"  onclick="document.location.href='notice?pageNum=${EDto.startPage-1}'"></button>
									</c:otherwise>
								</c:choose>								
									&nbsp;
								 <c:forEach var="pageBtn" begin="${EDto.startPage}" end="${EDto.endPage}">
									<c:choose>
										<c:when test="${EDto.pageNum eq pageBtn}">
											<b id="pagebold" style="padding:3px;">${pageBtn}</b>
										</c:when>
										<c:otherwise>
											<a href="notice?pageNum=${pageBtn}" style="padding-right: 2px; padding-left: 2px; font-size:25px;">${pageBtn}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach> &nbsp;
									<c:choose>
										<c:when test="${EDto.pageNum eq EDto.endPage}">
											<button class="fas fa-angle-right fa-1x" onclick="document.location.href='notice?pageNum=${EDto.endPage+1}'"></button>								 			 	
								 		</c:when>
								 		<c:otherwise>
								 			<button class="fas fa-angle-right fa-1x" onclick="document.location.href='notice?pageNum=${EDto.endPage}' "></button>								 		
								 		</c:otherwise>
								 </c:choose>
								<button class="fas fa-angle-double-right" onclick="document.location.href='notice?pageNum=${EDto.lastPage}'"></button>
								
							</td>
						</tr>
					</table>
				</div>
			</div>

						<%-- 		<h2>-------------------------------------</h2>
								<h2>EDto.pageNum = ${EDto.pageNum}</h2>
								<h2>EDto.pagePre = ${EDto.pagePre}</h2>
								<h2>EDto.pageNext = ${EDto.pageNext}</h2>
								<h2>EDto.count = ${EDto.count}</h2>
								<h2>EDto.startPage = ${EDto.startPage}</h2>
								<h2>EDto.endPage = ${EDto.endPage}</h2>
								<h2>EDto.next = ${EDto.next}</h2>
								<h2>EDto.start = ${EDto.start}</h2>
								<h2>EDto.end = ${EDto.end}</h2>
								<h2>pageBtn = ${pageBtn}</h2>
								<h2>notice.rgsde = ${NDto.rgsde}</h2> --%>
								
								
								




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