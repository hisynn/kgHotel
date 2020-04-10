<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RESERVE ROOMS</title>
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
	<script src="js/sticky2.js"></script>
	<script src="js/classie.js"></script>
	<script src="https://kit.fontawesome.com/309c848f43.js"></script>
	
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
	</style>
	<!--  폰트 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	

</head>
<body >
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
					<p class="stepimg"><img src="images/reserve/step1.jpg"></p>
					<h1 class="reserveTOPH1">체크인/아웃 날짜, 인원, 객실 수 선택</h1>
					<div class="row memberselection" style="margin-bottom:50px;">
						<div class="col-sm-10" style="width: 100%;">
							<div class="row">
									<form action="reserveRoom" method="post">
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
										<select name="nmpr_lmtt">
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
										<select name="CHKIN_POSBL_AT" class="pr1r">
											<option value="RoomCount" selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실수</option>
											<option value=1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1</option>
											<option value=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</option>
											<option value=3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</option>
											<option value=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</option>
										</select>
									</div>
								</div>

								<div class="col-sm-3">
									<div>
										<button class="searchbutton opl" onclick="document.location.href='reserveRoom'">
											<i class="fa fa-search"></i> 검색하기
										</button>
									</div>
								</div>
							</form>
							</div>
						</div>
					</div>
						<ul id="tab" style="padding-left:0px">
							<li class="reserveRoomUl"><button class="reservebt" id="reserveSearchBt1" data-tab='tab1' style="background-color: black; color: white;">회원전용(${reserveDTO.goodsMemberCount})</button></li>
							<li class="reserveRoomUl"><button class="reservebt" id="reserveSearchBt2" data-tab='tab2'>패키지(${reserveDTO.sltGoodsPackageCount})</button></li>
							<li class="reserveRoomUl"><button class="reservebt" id="reserveSearchBt3" data-tab='tab3'>객실(${reserveDTO.count})</button></li>
							<li class="reserveRoomUl2">
								<select name="#" class="reserveSelect">
									<option class="reserveSelect" value="Children" selected>&nbsp;&nbsp;낮은가격순</option>
									<option class="reserveSelect" value="1">&nbsp;&nbsp;높은가격순</option>
									<option class="reserveSelect" value="2">&nbsp;&nbsp;최신순</option>
									<option class="reserveSelect" value="3">&nbsp;&nbsp;인기순</option>
								</select></li>
						</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row whiteback" style="padding-top:0px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<hr class="reserveRoomHR">
					
<div id="tab1" class="tabcontent current" >
									<table class="reserveRoomTB">
										<tr>
											<td>* 할인이 적용된 요금입니다.
												<span class="reserveInfo">객실 연락처 : 000-000-0000&nbsp;&nbsp;
												<a href="main.jsp" style=" text-decoration:underline">문의하기</a>													</span>
											</td>
										</tr>
									</table>
<c:forEach var="goodsMemberList"  items="${goodsMemberList}" >
						<article class="reserveResult"  >
								<div class=reserveRoom1>						
									<img class="reserveImg" src="images/reserve/${goodsMemberList.goods_name}.jpg">			
								</div>
								<div class="reserveRoom22">						
									<h3 class="reserveInfoh3">${goodsMemberList.goods_name}</h3>
									<h4 class="reserveInfoh4">${goodsMemberList.goods_cn}</h4>
									<h5 class="reserveInfoh5">회원 혜택 및 이용안내</h5>						
								</div>
								<div class="reserveRoom3">						
									<form action="reserveOption" method="post">
									<button class="reservePriceBTN"  type="submit">선택</button>
									<c:set var = "string1" value = "${goodsMemberList.goods_pc}"/>
									<c:set var = "string2" value="${fn:substring(string1, 0, 2)}"/>
									<c:set var = "string3" value="${fn:substring(string1, 2, 5)}"/>
									<h3 class="reservePrice">${string2},${string3}원~</h3>
									<input type="hidden" name="price" value="${goodsMemberList.goods_pc}">
									<input type="hidden" name="chkin" value="${reserveDTO.chkin}">
									<input type="hidden" name="chckt" value="${reserveDTO.chckt}">
									<input type="hidden" name="child_nmpr" value="${reserveDTO.child_nmpr}">
									<input type="hidden" name="rum_qy" value="${reserveDTO.rum_qy}">
									<input type="hidden" name="adult_nmpr" value="${reserveDTO.nmpr_lmtt}">
									<input type="hidden" name="goods_no" value="${goodsMemberList.goods_no}">
									</form> 
								</div>
						</article>		
						<hr class="reserveRoomHR">
			</c:forEach>				


