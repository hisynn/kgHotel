<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>HOTEL MY PAGE</title>
<!--  웹참조 -->
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
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean"
	rel="stylesheet">
<!-- 내장 CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-slider.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/comeonmenu.css">
<link rel="stylesheet" href="css/kakaoMap.css">
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
<script src="js/kakaoMap2.js"></script>
<script src="https://kit.fontawesome.com/309c848f43.js"></script>
<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c8221c23589dfed8ee1b3a0a762585b"></script>
<script src="js/fetch.js"></script>
<script src="js/bluebird.js"></script>
<script src="js/aajex4.js"></script>
<script src="js/check.js"></script>
<!-- 달력 -->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="js/abcd1.js"></script>
<!--  다음 카카오 우편번호  -->
<script src="js/kakaoZipcode.js"></script>
<script src="js/kakaoZipSearch.js"></script>
<link rel="stylesheet" href="css/checkbox_radio_bootstrap3.css">
<!-- 글꼴 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
<!--  폰트 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<!-- 
	style="font-family: 'Nanum Gothic', sans-serif;"
	style="font-family: 'Sunflower', sans-serif;"
	style="font-family: 'Cute Font', cursive;"
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

.tab li {
	float: left;
}

a, a:link, a:visited {
	color: #ffffff;
}
</style>
</head>
<body>
	<div class="loading"></div>

	<div class="row bbbaaa">
		<div class="toprow" id="top">

			<div class="container" style="margin-right: 0px;">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-4" style="margin-left: 700px;">
					<p>
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a href="register.jsp">회원가입</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a href="#" onclick="document.location.href='logout'">로그아웃</a>&nbsp;
						</c:if>
						<c:if test="${LOGIN != 'true'}">
							<i class="fa fa-user"></i>
							<a href="login.jsp">로그인</a>&nbsp;
						 	</c:if>
						<c:if test="${LOGIN == 'true'}">
							<i class="fa fa-user"></i>
							<a href="#" onclick="document.location.href='myPage'">마이페이지</a>&nbsp;					 	    
					 	    </c:if>
						<i class="fa fa-user"></i><a href="register3.jsp">예약확인</a>&nbsp; <input
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
		<div class="container">
			<div class="row pagetitle2" style="font-size: 50px;">
				마이페이지
				<p class="Pmypage">Account</p>
				<table class="myPageTB">
					<tr>
						<td class="mypageTH1">
							<div class="col-sm-12">
								<div class="col-sm-2">
									<i class="fas fa-user" style="font-size: 60px;"></i>
								</div>
								<p class="mypagep">${dto.mbr_name}님</p>
								<ul class="tab">
									<li data-tab="tab1" style="float: none; float: left;">
										<button class="btn btn-default mypageb" id="modinfo">회원정보
											수정</button>
									</li>
									<li data-tab="tab2" style="float: none;">
										<button class="btn btn-default mypageb" id="modipw">비밀번호
											변경</button>
									</li>
								</ul>
							</div>



						</td>
						<td rowspan="4" class="mypageTH2"><i class="fas fa-bed"
							style="font-size: 50px;"></i><br> <br>객실/패키지 예약</td>
						<td rowspan="4" class="mypageTH2"><i
							class="fas fa-concierge-bell" style="font-size: 50px;"></i><br>
							<br>레스토랑 예약</td>
						<td rowspan="4" class="mypageTH2"><i
							class="far fa-calendar-alt" style="font-size: 50px;"></i><br>
							<br>프로모션 예약</td>
						<td rowspan="4" class="mypageTH2"><i
							class="far fa-credit-card" style="font-size: 50px;"></i><br>
							<br>예약 건수</td>
					</tr>
					<tr>
						<th rowspan="1" class="mypageTH3">회원 국적 : <span
							class="mypagespan1" style="text-align: right;">${dto.mbr_nlty}</span></th>
					</tr>
					<tr>
						<td class="mypageTH3">회원등급 : ${dto.mbr_grad}</td>
					</tr>
					<tr>
						<td class="mypageTH3">회원포인트 : ${dto.mbr_point}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- 끝-->
	<div class="row grayback2" style="margin-top: 230px;">
		<div class="container" id="modifydiv"
			style="background-color: #f8f8f8;">
			<div class="row">
				<div class="col-sm-12">
					<ul id="tab" style="display: none;">
						<li class="mypageli"><button class="mypagebt" id="mypagebtn1"
								data-tab='tab1'>회원정보 수정</button></li>
						<li class="mypageli"><button class="mypagebt" id="mypagebtn2"
								data-tab='tab2'>비밀번호 변경</button></li>
						<li class="mypageli"><button class="mypagebt" id="mypagebtn3"
								data-tab='tab3'>포인트 조회</button></li>
						<li class="mypageli"><button class="mypagebt" id="mypagebtn4"
								data-tab='tab4'>예약 확인</button></li>
						<li class="mypageli"><button class="mypagebt" id="mypagebtn5"
								data-tab='tab5'>회원 탈퇴</button></li>
					</ul>
				</div>

				<div id="tab1" class="tabcontent" style="height: 500px;">
					<div class="col-sm-12">
						<h1 class="modifytitle">회원정보 수정</h1>
						<h5 class="modifytitle5">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 입력 부탁
							드립니다.</h5>
						<hr class="modifyhr">
						<div class="col-sm-6">
							<input type="text" class="form-control2 " id="mbr_email"
								value="${dto.mbr_email}" readonly><br> <input
								type="password" class="form-control2" id="mbr_pw" name="mbr_pw"><br>
							<button type="button" class="btn btn-primary modifyinputt"
								onclick="nullCheck2()">확 인</button>
						</div>
					</div>
				</div>


				<div id="tab2" class="tabcontent" style="height: 450px;">
					<div class="col-sm-12">
						<h1 class="modifytitle">비밀번호 변경</h1>
						<h5 class="modifytitle5">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 입력 부탁
							드립니다.</h5>
						<hr class="modifyhr">
						<input type="password" class="form-control2" id="modifyPw"><br>
						<input type="hidden" id="modifyId" value="${dto.mbr_email}">
						<button type="button" class="btn btn-primary modifyinputt"
							onclick="nullCheck4()">확 인</button>
					</div>
				</div>

				<div id="tab3" class="tabcontent" style="height:600px;">
					<div class="col-sm-12">
						<div class="row white">
							<div class="container">
								<div class="col-sm-12">
									<h1 class="modifytitle">문의하기</h1><br><br>
									<form method="POST" id="inqry-form" name="inqry-form"
										action="inqryinsert" onsubmit="return inqry(this);">
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
													<th scope="row" style="text-align: left;"><span
														class="ast">*</span><label>주제</label></th>
													<td>
														<div class="regform-input">
															<select class="form-control" title="주제선택"
																name="inqry_thema">
																<option style="display: none;">주제선택</option>
																<option style="width: 300px;" value="객실">객실</option>
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

												<!-- 이름, 전화번호번호 
							<tr>
								<th><span class="ast">*</span><label>이름</label></th>
								<td><input style="width:400px;" type="text" id=""></td>
								<th><span class="ast">*</span><label>휴대전화번호</label></th>
								<td><input style="width:400px;" type="text" id=""></td>
							</tr>
							 -->
												<tr>
													<th><span class="ast">*</span><label>제목</label></th>
													<td colspan="3"><input class="form-control"
														style="height: 40px;" type="text" name="inqry_sj"></td>
												</tr>
												<tr>
													<th><br> <br> <span class="ast">*</span><label>내용</label><br>
														<br></th>
													<td colspan="3"><textarea class="form-control"
															cols="50" rows="5" name="inqry_cn"></textarea></td>
												</tr>
												<tr>
													<th><span class="ast">*</span><label>이메일</label></th>
													<td colspan="4"><input class="form" style="width: 345px; height: 40px;" type="text"
														name="mbr_email1"> <b>@</b> <input class="form"
														style="width: 452px; height: 40px;" type="text"
														name="mbr_email2"></td>
												</tr>
												<tr>
													<td colspan="5">
														<div style="text-align: center;">
															<input class="btn btn-primary" type="submit"	style="width: 400px; margin-top:30px" value="등록" />
														</div>
													</td>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="tab4" class="tabcontent" style="height: 450px;">
					<div class="col-sm-12">
						<h1 class="modifytitle">예약 확인</h1>
						<h5 class="modifytitle5">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 입력 부탁
							드립니다.</h5>
						<hr class="modifyhr">
						<input type="password" class="form-control2"><br>
						<button type="button" class="btn btn-primary modifyinputt"
							onclick="nullCheck4()">확 인</button>
					</div>
				</div>

				<div id="tab5" class="tabcontent" style="height: 450px;">
					<div class="col-sm-12">
						<h1 class="modifytitle">회원 탈퇴</h1>
						<h5 class="modifytitle5">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 입력 부탁
							드립니다.</h5>
						<hr class="modifyhr">
						<input type="password" class="form-control2"><br>
						<button type="button" class="btn btn-primary modifyinputt"
							onclick="nullCheck5()">확 인</button>
					</div>
				</div>


				<div id="tab6" class="tabcontent" data-tab='tab6'>
					<div class="col-sm-12"
						style="padding-left: 0px; padding-right: 0px;">
						<form class="form-inline" role="form" action="update">
							<H1
								style="text-align: center; padding-top: 50px; font-family: 'Jua', sans-serif;">회원정보
								수정</H1>
							<table class="registerTB">
								<tr>
									<td class="registerTD1" id="regrequired">이메일</td>
									<td class="registerTD2" id="idtd"><input type="text"
										class="registerInput" name="mbr_email" id="mbr_email" readonly
										value="${dto.mbr_email}" /> <!-- <a class="checkok" id="checkOk">&#10004;</a> --></td>
								</tr>
								<tr>
									<td class="registerTD1"></td>
									<td class="registerTD2" id="idtd2"></td>
								</tr>
								<tr>
									<td class="registerTD1" id="regrequired">성명</td>
									<td class="registerTD2"><input type="text"
										class="registerInput" name="mbr_name" id="mbr_name"
										value="${dto.mbr_name}" /></td>
								</tr>
								<tr>
									<td class="registerTD1" id="regrequired">성별</td>
									<td class="registerTD2"><c:if
											test="${dto.mbr_sexdstn=='M'}">
											<input type="text" class="registerInput" name="mbr_sexdstn"
												id="mbr_sexdstn" value="남자" readonly />
										</c:if> <c:if test="${dto.mbr_sexdstn=='W'}">
											<input type="text" class="registerInput" name="mbr_sexdstn"
												id="mbr_sexdstn" value="여자" readonly />
										</c:if></td>
								</tr>
								<tr>
									<td class="registerTD1" id="regrequired">전화번호</td>
									<td class="registerTD2">
										<div class="regform-input"></div> <select
										class="registerInputTel" style="margin-left: 15px;"
										name="mbr_tel1" id="mbr_tel1">
											<option value="" style="padding-left: 15px;">선택</option>
											<option>010</option>
											<option>011</option>
											<option>016</option>
											<option>017</option>
											<option>053</option>
											<option>02</option>
											<option>031</option>
											<option>054</option>
									</select> -&nbsp; <input type="text" class="registerInputTel"
										name="mbr_tel2" value="" id="mbr_tel2" />&nbsp;- <input
										type="text" class="registerInputTel" name="mbr_tel3" value=""
										id="mbr_tel3" />
									</td>
								</tr>
								<tr>
									<td class="registerTD1" id="regrequired">생년원일</td>
									<td class="registerTD2"><input type="text"
										class="registerInput" name="mbr_brthdy" id="abcd1" readonly></td>
								</tr>
								<tr>
									<td class="registerTD1">주소</td>
									<td class="registerTD2"><input type="button"
										class="btn btn-primary" value="우편번호검색"
										style="width: 250px; height: 50px; margin-left: 15px; margin-top: 15px; font-size: 22px; padding-left: 30px;"
										onClick="openDaumZipAddress();"></td>
								</tr>
								<tr>
									<td class="registerTD1"></td>
									<td class="registerTD2"><input type="text"
										class="registerInputTel" name="mbr_postcode1" value=""
										id="postcode1" style="margin-left: 15px;" readonly>&nbsp;-
										<input type="text" class="registerInputTel"
										name="mbr_postcode2" id="postcode2" value="" readonly>&nbsp;-
										<input type="text" class="registerInputTel" name=mbr_zonecode
										id="zonecode" value="" readonly></td>
								</tr>
								<tr>
									<td class="registerTD1"></td>
									<td class="registerTD2"><input type="text"
										class="registerInput" name="mbr_address" id="address" value=""
										readonly /></td>
								</tr>
								<tr>
									<td class="registerTD1">상세주소</td>
									<td class="registerTD2"><input type="text"
										class="registerInput" name="mbr_address_etc" id="address_etc"
										value="" placeholder="상세주소를 입력 해 주세요"></td>
								</tr>
								<tr>
									<td class="registerTD1" id="regrequired" style="padding: 20px;">국적</td>
									<td class="registerTD2"><select class="form-control"
										style="width: 350px; margin-left: 15px; height: 50px; margin-top: 30px; padding-top: 15px; margin-bottom: 50px;"
										name="mbr_nlty" id="mbr_nlty">
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
									<td><input type="hidden" name="mbr_pw"
										value="${dto.mbr_pw}"> <input type="submit"
										class="btn btn-primary" id="submitinput" value="회원정보수정"
										style="margin-left: 370px; margin-right: 30px;"
										onclick="return nullCheck3()"> <input type="button"
										class="btn btn-primary" id="submitinput" value="취소"
										onclick="return nullCheck3()"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>

				<div id="tab7" class="tabcontent" style="height: 500px;">
					<div class="col-sm-12">
						<h1 class="modifytitle">비밀번호 변경</h1>
						<hr class="modifyhr">
						<form action="PWupdate">
							<label class="modifyLabel">변경할 비밀번호 입력</label> <input
								type="password" class="form-control2" id="modifyPw1"
								name="mbr_pw"><br> <input type="hidden"
								id="modifyId" name="mbr_email"><br> <label
								class="modifyLabel">변경할 비밀번호 확인</label> <input type="password"
								class="form-control2" id="modifyPw2"><br> <br>
							<button type="submit" class="btn btn-primary modifyinputt"
								onclick="return nullCheck5()" style="margin-left: 385px;">확
								인</button>
						</form>
					</div>
				</div>




			</div>
		</div>





	</div>



	<!--  FOOTER -->
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



</body>
</html>