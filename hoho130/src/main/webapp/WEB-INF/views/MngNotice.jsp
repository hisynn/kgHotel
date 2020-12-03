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
	<script>
 
    var RUMNO="";
    
    $(document).ready(function() {     
        $('#rumConfirm').on('show.bs.modal', function(event) {       
        	NAME 		= $(event.relatedTarget).data('name');
            EMAIL 		= $(event.relatedTarget).data('email');
            RESVE_DATE	= $(event.relatedTarget).data('date');
            RESVE_HOUR	= $(event.relatedTarget).data('hour');
            CHKIN		= $(event.relatedTarget).data('chkin');
            CHCKT		= $(event.relatedTarget).data('chckt');
            ADULT		= $(event.relatedTarget).data('adult');
            CHILD		= $(event.relatedTarget).data('child');
            TOTAMT		= $(event.relatedTarget).data('totamt');
            RUMQY		= $(event.relatedTarget).data('rumqy');
            $('#name').text(NAME);
            $('#email').text(EMAIL);
            $('#date').text(RESVE_DATE);
            $('#hour').text(RESVE_HOUR);
            $('#chkin').text(CHKIN);
            $('#chckt').text(CHCKT);
            $('#adult').text(ADULT);
            $('#child').text(CHILD);
            $('#totamt').text(TOTAMT);
            $('#rumqy').text(RUMQY);
        });
    });
    
    function resveCancle()
    {
    	location.href='http://15.164.14.206:8080/hoho130/resveCancle?mbr_email='+EMAIL+'&resve_date='+RESVE_DATE+'&resve_hour='+RESVE_HOUR;
    }
    

	</script>
</head>
<!-- 배너 -->
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
		<!--  헤더종료, 배너종료 -->
	<div class="row footer">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<table class="table" style="margin-left: auto; margin-right: auto;">
				<colgroup>
					<col width="1%">
					<col width="10%">
					<col width="15%">
					<col width="35%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<tr>
					<th></th>
					<th class=text-danger>아이디</th>
					<th class=text-danger>등록일</th>
					<th class=text-danger>제목</th>
					<th class=text-danger>조회수</th>
					<th class=text-danger>삭제여부</th>
					<th class=text-danger>비고</th>
				</tr>
				<c:forEach var="list" items="${LIST}">

					<tr>

						<td></td>
						<td>${list.mngr_id}</td>
						<td>${list.rgsde}</td>
						<td>${list.notice_sj}</td>
						<td>${list.rdcnt}</td>
						<td>${list.delete_at}</td>
						<td>
							<button type="button" class="btn btn-success"
								onclick="location.href='http://15.164.14.206:8080/hoho130/noticeSltOne?mngr_id=${list.mngr_id}&rgsde=${list.rgsde}'">
								상세정보</button>
						</td>

					</tr>

				</c:forEach>
			</table>
			<div align="right">
				<c:if test="${COUNT > 0 }">
					<c:if test="${startPage > 10 }">

						<a
							href="/hoho130/resveSltMulti?pageNum=${startPage - 10}">[이전]
						</a>

					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="/hoho130/resveSltMulti?pageNum=${i}">[${i}]
						</a>
					</c:forEach>



					<c:if test="${endPage < pageCount}">
						<a
							href="/hoho130/resveSltMulti?pageNum=${startPage + 10}">[다음]
						</a>
					</c:if><br>
					<button type="button" class="btn btn-danger"
									onclick="location.href='NoticeInsertForm.jsp'">
									등록</button>
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

				
				