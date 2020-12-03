<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Hotel Main</title>
	<!--  CSS -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Comfortaa:300,700" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/smoothness/jquery-ui.css?ver=4.2.4" type="text/css" media="all" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap-slider.css">
	<!--  SCRIPT -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery.nicescroll.js"></script>
	<script src="js/bose.slider.js"></script>
	<script src="js/bose.js"></script>
	<script src="log/js/main.js"></script>
	<script src="js/loading.js"></script>

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
 
    var RUMNO="";
    
    $(document).ready(function() {     
        $('#rumConfirm').on('show.bs.modal', function(event) {          
            RUMNO = $(event.relatedTarget).data('rumno');
            $('#rumNo').text(RUMNO);
        });
    });
    
    function chckt()
    {
    	location.href='http://15.164.14.206:8080/hoho130/rumChckt?rum_no='+RUMNO;
    }
    
   
	</script>
</head>
<!-- 배너 -->
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
		<!--  헤더종료, 배너종료 -->
	<div class="row footer" align="center">
		<div class="col-sm-3"></div>

		<div class="col-sm-6">
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="16%">
					<col width="12%">
					<col width="20%">
					<col width="10%">
					<col width="20%">
				</colgroup>
				<tr>
					<th class=text-danger>이름</th>
					<td>${SRDTO.mbr_name}</td>
					<th class=text-danger>전화번호</th>
					<td>${SRDTO.mbr_tel}</td>
					<th class=text-danger>E-MAIL</th>
					<td>${SRDTO.mbr_email}</td>
				</tr>
				<tr>
					<th class=text-danger>예약 날짜</th>
					<td>${SRDTO.resve_date}</td>
					<th class=text-danger>상품 명</th>
					<td>${SRDTO.goods_name}</td>
					<th class=text-danger>객실 유형</th>
					<td>${SRDTO.rumty_name}</td>
				</tr>

				<tr>
					<th class=text-danger>체크인</th>
					<td>${SRDTO.chkin}</td>
					<th class=text-danger>체크아웃</th>
					<td>${SRDTO.chckt}</td>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th class=text-danger>객실 수</th>
					<td>${SRDTO.adult_nmpr}</td>
					<th class=text-danger>성인</th>
					<td>${SRDTO.child_nmpr}</td>
					<th class=text-danger>어린이</th>
					<td>${SRDTO.rum_qy}</td>
				</tr>
				<c:forEach var="list" items="${OPTN_LIST}">
					<tr>
						<th class=text-danger>옵션</th>
						<td>${list.optn_name}</td>
						<th class=text-danger>옵션 수량</th>
						<td>${list.optn_qy}</td>
						<th></th>
						<td></td>
					</tr>
				</c:forEach>
				<tr>
					<th class=text-danger>요구사항</th>
					<td>${SRDTO.requst_matter}</td>
					<th class=text-danger></th>
					<td></td>
					<th></th>
					<td></td>
				</tr>

				<tr>
					<th class=text-danger>총 금액</th>
					<td>${SRDTO.resve_totamt}원</td>
					<th class=text-danger>예약취소 여부</th>
					<td>${SRDTO.resve_delete_at}</td>
					<th></th>
					<td></td>
				</tr>



			</table>
			<button type="button" class="btn btn-danger"
				onclick="location.href='http://15.164.14.206:8080/hoho130/resveCancle?mbr_email=${SRDTO.mbr_email}&date=${SRDTO.resve_date}'">예약
				취소</button>
		</div>

	</div>


	<!--  FOOTER -->
	<footer class="row footer">
		
		
	</footer>
	<!--  CopyRight -->
	<div class="row copyright tac">
		<div class="container">
			<!--  저작권 표시자리 -->
		</div>
	</div>
</body>
</html>

				
				