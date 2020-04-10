<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOTEL INFORMATION</title>
<!--  웹참조 -->
<!-- 내장 CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/gallery.css">
<link rel="stylesheet" href="css/bootstrap-slider.css">
<link rel="stylesheet" href="css/kakaoMap.css">

<!--  SCRIPT -->
<!-- <script src="js/jquery-3.4.1.min.js"></script> -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/classie.js"></script>
<script src="js/sticky2.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/bose.slider.js"></script>
<script src="js/bose.js"></script>
<script src="js/loading.js"></script>
<script src="js/kakaoMap2.js"></script>
<script src="js/aajex4.js"></script>
<script src="js/aajex5.js"></script>
<script src="js/kakaoMap.js"></script>


<script type="text/javascript" src="js/datepicker.min.js"></script>
<script type="text/javascript" src="js/custom-script.js"></script>
<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
<script src="js/aajex6.js"></script>
<script src="js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c8221c23589dfed8ee1b3a0a762585b"></script>
<!-- 글꼴 -->
<link	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"	rel="stylesheet">
<link	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300&display=swap&subset=korean"	rel="stylesheet">
<link	href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap&subset=korean"	rel="stylesheet">
<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
	-->
<link	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean"	rel="st ylesheet">
<link	href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Sunflower:300&display=swap&subset=korean"	rel="stylesheet">
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
<script>
	$(document).ready(function(){
		$('#infobtn4').click(function(){
		map();
		});
	});
	</script>
