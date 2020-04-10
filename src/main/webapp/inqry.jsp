<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inqry</title>
<!--  CSS -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Comfortaa:300,700"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/smoothness/jquery-ui.css?ver=4.2.4"
	type="text/css" media="all" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap-slider.css">
<link rel="stylesheet" href="css/inqry.css">

<!--  SCRIPT -->

<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.nicescroll.js"></script>
<script src="js/bose.slider.js"></script>
<script src="js/bose.js"></script>
<script src="log/js/main.js"></script>
<script src="js/loading.js"></script>
<script src="js/inqryajax.js"></script>
<script src="js/aajex4.js"></script>
<script src="js/inqry.js"></script>

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
<!-- 배너 -->
<body>
<div class="loading"></div>
	<div class="row imgback">
		<div class="toprow" id="top">
		
			<div class="container">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-11 col-sm-push-12">
					<p>
						<i class="fa fa-user"></i><a href="register.jsp">회원가입</a>&nbsp;
						 <i class="fa fa-user"></i><a href="login.jsp">로그인</a>&nbsp;
						 <i class="fa fa-user"></i><a href="inqry.jsp">문의하기</a>&nbsp;
						 <i class="fa fa-user"></i><a href="resvemem.jsp">예약확인</a>&nbsp;
					</p>
				</div>
			</div>
		</div>
	</div>
	
		<!--  헤더부분 -->
		<header class="row menubar menu" id="myHeader">
			<div class="container">
				<div class="col-sm-3">
					<a class="ftitle2" href="main.jsp">HOTEL</a>
				</div>
				<div class="col-sm-12 style=" style="padding-right: 300px;">
					<div class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#firstmenu">
								<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"></a>
						</div>
						<div class="navbar-collapse collapse" id="firstmenu">
							<ul class="nav navbar-nav" style="font-size: 15px">
								<li><a href="index.html" class="homepagelink">HOME</a></li>
								<li><a href="roominfo.jsp" class="roominfo">객실</a></li>
								<li><a href="rewards.jsp" class="rewardsinfo">리워즈</a></li>
								<li><a href="notice.jsp" class="noticeinfo">공지사항</a></li>
								<li><a href="hotelinfo.jsp" class="hotelinfo">호텔소개</a></li>
								<li><a href="inqry.jsp" class="booknow" data-toggle="modal" data-target="#booknowmodal">문의하기</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--  헤더종료, 배너종료 -->
	<div>
		<div class="container">
			<ul id="tab">
				<li class="loginfoli"><button class="loginfobt" id="searchbtn1" data-tab='tab1' style="background-color: black; color: white;">문의하기</button></li>
				<li class="loginfoli"><button class="loginfobt" id="searchbtn2" data-tab='tab2' >문의확인</button></li>
			</ul>
		</div>
	</div>
	<input type="hidden" name="email" value="${email}" />
	<input type="hidden" name="login" value="${LOGIN}" />
	
<!----------------------------------------------------------------->
<div id="tab1" class="tabcontent current" >      
	<div class="row whiteback" style="padding-top: 20px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="large reddish fwb" id="searchidH2" style="font-size: 30px; text-align:center;">문의하기</h2>
					<div class="row white">
		<div class="container">
			<div class="col-sm-12">
				
				<form method="POST" id="inqry-form" name="inqry-form" action="inqryinsert" onsubmit="return inqry(this);">
					<table class="table kg-table">
						<colgroup>
							<col width="20%">
							<col width="30%">
							<col width="20%">
							<col width="25%">
							<col width="5%">
						</colgroup>
					
						<tbody>
							<tr>
								<th scope="row" style="text-align: left;"><span class="ast">*</span><label>주제</label></th>
								<td>
									<div class="regform-input">
										<select class="form-control" title="주제선택" name="inqry_thema" >
											<option style="display: none;">주제선택</option>
											<option style="width:300px;" value="객실">객실</option>
											<option value="예약">예약</option>
											<option value="시설">시설</option>
											<option value="분실">분실</option>
										</select>
									</div>
								</td>
								<th scope="row"><span class="ast">*</span><label>유형</label></th>
								<td>
									<div class="regform-input">
										<select class="form-control" title="유형선택" name="inqry_ty">
											<option style="display: none;">유형</option>
											<option value="문의">문의</option>
											<option value="칭찬">칭찬</option>
											<option value="불만">불만</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th><span class="ast">*</span><label>제목</label></th>
								<td colspan="3"><input class="form-control" style="height:40px;" type="text" name="inqry_sj"></td>
							</tr>
							<tr>
								<th><br><br><span class="ast">*</span><label>내용</label><br><br></th>
								<td colspan="3">
								<textarea class="form-control" cols="50" rows="5" name="inqry_cn"></textarea>
								</td>
							</tr>
							<tr>
								<th><span class="ast">*</span><label>이메일</label></th>
								<c:if test="${LOGIN == 'true'}">
								<td colspan="4" ><input class="form" style="width:452px; height:40px;"type="text" name="mbr_email1" value="${email1}"> <b>@</b>
								<input class="form" style="width:452px; height:40px;" type="text" name="mbr_email2" value="${email2}"></td>
								</c:if>
								<c:if test="${LOGIN != 'true'}">
								<td colspan="4" ><input class="form" style="width:452px; height:40px;"type="text" name="mbr_email1"> <b>@</b>
								<input class="form" style="width:452px; height:40px;" type="text" name="mbr_email2"></td>
								</c:if>
							</tr>
							<tr>
								<td colspan="5">
								<div style="text-align:center;">
								<input class="btn btn-primary" type="submit" style="width:400px;" value="등록"/>
								</div>
								</td>	
						</tbody>
					</table>					
				</form>
			</div>
		</div>
	</div>
    </div></div></div></div>
    </div>
   
<div id="tab2" class="tabcontent" >      
	<div class="row whiteback" style="padding-top: 20px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">					     
					<h2 class="large reddish fwb" id="searchidH2" style="font-size: 30px; text-align:center;">문의내역</h2>
					<div id="search"></div><br>
					<div id="selectOne"></div>
				</div>
			</div>
		</div>
	</div>
</div> 
<!-- FOOTER -->
	<footer class="row footer" style="margin-top: 40%;">
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

 <!-- -------------------------------------------------------------->
</body>
</html>