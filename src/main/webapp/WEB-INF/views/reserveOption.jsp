<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RESERVE OPTION</title>
	<!--  CSS -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<script src="js/bootstrap-number-input.js"></script>
	<script src="js/reserveOption.js"></script>
	<script src="js/check.js"></script>
	<!-- <script src="js/sticky2.js"></script> -->
	<script src="js/sticky3.js"></script>
	<script src="js/sticky2.js"></script>
	
	<!-- 달력 -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/abcd1.js"></script>
	<script src="js/aajex7.js"></script>
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
            
        a { color: #000; }
		a:link { color: #000; }
		/* a:visited { color: #400080; } */
		a:visited { color: #000; }    
		
		input:focus {
			border: 1px solid;
		}
	</style>
	<!--  폰트 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	

</head>

<meta charset="UTF-8">
<title>Insert title here</title>
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
												<select name="nmpr_lmtt">
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
	<div class="row whiteback" style="padding-bottom:0px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<p class="stepimg"><img src="images/reserve/step2.jpg"></p>
					<h1 class="reserveTOPH1">옵션 선택</h1>
					<!-- <form> -->
					
					<table class="reserveOptionTB">
						<tr>
						<td><h2 class="reserveOptionTop">객실</h2></td>
						</tr>
					</table>
					<table class="reserveOptionTB1" >
							<tr>
								<td><h3 class="optionTB1H3">옵션 사항</h3></td>
							</tr>
							<tr>
								<td class="optionTB1Content">
								
								<h4 style="float:left; padding-right:100px">성인 조식 / 35,000 원</h4>
								<input id="after1" class="form-control" type="number" value="0" min="0" max="10"  style="width:136px;"/>							
								</td>
							</tr>
							<tr>
								<td class="optionTB1Content">
								<h4 style="float:left; padding-right:65px">엑스트라 베드 / 30,000 원</h4>
								<input id="after2" class="form-control" type="number" value="0" min="0" max="10" style="width:136px;"/>
								</td>
							</tr>
							<tr>
								<td class="optionTB1Content" style="margin-bottom:70px;">
								<h4 style="float:left; padding-right:82px">어린이 조식 / 26,446 원</h4>
								<input id="after3" class="form-control" type="number" value="0" min="0" max="10" style="width:136px;"/>
								</td>
							</tr>
							<tr>
								<td>
									<ul>
										<li class="optionLi">위 요금에서 부가가치세 10% 및 봉사료 10%(합계 21%)가 부과됩니다.</li>
										<li class="optionLi">위 조식 요금은 성인 투숙객에 한하여 할인이 적용된 금액이며 체크인 이후 조식 추가 요청 시에는 정상요금 64,000원(부가가치세 및 봉사료 포함)으로 이용 가능합니다.</li>
										<li class="optionLi">성인 : 만 13세 이상 / 어린이 : 37개월 이상 ~ 만 12세 이하</li>
										<li class="optionLi">조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한 조식만 선택해주시기 바랍니다.</li>
										<li class="optionLi">37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td>
									<h3 class="optionTB1Content" style="padding-top:50px; padding-left:4%;">체크인 예정시간</h3>
								</td>
							</tr>
							
							<tr>
								<td>
								<select class="optionselect">
													<option value="Guests" selected>선택</option>
													<option value="12">12:00</option>
													<option value="13">13:00</option>
													<option value="14">14:00</option>
													<option value="15">15:00</option>
													<option value="16">16:00</option>
													<option value="17">17:00</option>
													<option value="18">18:00</option>
													<option value="19">19:00</option>
													<option value="20">20:00</option>
													<option value="21">21:00</option>
													<option value="22">22:00</option>
													<option value="23">23:00</option>
													<option value="24">24:00</option>
													
													
												</select>
								
								</td>
							</tr>	
							<tr>
								<td class="optionLi" style="padding-left:4%;">선택 가능한 시간대 외에 체크인하실 경우 별도의 요금이 추가될 수 있으며,<br>관련 문의사항은 객실예약(02-2230-3310)으로 연락해 주시기 바랍니다.</td>
							<tr>
					</table>
					<table class="reserveOptionTB2" >
							<tr>
								<td><h3 class="optionTB1H3" style="margin-left:30px" >추가 요청사항</h3></td>
							</tr>
							<tr>
								<td>
									<textarea class="reserveTextArea" id="request_matter"></textarea>	
								</td>
							</tr>
							
							<tr>
								<td><h4 class="optionTB1H3" style="margin-left:25px">※ 전망은 체크인 당일 사정에 따라 달라질 수 있습니다.</h4>
							</tr>

					</table>
					<!-- </form> -->
				</div>
			</div>
		</div>
	</div>

		<div class="row whiteback" style="padding-top:20px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<hr class="optionboard2HR">
					<article class="reserveOptionTB" style="margin-top: 70px; height:1000px;">
							<h2 class="reserveOptionTop">유의사항</h2>
								<div class="optioninfo1">
									<ul>
										<li class="liSubject">호텔 이용 안내</li>
										<li class="optionLi1">요금에는 부가가치세 10% 및 봉사료 10% (합계21%)가 부과됩니다.</li>
										<li class="optionLi1">기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.
												추가 인원에 대한 기본 요금(세금 및 봉사료 별도)은 성인 5만원,
												어린이 3만원이며, 객실 타입 및 패키지 혜택에 따라 상이합니다.
												(성인 기준: 만 13세 이상, 어린이 기준: 37개월 이상~만 12세 이하)</li>
										<li class="optionLi1">37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며,
											유아(37개월 미만)동반 여부는 체크인 시 프런트 데스크 직원에게 알려 주셔야 무료로 이용 가능합니다.</li>
										<li class="optionLi1">체크인은 오후 3시부터이며 체크아웃은 정오 12시까지입니다.
											오후 3시 이전 Early check-in 또는 12시 이후 Late check-out 하실 경우
											추가 요금이 부과될 수 있습니다.</li>
										<li class="optionLi1">투숙객 본인 확인을 위해 체크인 시 신분증을 반드시 제시해 주시기 바랍니다.</li>
										<li class="optionLi1">본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인
											혜택이 적용되지 않습니다.</li>
										<li class="optionLi1">어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개
											및 아동용 배스로브와 슬리퍼)은 객실예약과를 통해 사전 요청 가능하며,
											이용 상황에 따라 조기 마감될 수 있습니다.
											(단, 유모차는 현장에서만 대여 가능합니다.)</li>
										<li class="optionLi1">대출 요청이 완료된 영유아 용품, 엑스트라 베드는 체크인 당일 18시까지
												객실에 준비해 드립니다.</li>										
									
									</ul>


							</div>
							<div class="optioninfo2">
								<ul>
									 <li class="liSubject">부대시설 이용안내</li>
									 <li class="optionLi1">체육관, 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기휴무입니다.</li>
									 <li class="optionLi1">체육관은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li>
									 <li class="optionLi1">실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및 공휴일에 한해 성인 보호자의 보호 하에 이용 가능합니다.</li>
									 <li class="optionLi1">실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은 	성인 보호자의 보호 하에 구명조끼 착용 시에만 이용 가능합니다</li>
									 <li class="optionLi1">성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의 안내를 받으시기 바랍니다.</li>
								</ul>
							</div>
					</article>


					<article class="reserveOptionTB" style="margin-top: 70px;">
						<h2 class="reserveOptionTop" >취소 및 환불규정</h2>
						<ul>
							<li class="liSubject" style="padding-top:3%;">취소/변경 및 노쇼(No-show) 안내</li>
							<li class="optionLi1">숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</li>
							<li class="optionLi1">체육관은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 	가능합니다.</li>
							<li class="optionLi1">숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,</li>
							<li class="optionLi1" style="list-style: none; line-height: 100%;">- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.</li>
							<li class="optionLi1" style="list-style: none; line-height: 100%;">- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
						</ul>

					</article>












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
		
<div id="comeonhead2">

			<!-- <form action="reserveOption2"> -->
	<header class="row menubar2 menu" id="myHeader2">
		<div class="container" style="padding:0px; margin-left: 470px;">
			<div class="col-sm-12" style="padding:0px;">
				<div class="col-sm-2" style="padding:0px; width:14%;">
					<a class="ftitle2" href="main.jsp" style="margin-top: 1.2%;">HOTEL</a>
				</div>
				<div class="col-sm-3" style="margin: 1%; margin-right:0px; padding:0px; width: 270px;">
					<p class="optionPrice">부가가치세 및 봉사료 포함</p>
					<p class="optionPrice">체크인/체크아웃<br> ${reserveDTO.chkin} ~ ${reserveDTO.chckt}</p>
				</div>
				<div class="col-sm-2" id="sumprice" >
						<p class="optionPrice" style="font-size:30px;">합계</p>				
				</div>
				<div class="col-sm-3" style="margin: 3%; margin-left:0px; width: 9%; margin-right: 10px; padding-left:0px;" >
					<div id="pprice">
						<input class="optionPrice2" value="${reserveDTO.price}" readonly disabled id="inputprice"  name="price">
					</div>
				</div>
				<div class="col-sm-1"  style="margin-top: 3%; margin-right:0px; padding:0px; width: 5%;">
			
				<input class="optionPrice99" value="원" readonly disabled>
				</div>
				<div class="col-sm-3" style="margin: 2.5%; margin-right:0px; margin-left:0px;padding:0px;">
					<!-- <button class="btn btn-primary pay1" onclick="document.location.href='reserveOption2'">회원 예약</button> -->
					
					<%-- <input type="hidden" name="price" value="${reserveDTO.price}">	  --%>
					<!-- <button class="btn btn-primary pay1"  type="submit">회원 예약</button> -->
					<button class="btn btn-primary pay1"  onclick="reserveOption2()">회원 예약</button>
					<button class="btn btn-primary pay2" >비회원 예약</button>
					<!-- <input type="hidden" name="price" value="document.getElementById('inputprice').value"> -->
					<input type="hidden" name='chkin' value="${reserveDTO.chkin}" id="chkin">
					<input type="hidden" name="chckt" value="${reserveDTO.chckt}" id="chckt">
					
					<input type="hidden" name="adult_nmpr" value="${reserveDTO.adult_nmpr}" id="adult_nmpr">
					<input type="hidden" name="child_nmpr" value="${reserveDTO.child_nmpr}" id="child_nmpr">
					<input type="hidden" name="rum_qy" value="${reserveDTO.rum_qy}" id="rum_qy">
					<input type="hidden" name="nmpr_lmtt" value="${reserveDTO.nmpr_lmtt}" id="nmpr_lmtt">
					<input type="hidden" name="goods_no" value="${reserveDTO.goods_no}" id="goods_no">
					<%-- <input type="text" name="price" id="abc" value="${data.price}"> --%>
					<!-- document.getElementById('inputprice').value; -->
				</div>
				<div id="option">
					<input type="hidden" name="aaa" value="0" id="aaa">
					<input type="hidden" name="bbb" value="0" id="bbb">
					<input type="hidden" name="ccc" value="0"id="ccc">
				</div>

					</div>
				</div>
	</header>
					<!-- </form> -->
</div>

</body>
</html>