</head>
<body>
	<div class="loading"></div>
	<!--  배너 -->
	<div class="row imgstillback">
		<div class="toprow" id="top">

			<div class="container" style="margin-right: 0px;">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-4" style="margin-left: 700px;">
					<p>
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a style="color:white;" href="register.jsp">회원가입</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a style="color:white;" href="#" onclick="document.location.href='logout'">로그아웃</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a style="color:white;" href="login.jsp">로그인</a>&nbsp;
						 	</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a style="color:white;" href="#" onclick="document.location.href='myPage'">마이페이지</a>&nbsp;					 	    
					 	    </c:if>
						<i class="fa fa-user"></i><a style="color:white;" href="register3.jsp">예약확인</a>&nbsp; <input
							type="button" class="btn btn-danger" value="예약하기"
							data-toggle="modal" data-target="#reservConfirm">
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
						<div class="col-sm-9"
							style="padding-right: 280px; padding-top: 20px;">
							<div class="navbar navbar-default" role="navigation">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse" data-target="#firstmenu">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
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
										<li><a href="#" class="booknow" data-toggle="modal"
											data-target="#reservConfirm">예약하기</a></li>
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

	</div>

	<!-- -------------------------------------------------------------->
	<div class="container">

		<ul id="tab">
			<li class="infoli"><button class="infobt" id="infobtn1"
					data-tab='tab1' style="background-color: black; color: white;">호텔소개</button></li>
			<li class="infoli"><button class="infobt" id="infobtn2"
					data-tab='tab2'>호텔개요</button></li>
			<li class="infoli"><button class="infobt" id="infobtn3"
					data-tab='tab3'>객실 갤러리</button></li>
			<li class="infoli"><button class="infobt" id="infobtn4"
					data-tab='tab4'>주변관광지 안내</button></li>
		</ul>
	</div>




	<div class="container">
		<!-- -------------------------------------------------------------->

		<div id="tab1" class="tabcontent current" >
			<div class="row whiteback">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">

							<h2 class="large reddish fwb"
								style="font-size: 30px; margin-left: 390px;">차별화된 서비스와 가치</h2>
							<br>
							<p class="e7 tac">
								HOTEL은 도심 속 자연에서의 편안한 휴식과 연회, 엔터테인먼트, 레저와 호텔의 최고급 서비스가 함께 제공되는
								공간 입니다.<br> 총 0개의 객실과 차별화된 스토리텔링 서비스로 최상의 맛을 제공하는 0개의 베이커리샵
								및 한식, 중식, 양식의 레스토랑을 갖추고 있습니다.<br> <br> <br>
							</p>
						</div>
					</div>


					<div class="row mt-6" style="margin-top: 30px;">
						<div class="col-lg-4">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/1.jpg">
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/2.jpg" alt="" />
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/3.jpg" alt="" />
								</div>
							</div>
						</div>

						<div class="col-lg-4">
							<div class="row align-items-center" style="margin-top: 30px;">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/4.jpg">
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0" style="margin-top: 30px;">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/5.jpg" alt="" />
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0" style="margin-top: 30px;">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/6.jpg" alt="" />
								</div>
							</div>
						</div>
					</div>

					<!-- <div class="row greyback noback" > -->
					<div class="col-sm-12">
						<h2 class="large reddish fwb"
							style="font-size: 30px; margin-left: 390px;">
							<br> <br> <br>자연속의 힐링 스테이션
						</h2>
						<br>
						<p class="e7 tac">
							HOTEL은 도심 속 자연에서의 편안한 휴식과 연회, 엔터테인먼트, 레저와 호텔의 최고급 서비스가 함께 제공되는 공간
							입니다.<br> 총 0개의 객실과 차별화된 스토리텔링 서비스로 최상의 맛을 제공하는 0개의 베이커리샵 및
							한식, 중식, 양식의 레스토랑을 갖추고 있습니다.<br> <br> <br> <br>
						</p>
					</div>
					<!-- </div> -->

					<div class="row mt-6" style="margin-top: 30px;">
						<div class="col-lg-4">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/7.jpg">
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/8.jpg" alt="" />
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/9.jpg" alt="" />
								</div>
							</div>
						</div>

						<div class="col-lg-4">
							<div class="row align-items-center" style="margin-top: 30px;">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/10.jpg">
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0" style="margin-top: 30px;">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/11.jpg" alt="" />
								</div>
							</div>
						</div>
						<div class="col-lg-4 mt-4 mt-lg-0" style="margin-top: 30px;">
							<div class="row align-items-center">
								<div class="col-md-6 col-lg-12">
									<img class="w-100" src="images/info/12.jpg" alt="" />
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>


		<!-- <div id="tab2" class="tabcontent"  style="margin-bottom: 600px; "> -->
		<div id="tab2" class="tabcontent">
			<div class="row whiteback">
				<div class="container">
					<div class="row">
						<div class="col-sm-12" style="padding-bottom: 50px;">
							<img style="width: 100%; height: 500px;" src="images/summary.jpg">
							<h2 class="large reddish fwb"
								style="text-align: center; font-size: 30px; margin-top: 30px;">
								<br>HOTEL
							</h2>
							<br>
							<div class="col-sm-6">
								<br>
								<p class="info1">An Exclusive Getaway</p>
								<br>
								<p class="info2">
									휴양지에서 품격있는 리조트 호텔 문화를 정착하기 위해 연중<br> 문화 및 엔터테이먼트 프로그램을 상설해
									고객들에게 제공하고<br> 있는 제주신라호텔은 레저 전문 직원인(Guest Activity<br>
									Organizer), 항공예약부터 여행의 풀 서비스를 제공하는 T.P.O<br> (Tranvel Plan
									Office)등 소프트웨어 부분의 혁신과 문라이트 스위밍,<br> 글램핑, 와이너리 투어 등 다양한
									프로그램을 국내 최초로 운영하여<br> 사계절 체재형 호텔로서의 트랜드를 이끌어 가고 있습니다.<br>
									누구나 한 번쯤 꿈꾸는 품격있고 화려한 일상탈출, HOTEL에서<br> 경험하실 수 있습니다.
								</p>
								<br>
								<p class="info1">Urban Lifestyle Hotel</p>
								<br>
								<p class="info2">한국의 전통미와 현대적 감각을 겸비하고 있는 세계속의 명문호텔 HOTEL은
									세계 최고의 어번(Urban) 라이프스타일 호텔로 고객들에게 최고급 서비스를 제공합니다. 럭셔리 호텔에서 '일상이
									최고의 순간이 되는 곳' 이라는 컨셉을 선보이며 휴식은 물론 고급 식문화, 예술, 쇼핑, 웨딩, 엔터테이먼트 등
									고객의 고품격 라이프스타일을 제안하는 공간으로 거듭나고 있습니다.</p>
							</div>
							<div class="col-sm-6">
								<br>
								<p class="info1">A Leading Global Property</p>
								<br>
								<p class="info2">세계자연문화유산인 독도의 아름다운 풍광을 담은 리조트로서 그 명성을 쌓아가고
									있는 HOTEL은 개관 후부터 지금까지 품격과 문화가 있는 휴식지로써 수많은 굵직한 국제행사를 성공적으로 치러온
									최고의 호텔입니다. 이국적인 분위기가 최고의 시설을 선보이며 고객에게 먼저 다가가는 호텔에 특화된 서비스로 호텔에
									다녀간 세계의 국가 수반을 비롯 많은 VIP들에게 크나 큰 찬사를 받아 왔습니다.</p>
								<br> <br> <br> <br> <br>
								<p class="info1">A Leading Global Property</p>
								<br>
								<p class="info2">세계 럭셔리 호텔들과 어깨를 나란히 하고 있는 HOTEL은 고객 한 분 한
									분을 배려하는 기품있는 서비스로 세계 각국의 수반들과 외교, 경제, 문화 등의 분야의 명사로부터 찬사를 받고
									있으며 해외 매체로부터 최고의 HOTEL로 선정되고 있습니다.</p>
							</div>


						</div>
						<hr class="infohr">
						<div class="col-sm-12">
							<div class="col-sm-4">
								<div class="col-sm-3"
									style="margin-top: 50px; padding-left: 100px; padding-right: 100px;">
									<a class="ftitleinfo" href="#">HOTEL</a>
								</div>
							</div>
							<div class="col-sm-6">
								<p class="info3">주소 : 대구광역시 대구광역시 대구광역시</p>
								<p class="info3">대표전화 : 053-000-0000</p>
								<p class="info3">홈페이지 : http://localhost:8085/hoho127</p>
							</div>
						</div>
						<hr class="infohr">


					</div>
				</div>
			</div>
		</div>



		<div id="tab3" class="tabcontent" style="margin-top: 20px;">
			<div class="col-sm-12">
				<h2 class="large reddish fwb"
					style="font-size: 30px; text-align: center;">Gallery</h2>
			</div>
			<div class="row whiteback bottom-space">
				<div class="container">
					<div class="portfolio-grid" id="works">
						<div class="wrap">
							<div class="container">
								<ul id="filters" class="clearfix" style="padding-bottom: 0px;">
									<li><span class="filter active"
										data-filter="PresidentialSuite PrimierSuite GrandFamily GrandSuite Royal ClubSuite ClubDeluxe DeluxeFamily Deluxe">All</span></li>
									<li><span class="filter" data-filter="Deluxe">디럭스</span></li>
									<li><span class="filter" data-filter="DeluxeFamily">디럭스
											패밀리</span></li>
									<li><span class="filter" data-filter="ClubDeluxe">클럽
											디럭스</span></li>
									<li><span class="filter" data-filter="ClubSuite">클럽
											스위트</span></li>
									<li><span class="filter" data-filter="Royal">로얄</span></li>
								</ul>
								<ul id="filters" class="clearfix"
									style="padding-top: 0px; padding-bottom: 0px; padding-left: 100px;">
									<li><span class="filter" data-filter="GrandSuite">그랜드
											스위트</span></li>
									<li><span class="filter" data-filter="GrandFamily">그랜드
											패밀리</span></li>
									<li><span class="filter" data-filter="PrimierSuite">프리미어
											스위트</span></li>
									<li><span class="filter" data-filter="PresidentialSuite">프레지덴셜
											스위트</span></li>
								</ul>
								<div id="portfoliolist">
									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe0.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe1.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe2.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe3.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe4.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe5.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio Deluxe" data-cat="Deluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxe6.jpg" rel="example_group">
												<img src="images/rooms/info/deluxe6.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily0.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily1.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily2.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily3.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily4.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily5.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio DeluxeFamily" data-cat="DeluxeFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/deluxeFamily6.jpg"
												rel="example_group1"> <img
												src="images/rooms/info/deluxeFamily6.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe0.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe1.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe2.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe3.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe4.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe5.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubDeluxe" data-cat="ClubDeluxe">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/clubDeluxe6.jpg"
												rel="example_group2"> <img
												src="images/rooms/info/clubDeluxe6.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio ClubSuite" data-cat="ClubSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/Suite0.jpg" rel="example_group3">
												<img src="images/rooms/info/Suite0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubSuite" data-cat="ClubSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/Suite1.jpg" rel="example_group3">
												<img src="images/rooms/info/Suite1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubSuite" data-cat="ClubSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/Suite2.jpg" rel="example_group3">
												<img src="images/rooms/info/Suite2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubSuite" data-cat="ClubSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/Suite3.jpg" rel="example_group3">
												<img src="images/rooms/info/Suite3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubSuite" data-cat="ClubSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/Suite4.jpg" rel="example_group3">
												<img src="images/rooms/info/Suite4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio ClubSuite" data-cat="ClubSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/Suite5.jpg" rel="example_group3">
												<img src="images/rooms/info/Suite5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio Royal" data-cat="Royal">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/royal0.jpg" rel="example_group4">
												<img src="images/rooms/info/royal0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Royal" data-cat="Royal">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/royal1.jpg" rel="example_group4">
												<img src="images/rooms/info/royal1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Royal" data-cat="Royal">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/royal2.jpg" rel="example_group4">
												<img src="images/rooms/info/royal2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Royal" data-cat="Royal">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/royal3.jpg" rel="example_group4">
												<img src="images/rooms/info/royal3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Royal" data-cat="Royal">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/royal4.jpg" rel="example_group4">
												<img src="images/rooms/info/royal4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio Royal" data-cat="Royal">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/royal5.jpg" rel="example_group4">
												<img src="images/rooms/info/royal5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio GrandSuite" data-cat="GrandSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandSuite0.jpg"
												rel="example_group5"> <img
												src="images/rooms/info/grandSuite0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandSuite" data-cat="GrandSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandSuite1.jpg"
												rel="example_group5"> <img
												src="images/rooms/info/grandSuite1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandSuite" data-cat="GrandSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandSuite2.jpg"
												rel="example_group5"> <img
												src="images/rooms/info/grandSuite2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandSuite" data-cat="GrandSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandSuite3.jpg"
												rel="example_group5"> <img
												src="images/rooms/info/grandSuite3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandSuite" data-cat="GrandSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandSuite4.jpg"
												rel="example_group5"> <img
												src="images/rooms/info/grandSuite4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandSuite" data-cat="GrandSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandSuite5.jpg"
												rel="example_group5"> <img
												src="images/rooms/info/grandSuite5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio GrandFamily" data-cat="GrandFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandFamily0.jpg"
												rel="example_group6"> <img
												src="images/rooms/info/grandFamily0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandFamily" data-cat="GrandFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandFamily1.jpg"
												rel="example_group6"> <img
												src="images/rooms/info/grandFamily1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandFamily" data-cat="GrandFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandFamily2.jpg"
												rel="example_group6"> <img
												src="images/rooms/info/grandFamily2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandFamily" data-cat="GrandFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandFamily3.jpg"
												rel="example_group6"> <img
												src="images/rooms/info/grandFamily3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandFamily" data-cat="GrandFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandFamily4.jpg"
												rel="example_group6"> <img
												src="images/rooms/info/grandFamily4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio GrandFamily" data-cat="GrandFamily">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/grandFamily5.jpg"
												rel="example_group6"> <img
												src="images/rooms/info/grandFamily5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio PrimierSuite" data-cat="PrimierSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/primierSuite0.jpg"
												rel="example_group7"> <img
												src="images/rooms/info/primierSuite0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PrimierSuite" data-cat="PrimierSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/primierSuite1.jpg"
												rel="example_group7"> <img
												src="images/rooms/info/primierSuite1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PrimierSuite" data-cat="PrimierSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/primierSuite2.jpg"
												rel="example_group7"> <img
												src="images/rooms/info/primierSuite2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PrimierSuite" data-cat="PrimierSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/primierSuite3.jpg"
												rel="example_group7"> <img
												src="images/rooms/info/primierSuite3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PrimierSuite" data-cat="PrimierSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/primierSuite4.jpg"
												rel="example_group7"> <img
												src="images/rooms/info/primierSuite4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PrimierSuite" data-cat="PrimierSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/primierSuite5.jpg"
												rel="example_group7"> <img
												src="images/rooms/info/primierSuite5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>

									<div class="portfolio PresidentialSuite"
										data-cat="PresidentialSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/presidentialSuite0.jpg"
												rel="example_group8"> <img
												src="images/rooms/info/presidentialSuite0.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PresidentialSuite"
										data-cat="PresidentialSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/presidentialSuite1.jpg"
												rel="example_group8"> <img
												src="images/rooms/info/presidentialSuite1.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PresidentialSuite"
										data-cat="PresidentialSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/presidentialSuite2.jpg"
												rel="example_group8"> <img
												src="images/rooms/info/presidentialSuite2.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PresidentialSuite"
										data-cat="PresidentialSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/presidentialSuite3.jpg"
												rel="example_group8"> <img
												src="images/rooms/info/presidentialSuite3.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PresidentialSuite"
										data-cat="PresidentialSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/presidentialSuite4.jpg"
												rel="example_group8"> <img
												src="images/rooms/info/presidentialSuite4.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
									<div class="portfolio PresidentialSuite"
										data-cat="PresidentialSuite">
										<div class="portfolio-wrapper featuredprodbox">
											<a class="fancybox-buttons" data-fancybox-group="button"
												href="images/rooms/info/presidentialSuite5.jpg"
												rel="example_group8"> <img
												src="images/rooms/info/presidentialSuite5.jpg"
												class="img-responsive">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="tab4" class="tabcontent">
			<div class="whiteback">
				<div class="container">
					<p class="large reddish fwb" style="font-size: 30px; text-align: center;">주변 관광지 안내	<p>
						<br>
					<div class="col-sm-9"	style="padding-left: 0px; padding-right: 0px; text-align: center;">
						<div id="map" style="width: 100%; height: 600px;"></div>
					</div>
					<div class="col-sm-3"	style="padding-left: 10px; padding-right: 0px; text-align: center;">
						<div class="table-responsive"
							style="width: 100%; height: 600px; overflow-y: auto; overflow-x: hidden;">
							<table class="table" style="margin: 0px">
								<tbody>
									<tr>
										<th><p>
												<a href="http://www.eworld.kr/main/main.htm"><b>이월드
														></b></a>
											</p> <span>대구 달서구 두류공원로 200<br>053-620-0001
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a
													href="http://www.daegu.go.kr/cts/index.do?menu_id=00000942&servletPath=%2Fcts"><b>두류공원
														></b></a>
											</p> <span>대구 달서구 공원순환로 36<br>053-803-7470
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a
													href="http://www.daegucvb.com/visitor/common/?mode=view&H_IDX=718&p=1&H_TREEID=45"><b>강정보
														></b></a>
											</p> <span>대구 달성군 다사읍 죽곡리</span></th>
									</tr>

									<tr>
										<th><p>
												<a
													href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=532fdb98-a374-4283-a442-2a4240ea7696"><b>달성공원
														></b></a>
											</p> <span>대구 중구 달성공원로 35 달성공원<br>053-803-7350
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a href="http://seomun.eneeds.gethompy.com/"><b>서문시장
														></b></a>
											</p> <span>대구 중구 큰장로26길 45 서문시장<br>053-256-6341
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a href="http://artcenter.daegu.go.kr/dmhm/"><b>대구근대역사관
														></b></a>
											</p> <span>대구 중구 경상감영길 67 한국산업은행<br>053-606-6430
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a
													href="http://www.daegu.go.kr/cts/index.do?menu_id=00000952&servletPath=%2Fcts"><b>대구수목원
														></b></a>
											</p> <span>대구 달서구 화암로 342 대구수목원<br>053-803-7270
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a
													href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=2cd507a4-63fc-46dd-8abe-00d73539136a"><b>수성못
														></b></a>
											</p> <span>대구 수성구 두산동 512<br>053-666-2863
										</span></th>
									</tr>

									<tr>
										<th><p>
												<a href="https://blog.naver.com/mscase"><b>곱창골목 ></b></a>
											</p> <span>대구 남구 안지랑로16길 67</span></th>
									</tr>

									<tr>
										<th><p>
												<a
													href="http://www.daegu.go.kr/cts/index.do?menu_id=00000935&servletPath=%2Fcts"><b>앞산공원
														></b></a>
											</p> <span>대구 남구 앞산순환로 574-116<br>053-666-2863
										</span></th>
									</tr>

									<tr>
										<th><p>
												<b>월광수변공원</b>
											</p> <span>대구 달서구 월곡로 5</span></th>
									</tr>
									<tr>
										<th><p>
												<b>김광석거리</b>
											</p> <span>대구 중구 대봉동 6-11</span></th>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>



















	<!-- -------------------------------------------------------------->
	<!-- FOOTER -->
	<footer class="row footer" style="margin-top: 50px;">
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
				<br> <br>
				<p class="ftitle97">상호명 : HOTEL 대표자 : 홍길동 개인정보관리책임자 : 나길동</p>
				<p class="ftitle97">등록번호 : 없습니다. 사업자등록번호 : 없습니다.</p>
				<p class="ftitle97">법인등록번호 : 없습니다. 통신판매번호 : 없습니다.</p>
				<p class="ftitle">ADDRESS</p>
				<br> <br>
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

	<!-- -------------------------------------------------------------->
	<script src="js/plugins.js"></script>
	<script src="js/all.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/theme.js"></script>

	<!-- -------------------------------------------------------------->
</body>
</html>
