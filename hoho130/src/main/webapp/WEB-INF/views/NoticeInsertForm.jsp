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
    	location.href='rumChckt?rum_no='+RUMNO;
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
			<div class="col-sm-12">
				<table class="table">
					<tr>
						<th class=success>이름</th> <td> ${MDTO.mbr_name}</td>
						<th class=success>전화번호</th> <td> ${MDTO.mbr_tel}</td>
						<th class=success>E-MAIL</th> <td> ${MDTO.mbr_email} </td>
					</tr>
					<tr> 
						<th class=success>예약 날짜</th> <td> ${RDTO.date}</td>
						<th class=success>상품 명</th> <td> ${RDTO.goods_name}</td>
						<th ></th> <td> </td>	
					</tr>
					
					<tr> 
						<th class=success>체크인</th>  <td>${RDTO.chkin}</td>	
						<th class=success>체크아웃</th> <td>${RDTO.chckt}</td>	
						<th ></th> <td> </td>
					</tr>
					<tr> 
						<th class=success>객실 수</th>  <td> ${RDTO.adult_nmpr}</td>	
						<th class=success>성인</th> <td> ${RDTO.child_nmpr} </td>
						<th class=success>어린이</th> <td>${RDTO.rum_qy}</td>	
					</tr>
					<c:forEach var="list" items="${OPTN_LIST}">
					<tr> 
						<th class=success>옵션</th> <td> ${list.optnName}</td>
						<th class=success>옵션 수량</th> <td> ${list.optnTy}</td>	
						<th ></th> <td> </td>
					</tr>
					</c:forEach>
					
					<tr> 
						<th class=success>총 금액</th> <td> ${RDTO.resve_totamt}원</td>
						<th class=success>예약 상태</th> <td> 예약</td>	
						<th ></th> <td> </td>
					</tr>
					
					

				</table>
			</div>
		</div>
		
	
							
						
	
	<!--  MODAL -->
	<div class="modal fade" id="rumConfirm" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center">
					<h2 id="rumNo" class="large reddish fwb" style="text-align: center; font-size: 30px;" >
					
					</h2>
					
					<a class="close" data-dismiss="modal" aria-label="Close"><span
						aria-hidden="true"><img src="images/modalexit.png"
							class="modalexit" alt=""></span></a>
				</div>
				<div class="modal-body" style="text-align: center">
				<button type="button" class="btn btn-danger" onclick="chkin();">체크 인</button>
       			<button type="button" class="btn btn-default" onclick="chckt();">체크아웃</button>
       			<button type="button" class="btn btn-warning" onclick="rumcheck();">점검</button>
       			<button type="button" class="btn btn-success" onclick="rumcheckend();">점검 중단</button>
					
				</div>
			</div>
				<!--  MODAL BODY 종료 -->
			
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

				
				