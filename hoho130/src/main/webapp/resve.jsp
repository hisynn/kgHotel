<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의확인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap-slider.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<!--  SCRIPT -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/loading.js"></script>
</head>
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
	
	$('#resvebtn').click(function(){
		
		
		var email = $("input[name='mbr_email']").val();
		var name = $("input[name='mbr_name']").val();
		var tel = $("input[name='mbr_tel']").val();
	
		var url = "resveselect";
	
	$.ajax({
		url : url, 
		type:"post",
		data : {"email" : email, "name" : name, "tel" : tel},
		dataType : "json" ,
		error:function(){
			alert("error");
		},success : function(result) {
			
			//alert(result.resveList[0].resveOptnDto[1].optn_name);
			//var jsonStr = JSON.stringify(result);
			
			//alert(jsonStr);
			//alert(result.goodsList[0].goods_name);
			//var json = JSON.parse(jsonStr);
			
			//console.log(jsonStr);
			var table = "<table class=table table-bordered><thead><tr>";
			table += "<th>이메일</th><th></th><th>상품이름</th><th>상품설명</th><th>예약날짜</th><th>옵션1</th><th>수량</th><th>가격</th>";
			table += "<th>옵션2</th><th>수량</th><th>가격</th><th>총 주문가격</th><th>체크인</th><th>체크아웃</th></thead></tr><tbody>";
			
			$.each(result.resveList,function(index,list){
				var str = list.resve_date;
				var y = str.substr(0, 4);
			    var m = str.substr(4, 2);
			    var d = str.substr(6, 2);
			    
				table += "<tr><td>" + list.mbr_email + "<td>";
				table += "<td>" + list.goods_name + "</td>";
				table += "<td>" + list.goods_cn + "</td>";
				table += "<td>" + y + "-" +m+ "-" +d+ "</td>";
				
				$.each(list.resveOptnDto, function(index, optn){
					table += "<td>" + optn.optn_name + "</td>";
					table += "<td>" + optn.optn_qy + "</td>";
					table += "<td>" + optn.optn_totamt + "</td>";
				
				});
				
				table += "<td>" + list.resve_totamt+ "</td>";
				table += "<td>" + list.chkin+ "</td>";
				table += "<td>" + list.chckt+ "</td></tr>";
					
			});
			
			table += "</tbody></table><br>";
			console.log(table);
			
			$('#table').html(table);
		}
		
	});
	
	});
});
</script>
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
								<li><a href="inquiry.jsp" class="booknow" data-toggle="modal" data-target="#booknowmodal">문의하기</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--  헤더종료, 배너종료 -->

<div class="row whiteback">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="roomh1">예약 조회</h1>
				<br>
			<div id="resve" class="roomh5">
				<span> 이메일 </span><input type="text" name="mbr_email" >
				<span>  이름</span><input type="text" name="mbr_name" >
				<span>전화번호</span><input type="text" name="mbr_tel" >
				<input type="button" value="조회" id="resvebtn" />
			</div><br><br>
			<div id="table"></div>
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