</div>

<div id="tab2" class="tabcontent" >
									<table class="reserveRoomTB">
										<tr>
											<td>* 할인이 적용된 요금입니다.
												<span class="reserveInfo">객실 연락처 : 000-000-0000&nbsp;&nbsp;
												<a href="main.jsp" style=" text-decoration:underline">문의하기</a>													</span>
											</td>
										</tr>
									</table>
<c:forEach var="sltGoodsPackageList"  items="${sltGoodsPackageList}" >
						<article class="reserveResult"  >
								<div class=reserveRoom1>						
									<img class="reserveImg" src="images/reserve/${sltGoodsPackageList.goods_name}.jpg">			
								</div>
								<div class="reserveRoom22">						
									<h3 class="reserveInfoh3">${sltGoodsPackageList.goods_name}</h3>
									<h4 class="reserveInfoh4">${sltGoodsPackageList.goods_cn}</h4>
									<h5 class="reserveInfoh5">회원 혜택 및 이용안내</h5>						
								</div>
								<div class="reserveRoom3">						
									<form action="reserveOption" method="post">
									<button class="reservePriceBTN"  type="submit">선택</button>
									<c:set var = "string1" value = "${sltGoodsPackageList.goods_pc}"/>
									<c:set var = "string2" value="${fn:substring(string1, 0, 3)}"/>
									<c:set var = "string3" value="${fn:substring(string1, 3, 6)}"/>
									<h3 class="reservePrice">${string2},${string3}원~</h3>
									<input type="hidden" name="price" value="${sltGoodsPackageList.goods_pc}">
									<input type="hidden" name="goods_no" value="${sltGoodsPackageList.goods_no}">
									<input type="hidden" name="chkin" value="${reserveDTO.chkin}">
									<input type="hidden" name="chckt" value="${reserveDTO.chckt}">
									<input type="hidden" name="child_nmpr" value="${reserveDTO.child_nmpr}">
									<input type="hidden" name="rum_qy" value="${reserveDTO.rum_qy}">
									<input type="hidden" name="adult_nmpr" value="${reserveDTO.nmpr_lmtt}">
									</form> 
								</div>
						</article>		
						<hr class="reserveRoomHR">
			</c:forEach>			

</div>
	
