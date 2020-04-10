<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HOTEL ROOMS</title>
	<!--  CSS -->
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
	<script src="js/sticky2.js"></script>
	<script src="https://kit.fontawesome.com/309c848f43.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	
	<!-- 달력 -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/abcd1.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap&subset=korean" rel="stylesheet">
	<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="st ylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Sunflower:300&display=swap&subset=korean" rel="stylesheet">-->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	
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
     </style>
</head>
<body>
<div class="loading"></div>
	<div class="row imgback">
		<div class="toprow" id="top">
		
	<div class="container" style="margin-right:0px;">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-4" style="margin-left: 700px;">
					<p>
						<c:if test="${LOGIN != 'true'}">
						<i class="fa fa-user"></i><a href="register.jsp">회원가입</a>&nbsp;
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
						 <i class="fa fa-user"></i><a href="register2.jsp">예약확인</a>&nbsp;
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

					<h1 class="roomh1">객실종합 안내</h1>
					<br>
					<h5 class="roomh5">HOTEL의 객실의 정보를 알려 드립니다.</h5>
					<br>
					<br>

					<div class="roomarti">
						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/rooms/clubDeluxe2.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 디럭스</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='deluxe.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												디럭스룸은 금호강과 학산의 수려한 경관을 조망할 수 있어<br> 상쾌함과 편안함을 선사합니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room2.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 디럭스 패밀리</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='1deluxeFamily.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												디럭스 패밀리룸은 가족단위 고객분들의 여유로운 휴식을 위한  안락하고 품격있는 공간으로 디자인되었습니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 5층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room3.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 클럽 디럭스</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='2clubDeluxe.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
											클럽 디럭스룸은 편안한 휴식과 최고의 만족을 이끌어내는 클럽 딜럭스는 스카이뷰를 자랑하는 클럽 라운지에서의 조식과 해피아워를 즐길 수 있어 커플 또는 비즈니스 여행객에게 적합한 객실입니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 6층에서8층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room4.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 클럽 스위트</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='3clubSuite.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												클럽 스위트는 넓은 공간과 편안한 인테리어를 갖추고 있으며, 품격 있는 여행을 위한 최고의 서비스를 제공합니다. 스카이뷰를 자랑하는 클럽 라운지에서의 조식이 제공됩니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 9층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room9.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 로얄</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='4royal.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												최고급 수준의 인테리어를 갖춘 품격 있는 공간으로 간결하고 세련된 프라임 시티뷰 객실입니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 10층에서 13층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room6.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 그랜드 스위트</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='5grandSuite.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												녹음이 우거진 팔공산을 파노라믹 뷰로 감상할 수 있는 한실 타입과 샴페인 파티를 위한 스페셜 테이블을 갖춘 양실 타입으로 구분되는 그랜드 스위트는 고객의 취향에 따라 원하는 타입을 고를 수 있는 객실입니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 14층에서 15층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room7.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 그랜드 패밀리 스위트</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='6grandFamilySuite.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												안락한 반원형 형태의 소파를 중심으로 영화를 감상할 수 있는 미디어 룸을 갖춘 그랜드 패밀리 스위트는 가족 또는 지인들과 소중한 추억을 보내기 좋은 최적의 객실입니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 16층에서 17층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room8.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 프리미어 스위트</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='7primierSuite.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												청명한 하늘과 닿은 한강 풍경을 바라보며 스파를 즐길 수 있는 프리미어 스위트는 다양한 기능을 충족시켜주는 넓은 거실과 두 개의 침실로 이루어진 객실입니다
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 18층에서 19층</h5></td>
									</tr>
								</table>
							</div>
						</article>

						<article class="roomarticle" style="margin-bottom: 30px;">
							<div class="photo">
								<img class="photoContent" src="images/room5.jpg">
							</div>
							<div class="RoomContent">
								<table class="RoomTb">
									<tr style="float: left;">
										<td class="Roomtd1"><h2 class="Roomh2">HOTEL 프레지덴셜 스위트</h2></td>
										<td class="Roomtd2"><button class="btn btn-primary Roombt1" onclick="document.location.href='8presidentialSuite.jsp'">MORE+</button></td>
									</tr>
									<tr style="float: left; margin-top: 20px;">
										<td class="Roomtd2"><h5 class="Roomh5">
												HOTEL 최고층에 위치한 프레지덴셜 스위트는 배산임수를 주제로 푸르른 아차산과 수려한 한강 경관을 동시에 감상할 수 있는 국빈급 VIP 전용 객실입니다.
											</h5></td>
									</tr>
									<tr>
										<td><h5 class="Roomh6">위치 : 본관 20층</h5></td>
									</tr>
								</table>
							</div>
						</article>








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
		
	<script src="js/plugins.js"></script>
    <script src="js/all.min.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/theme.js"></script>
</body>
</html>