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
        td, th{
			text-align: center;
		}
	</style>
</head>
<!-- 배너 -->
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
		<!--  헤더종료, 배너종료 -->
	<div class="row footer">
		<div class="col-sm-12">
			<form action="http://15.164.14.206:8080//resveSltMulti">
			<div align="right">
					<select name="menu" style="margin-right: 3px; width: 74px;">
							<OPTION VALUE='name'>&nbsp;이&nbsp;&nbsp;&nbsp;름</OPTION>
							<OPTION VALUE='email'>&nbsp;이메일</OPTION>
					</select>
					<input type="text" name="keyword" value=""
						style="display: inline; border: 1 solid gray; width: 100px; margin-right: 3px;" />
					<input type="submit" value="검색" style="display: inline;" />
			</div>
			</form>
			<table class="table" >
				
					<tr>
					<td></td>
						<th class=text-danger>이름</th>
						<th class=text-danger>Email</th>
						<th class=text-danger>예약 날짜</th>
						<th class=text-danger>상품 이름</th>
						<th class=text-danger>체크인</th>
						<th class=text-danger>체크아웃</th>
						<th class=text-danger>성인</th>
						<th class=text-danger>어린이</th>
						<th class=text-danger>객실 수량</th>
						<th class=text-danger>총금액</th>
						<th class=text-danger>예약취소 여부</th>
						<th class=text-danger>비고</th>
					</tr>
				
					<c:forEach var="list" items="${LIST}">

						<tr>
						<td></td>
							<td>${list.mbr_name}</td>
							<td>${list.mbr_email}</td>
							<td>${list.resve_date}</td>
							<td>${list.goods_name}</td>
							<td>${list.chkin}</td>
							<td>${list.chckt}</td>
							<td>${list.adult_nmpr}</td>
							<td>${list.child_nmpr}</td>
							<td>${list.rum_qy}</td>
							<td>${list.resve_totamt}원</td>
							<td>${list.resve_delete_at}</td>
							<td>
								<button type="button" class="btn btn-success"
									onclick="location.href='http://15.164.14.206:8080/hoho130/resveSltOne?mbr_email=${list.mbr_email}&date=${list.resve_date}'">
									상세정보</button>
							</td>

						</tr>

					</c:forEach>
			</table>
			<div align="right">
				<c:if test="${COUNT > 0 }">
					<c:if test="${startPage > 10 }">

						<a
							href="//resveSltMulti?pageNum=${startPage - 10}&menu=${menu}&keyword=${keyword}">[이전]
						</a>

					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="//resveSltMulti?pageNum=${i}&menu=${menu}&keyword=${keyword}">[${i}]
						</a>
					</c:forEach>



					<c:if test="${endPage < pageCount}">
						<a
							href="//resveSltMulti?pageNum=${startPage + 10}&menu=${menu}&keyword=${keyword}">[다음]
						</a>
					</c:if>
				</c:if>
			</div>
		</div>
	</div>







	<!--  MODAL -->
	<!-- <div class="modal fade" id="rumConfirm" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<a class="close" data-dismiss="modal" aria-label="Close"><span
					aria-hidden="true"><img src="images/modalexit.png"
						class="modalexit" alt=""></span></a>
						
				<table class="table">
					<tr class=text-muted>
						 <td class="text-danger">이름</td> <td id="name"> </td>  <td class="text-danger"> Email </td> <td id="email"> </td> 
						 <td class="text-danger">날짜</td> <td id="date"> </td>  <td class="text-danger"> 시간 </td> <td id="hour"> </td> 
					</tr>
					<tr class=text-muted>
						 <td class="text-danger">체크인</td> <td id="chkin"> </td>  <td class="text-danger"> 체크아웃 </td> <td id="chckt"> </td>
						 <td class="text-danger">성인</td> <td id="adult"> </td>  <td class="text-danger"> 어린이 </td> <td id="child"> </td>  
					</tr>
					<tr class=text-muted>
						<td class="text-danger">객실 수</td><td id=rumqy></td><td></td><td></td><td></td><td></td>
						<td></td><td></td>
					</tr>
					<tr class=text-muted>
						<td></td><td></td><td></td><td></td><td></td><td></td>
						<td class="text-danger">총 금액</td><td id=totamt></td>
					</tr>
					
				</table>

				
			</div>
			<div class="modal-body" style="text-align: center">
				<h6 class="large reddish fwb"
					style="text-align: center; font-size: 30px;">예약을 정말 취소 하시겠습니까?</h6>


			</div>
			<div class="modal-footer" style="text-align: center">
				<button type="button" class="btn btn-danger"
					onclick="resveCancle();">예약 취소</button>
			</div>
		</div>
	</div> -->
 	






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

				
				