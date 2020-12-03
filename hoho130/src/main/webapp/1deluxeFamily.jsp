<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DELUXE FAMILY</title>
	<!--  CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link rel="stylesheet" href="css/bootstrap-slider.css">
	<!--  SCRIPT -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/jquery.bxslider.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/sticky2.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	
	<!-- 달력 -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/abcd1.js"></script>
	<!-- 글꼴 -->
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap&subset=korean" rel="stylesheet">
	<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="st ylesheet">-->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Sunflower:300&display=swap&subset=korean" rel="stylesheet">
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
	<script>
	$(document).ready(function(){
		var slider = $('.bxslider').bxSlider({
				auto: true, mode:'fade',pagerCustom: '#bx-pager1', speed:200
			});
			// 클릭시 멈춤 현상 해결 //
			$(document).on('click','.bx-next, .bx-prev,  #bx-pager1',function() {
			slider.stopAuto();
			slider.startAuto();
		});	
	});
	</script>
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
		<div class="container" >
			<div class="row">
				<div class="col-sm-12">
					<h1 class="roomh1">DELUXE FAMILY</h1><br>
						<h5 class="roomh5">HOTEL 디럭스 패밀리룸은 퀸 사이즈 1대와 싱글 사이즈 1대로 구성된 베드가 갖추어져 있어, 가족단위 여행객이 편안하게 머무를 수 있습니다.</h5><br><br>
							<div id="s_banner_wrap">
								<ul class="bxslider">
							      	<li><div><img src="images/room2.jpg" ></div></li>
							      	<li><div><img src="images/rooms/deluxeFamily2.jpg" ></div></li>
							      	<li><div><img src="images/rooms/deluxeFamily3.jpg" ></div></li>
							      	<li><div><img src="images/rooms/deluxeFamily4.jpg" ></div></li>
							     	<li><div><img src="images/rooms/deluxeFamily5.jpg" ></div></li>
							     	<li><div><img src="images/rooms/deluxeFamily6.jpg" ></div></li>
   		 						</ul>
								<div id="bx-pager1">
							      <a data-slide-index="0" href=""><img src="images/rooms/deluxeFamily1.jpg" style="width:175px; height:100px;"></a>
							      <a data-slide-index="1" href=""><img src="images/rooms/deluxeFamily2.jpg" style="width:175px; height:100px;"></a>
							      <a data-slide-index="2" href=""><img src="images/rooms/deluxeFamily3.jpg" style="width:175px; height:100px;"></a>
							      <a data-slide-index="3" href=""><img src="images/rooms/deluxeFamily4.jpg" style="width:175px; height:100px;"></a>
							      <a data-slide-index="4" href=""><img src="images/rooms/deluxeFamily5.jpg" style="width:175px; height:100px;"></a>
							      <a data-slide-index="5" href=""><img src="images/rooms/deluxeFamily6.jpg" style="width:175px; height:100px;"></a>
								</div>
							</div>							
						</div>
					</div>
				</div>	
			</div>


		<div class="row grayback" style="margin-top:100px;">
			<div class="row">
					<div class="col-sm-12" style="padding-left: 17%; padding-right: 17%;">
						<h1 class="roomh1" style="margin-top:50px;">투숙고객 서비스</h1>
					
							<table class="deluxeServiceTB" style="margin-bottom:70px;">
								<tr>
									<td><img class="imgService" src="images/running1.jpg"></td>
									<td><img class="imgService" src="images/running2.jpg"></td>
									<td><img class="imgService" src="images/running3.jpg"></td>
									<td><img class="imgService" src="images/running4.jpg"></td>
									<td><img class="imgService" src="images/running5.jpg"></td>
								</tr>
								<tr>
									<td class="imgService2">헬스클럽이용</td>
									<td class="imgService2">이용객 무료주차장</td>
									<td class="imgService2">24시간 서비스(프론트)</td>
									<td class="imgService2">카페 10% 할인</td>
									<td class="imgService2">수영장 30% 할인</td>								
								</tr>
							</table>				
				</div>
			</div>	
		</div>			







		<div class="row whiteback">
			<div class="container">
				<h1 class="roomh1">객실 이용안내</h1>
				<div class="col-sm-12" style="margin-top:50px;">
					<div class="row">
						<div class="col-sm-6">
							<p class="roomdetail2" >디럭스 패밀리룸은 휴식이 필요한 패밀리 고객을 위해 특별하게 준비된 객실 입니다.</p><br>
							<p class="roomdetail4">분리된 거실을 갖춘 넓은 객실에서 좀 더 여유 있는 휴가를 즐겨보시기를 바랍니다.</p><br>
							<ul>
								<li class="roomdetail5">객실은 모두 금연입니다.</li>
								<li class="roomdetail5">침구 추가 시 1박당 22,000원 추가되며 페이스타월 2장, 생수 1병이 기본 제공됩니다.</li>
								<li class="roomdetail5">최대정원 이상 입실 불가합니다.</li>
								<li class="roomdetail5">조식 및 부대시설 이용은 현장에서 신청/결제 할 수 있습니다.</li>
								<li class="roomdetail5">타월 추가 시 페이스타월 1장당 1,000원 , 바디타월 1장당 3,000원 추가됩니다.</li>
							</ul>
						</div>
						<div class="col-sm-6">
							<button type="button" class="btn btn-success roombtn1">문의하기</button>
							<button type="button" class="btn btn-success roombtn1" data-toggle="modal" data-target="#reservConfirm" >예약하기</button>
							<button type="button" class="btn btn-success roombtn1">객실 어메니티</button>
							<img class="roombreakfast" src="images/breakfast1.jpg">
							<p class="roomdetail4" style="text-align:center; margin-top:20px;"><span class="roomdetail3" style="color:red;">문의전화</span>&nbsp;&nbsp;000-000-000</p>											
						</div>
					</div>
				</div>
			</div>
		</div>




	<div class="row grayback">
		<div class="row">
			<div class="col-sm-12" style="padding-left: 17%; padding-right: 17%;">
				<h1 class="roomh1" style="margin-top: 50px;">INFORMATION</h1>

				<table class="deluxeInfo" style="margin-bottom: 100px;">
					<tr>
						<td class="deluxeInfoTd1">체크인</td>
						<td class="deluxeInfoTd2">15:00</td>
						<td class="deluxeInfoTd1">체크아웃</td>
						<td class="deluxeInfoTd2">11:00</td>
					</tr>
					<tr>
						<td class="deluxeInfoTd1">기준인원</td>
						<td class="deluxeInfoTd2">4명</td>
						<td class="deluxeInfoTd1">최대인원</td>
						<td class="deluxeInfoTd2">4명</td>
					</tr>
					<tr>
						<td class="deluxeInfoTd1">객실구성</td>
						<td class="deluxeInfoTd2">거실겸침실(싱글+싱글)+온돌+욕실<BR>(욕조 없음)</td>
						<td class="deluxeInfoTd1">객실면적</td>
						<td class="deluxeInfoTd2">46.5㎡(23평)</td>
					</tr>
					<tr>
						<td class="deluxeInfoTd1">전망</td>
						<td class="deluxeInfoTd2">KG뷰, 낙동강 뷰</td>
						<td class="deluxeInfoTd1">위치</td>
						<td class="deluxeInfoTd2">본관 5층</td>
					</tr>
				</table>
			</div>
		</div>
	</div>




		<div class="row whiteback">
			<div class="container">
					<h1 class="roomh1">부대시설 / 룸서비스</h1>
				<div class="row">
					<div class="col-sm-12" style="margin-top:50px;">
						<div class="col-sm-6">
							<ul>
								<li class="roomdetail5">체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
								<li class="roomdetail5">실내 수영장 무료 이용(만 13세 이상 입장 가능)<br>(단, 주말 및 공휴일에는 성인 보호자의 보호 하에
																   만 13세 미만인 고객이 이용 가능하며,
																   신장 140cm 미만인 고객은 성인 보호자의 보호 하에
   																	구명조끼 착용 시 이용 가능)</li>
								<li class="roomdetail5">사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
								<li class="roomdetail5">피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
								<li class="roomdetail5">타월 추가 시 페이스타월 1장당 1,000원, 바디타월 1장당 3,000원 추가됩니다.</li>
							</ul>
						</div>
						<div class="col-sm-6">
							<ul>
								<li class="roomdetail5"> 50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
								<li class="roomdetail5">55인치 스마트 TV(위성 TV 48개 채널)</li>
								<li class="roomdetail5">커피·차 티백 무료 제공</li>
								<li class="roomdetail5">엑스트라 베드 1개 추가 36,300원/1박</li>
								<li class="roomdetail5">베이비 크립(무료)</li>
								<li class="roomdetail5">객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
								<li class="roomdetail5">식사 및 음료 : 24시간 서비스</li>
								<li class="roomdetail5">중식, 일식 : 점심 12:00~14:00, 저녁 18:00~21:30</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
					<br><br>	<img src="images/3213.JPG" style="margin-left: 350px;">
		</div>
		
		
		
		
		

	<div class="row grayback">
		<div class="row">
			<div class="col-sm-12" style="padding-left: 17%; padding-right: 17%;">
				<h1 class="roomh1" style="margin-top: 50px; margin-bottom:50px;">객실 즉시예약</h1>
				<div class="row memberselection" style="margin-bottom:100px;">
					<div class="col-sm-offset-1 col-sm-10 pld0" style="width:100%; margin-left:20px">
						<div class="row">
							<div class="col-sm-9">
								<div class="col-xs-6 col-sm-3">
									<table class="datetable">
										<tr>
											<td><input type="text" id="abcd1" placeholder="체크인"></td>
										</tr>
									</table>
								</div>
								<div class="col-xs-6 col-sm-3">
									<table class="datetable">
										<tr>
											<td><input type="text" id="abcd2" placeholder="체크아웃"></td>
										</tr>
									</table>
								</div>
								<div class="col-sm-2">
									<select name="#">
										<option value="Guests" selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;성인</option>
										<option value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</option>
										<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</option>
										<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</option>
										<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</option>
									</select>
								</div>
								<div class="col-xs-6 col-sm-2">
									<select name="#" class="pr1r">
										<option value="Children" selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;어린이</option>
										<option value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0</option>
										<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</option>
										<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</option>
										<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</option>
									</select>
								</div>
								<div class="col-xs-6 col-sm-2">
									<select name="#" class="pr1r">
										<option value="Children" selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실수</option>
										<option value="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</option>
										<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</option>
										<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</option>
										<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</option>
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