<div id="tab3" class="tabcontent">

			<c:forEach var="list"  items="${roomList}" >
				<%-- <c:if test="${list.rum_bedd_ty eq 'SINGLE'  list.rum_bedd_ty eq 'TWIN'}"> --%>
				<%-- <c:if test="${list.rumty_name eq list.rum_name && list.rum_bedd_ty eq 'SINGLE' || list.rumty_name eq list.rum_name && list.rum_bedd_ty eq 'TWIN'   }"> --%>
				<%-- <c:if test="${list.rum_name eq list.rum_name && list.rum_bedd_ty eq 'SINGLE' || list.rum_name ne list.rum_name && list.rum_bedd_ty eq 'TWIN'}"> --%>
					<%-- <c:if test="${list.rum_bedd_ty eq 'SINGLE' ||  list.rum_bedd_ty eq 'TWIN'}  "> --%>
						<article class="reserveResult"  >
								<div class=reserveRoom1>						
									<img class="reserveImg" src="images/reserve/${list.rumty_name}.jpg">			
								</div>
								<div class="reserveRoom2">						
									<h3 class="reserveInfoh3">${list.rumty_name} (${list.rum_image_url})</h3>
									<h4 class="reserveInfoh4" >객실크기 : ${list.rum_totar}㎡</h4>
									<h4 class="reserveInfoh4">예약가능 침대 타입 : 
							<c:forEach var="sltAll"  items="${sltAll}" >
									<%-- <c:if test="${sltAll.rumty_name eq list.rumty_name && sltAll.rum_bedd_ty eq 'SINGLE'}"> --%>
									<c:if test="${sltAll.rumty_name eq list.rumty_name}">
											&nbsp;${sltAll.rum_bedd_ty}&nbsp;&nbsp;
									</c:if>
								
							</c:forEach>
							</h4>
									<h5 class="reserveInfoh5">회원 혜택 및 이용안내</h5>						
								</div>
								<div class="reserveRoom3">						
									<!-- <button class="reservePriceBTN"  name="price" onclick="document.location.href='reserveOption'">예약하기</button> -->
									<form action="reserveOption" method="post">
									<button class="reservePriceBTN"  type="submit">선택</button>
									<c:set var = "string1" value = "${list.rum_pc}"/>
									<c:set var = "string2" value="${fn:substring(string1, 0, 3)}"/>
									<c:set var = "string3" value="${fn:substring(string1, 3, 6)}"/>
									<h3 class="reservePrice">${string2},${string3}원~</h3>
									<input type="hidden" name="price" value="${list.rum_pc}">
									<input type="hidden" name="chkin" value="${reserveDTO.chkin}">
									<input type="hidden" name="chckt" value="${reserveDTO.chckt}">
									<input type="hidden" name="child_nmpr" value="${reserveDTO.child_nmpr}">
									<input type="hidden" name="rum_qy" value="${reserveDTO.rum_qy}">
									<input type="hidden" name="adult_nmpr" value="${reserveDTO.nmpr_lmtt}">
									<input type="hidden" name="goods_no" value="${list.goods_no}">
									</form> 
								</div>
						</article>		
						<hr class="reserveRoomHR">
												<%-- </c:if> --%>
												<%-- </c:if> --%>
			</c:forEach>
			
<%-- 			<c:forEach var="slt" items="${sltList}" >
				<c:if test="${list.rum_bedd_ty eq 'SINGLE'  list.rum_bedd_ty eq 'TWIN'}">
				<c:if test="${list.rumty_name eq list.rum_name && list.rum_bedd_ty eq 'SINGLE' || list.rumty_name eq list.rum_name && list.rum_bedd_ty eq 'TWIN'   }">
				<c:if test="${list.rum_bedd_ty eq 'SINGLE' && list.rum_name eq list.rum_name || list.rum_bedd_ty eq 'TWIN' && list.rum_name eq list.rum_name   }">
					<c:if test="${list.rum_bedd_ty eq 'SINGLE' ||  list.rum_bedd_ty eq 'TWIN'}  ">
						<article class="reserveResult"  >
								<div class=reserveRoom1>						
									<img class="reserveImg" src="images/reserve/${slt.rumty_name}.jpg">			
								</div>
								<div class="reserveRoom2">						
									<h3 class="reserveInfoh3">${slt.rumty_name} (${slt.rum_image_url})</h3>
									<h4 class="reserveInfoh4">객실크기 : ${slt.rum_totar}㎡</h4>
									<h4 class="reserveInfoh4">침대타입: ${slt.rum_bedd_ty}</h4>
									<h5 class="reserveInfoh5">회원 혜택 및 이용안내</h5>						
								</div>
								<div class="reserveRoom3">						
									<button class="reservePriceBTN" >예약하기</button>
									<c:set var = "string1" value = "${slt.rum_pc}"/>
									<c:set var = "string2" value="${fn:substring(string1, 0, 3)}"/>
									<c:set var = "string3" value="${fn:substring(string1, 3, 6)}"/>
									<h3 class="reservePrice">${string2},${string3}원~</h3>
								</div>
						</article>		
						<hr class="reserveRoomHR">
												</c:if>
												</c:if>
			</c:forEach>
 --%>
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