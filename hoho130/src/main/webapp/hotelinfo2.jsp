<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HOTEL INFORMATION</title>
	<!--  웹참조 -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Comfortaa:300,700" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/smoothness/jquery-ui.css?ver=4.2.4" type="text/css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700&display=swap&subset=korean" rel="stylesheet">
	<!-- 내장 CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-slider.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/comeonmenu.css">
	<link rel="stylesheet" href="css/kakaoMap.css">
	<!-- <link rel="stylesheet" href="css/theme.css"> -->
	<!--  SCRIPT -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/sticky2.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/bose.slider.js"></script>
	<script src="js/bose.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/kakaoMap.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2c8221c23589dfed8ee1b3a0a762585b"></script>
	<!-- 글꼴 -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap&subset=korean">
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
		map();
	});
	</script>
</head>
<body class="homepage" id="homepage">
<div class="loading"></div>
<!--  배너 -->
	
	<div class="row whiteback">
		<div class="container">
			<p class="large reddish fwb"
				style="font-size: 30px; text-align: center;">주변 관광지 안내
			<p>
			<br>
			<div class="col-sm-9"
				style="padding-left: 0px; padding-right: 0px; text-align: center;">

				<div id="map" style="width:100%;height:600px;"></div>
			</div>

			<div class="col-sm-3" style="padding-left: 10px; padding-right: 0px; text-align: center;">

				<div class="table-responsive" style="width: 100%; height:600px; overflow-y:auto; overflow-x: hidden;">
					<table class="table" style="margin:0px">
						<tbody>
							<tr>
								<th><p><a href="http://www.eworld.kr/main/main.htm"><b>이월드 ></b></a></p>
								<span>대구 달서구 두류공원로 200<br>053-620-0001</span></th>
							</tr>
							
							<tr>
								<th><p><a href="http://www.daegu.go.kr/cts/index.do?menu_id=00000942&servletPath=%2Fcts"><b>두류공원 ></b></a></p>
								<span>대구 달서구 공원순환로 36<br>053-803-7470</span></th>
							</tr>
							
							<tr>
								<th><p><a href="http://www.daegucvb.com/visitor/common/?mode=view&H_IDX=718&p=1&H_TREEID=45"><b>강정보 ></b></a></p>
								<span>대구 달성군 다사읍 죽곡리</span></th>
							</tr>
							
							<tr>
								<th><p><a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=532fdb98-a374-4283-a442-2a4240ea7696"><b>달성공원 ></b></a></p>
								<span>대구 중구 달성공원로 35 달성공원<br>053-803-7350</span></th>
							</tr>
							
							<tr>
								<th><p><a href="http://seomun.eneeds.gethompy.com/"><b>서문시장 ></b></a></p>
								<span>대구 중구 큰장로26길 45 서문시장<br>053-256-6341</span></th>
							</tr>
							
							<tr>
								<th><p><a href="http://artcenter.daegu.go.kr/dmhm/"><b>대구근대역사관 ></b></a></p>
								<span>대구 중구 경상감영길 67 한국산업은행<br>053-606-6430</span></th>
							</tr>
							
							<tr>
								<th><p><a href="http://www.daegu.go.kr/cts/index.do?menu_id=00000952&servletPath=%2Fcts"><b>대구수목원 ></b></a></p>
								<span>대구 달서구 화암로 342 대구수목원<br>053-803-7270</span></th>
							</tr>
							
							<tr>
								<th><p><a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=2cd507a4-63fc-46dd-8abe-00d73539136a"><b>수성못 ></b></a></p>
								<span>대구 수성구 두산동 512<br>053-666-2863</span></th>	
							</tr>
							
							<tr>
								<th><p><a href="https://blog.naver.com/mscase"><b>곱창골목 ></b></a></p>
								<span>대구 남구 안지랑로16길 67</span></th>	
							</tr>
							
							<tr>
								<th><p><a href="http://www.daegu.go.kr/cts/index.do?menu_id=00000935&servletPath=%2Fcts"><b>앞산공원 ></b></a></p>
								<span>대구 남구 앞산순환로 574-116<br>053-666-2863</span></th>	
							</tr>
							
							<tr>
								<th><p><b>월광수변공원</b></p>
								<span>대구 달서구 월곡로 5</span></th>	
							</tr>
							<tr>
								<th><p><b>김광석거리</b></p>
								<span>대구 중구 대봉동 6-11</span></th>	
							</tr>
										
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


</body>
</html>