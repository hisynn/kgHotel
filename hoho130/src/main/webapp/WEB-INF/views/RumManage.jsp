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
    
    function chkin()
    {
        location.href='http://15.164.14.206:8080/hoho130/rumChkin?rum_no='+RUMNO;
    }
    function rumcheck()
    {
        location.href='http://15.164.14.206:8080/hoho130/rumCheck?rum_no='+RUMNO;
    }
    function rumcheckend()
    {
        location.href='http://15.164.14.206:8080/hoho130/rumCheckEnd?rum_no='+RUMNO;
    }
	</script>
</head>
<!-- 배너 -->
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
		<!--  헤더종료, 배너종료 -->
	
							
				
	<div class="row footer" align="center" >
		<div class="container">
			
		<div align="right">
			<button type="button" class="btn btn-danger" >체크 인</button>
			<button type="button" class="btn btn-default" >체크 아웃</button>
			<button type="button" class="btn btn-warning" >점검중</button>
		</div>

					<h3 class="text-info">프레지덴셜 스위트 룸</h3><br>


			<table style="margin: auto;">
				<tr>
					<c:forEach var="list" items="${LIST}">
						<c:if test="${list.rumty_no==09 || list.rumty_no==19}">
							<c:if
								test="${list.chkin_at eq 'Y' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-default btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if
								test="${list.chkin_at eq 'N' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-danger btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if test="${list.chkin_posbl_at eq 'N'}">
								<td><input type="submit" class="btn btn-warning btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
						</c:if>
					</c:forEach>
				</tr>
			</table><br><br>


			<h3 class="text-info">디럭스 룸</h3><br>


			<table style="margin: auto;">
				<tr>
					<c:forEach var="list" items="${LIST}">
						<c:if test="${list.rumty_no==01 || list.rumty_no==11}">
							<c:if
								test="${list.chkin_at eq 'Y' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-default btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if
								test="${list.chkin_at eq 'N' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-danger btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if test="${list.chkin_posbl_at eq 'N'}">
								<td><input type="submit" class="btn btn-warning btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
						</c:if>
					</c:forEach>
				</tr>
			</table><br><br>
			
			<h3 class="text-info">디럭스 패밀리 룸</h3><br>

			<table style="margin: auto;">
				<tr>
					<c:forEach var="list" items="${LIST}">
						<c:if test="${list.rumty_no==02 || list.rumty_no==12}">
							<c:if
								test="${list.chkin_at eq 'Y' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-default btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if
								test="${list.chkin_at eq 'N' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-danger btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if test="${list.chkin_posbl_at eq 'N'}">
								<td><input type="submit" class="btn btn-warning btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
						</c:if>
					</c:forEach>
				</tr>
			</table><br><br>
			
			<h3 class="text-info">클럽 디럭스 룸</h3><br>

			<table style="margin: auto;">
				<tr>
					<c:forEach var="list" items="${LIST}">
						<c:if test="${list.rumty_no==03 || list.rumty_no==13}">
							<c:if
								test="${list.chkin_at eq 'Y' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-default btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if
								test="${list.chkin_at eq 'N' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-danger btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if test="${list.chkin_posbl_at eq 'N'}">
								<td><input type="submit" class="btn btn-warning btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
						</c:if>
					</c:forEach>
				</tr>
			</table><br><br>
			
			<h3 class="text-info">클럽 스위트 룸</h3><br>

			<table style="margin: auto;">
				<tr>
					<c:forEach var="list" items="${LIST}">
						<c:if test="${list.rumty_no==04 || list.rumty_no==14}">
							<c:if
								test="${list.chkin_at eq 'Y' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-default btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if
								test="${list.chkin_at eq 'N' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-danger btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if test="${list.chkin_posbl_at eq 'N'}">
								<td><input type="submit" class="btn btn-warning btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
						</c:if>
					</c:forEach>
				</tr>
			</table><br><br>
			
			<h3 class="text-info">로얄 룸</h3><br>

			<table style="margin: auto;">
				<tr>
					<c:forEach var="list" items="${LIST}">
						<c:if test="${list.rumty_no==05 || list.rumty_no==15}">
							<c:if
								test="${list.chkin_at eq 'Y' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-default btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if
								test="${list.chkin_at eq 'N' && list.chkin_posbl_at eq 'Y'}">
								<td><input type="submit" class="btn btn-danger btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
							<c:if test="${list.chkin_posbl_at eq 'N'}">
								<td><input type="submit" class="btn btn-warning btn-lg"
									value="${list.rum_no}" data-toggle="modal"
									data-target="#rumConfirm" data-rumno="${list.rum_no}"
									data-rumty="${list.rumty_no}"
									data-chkinposbl="${list.chkin_posbl_at}"> &emsp;</td>
							</c:if>
						</c:if>
					</c:forEach>
				</tr>
			</table><br><br>

			<br> <br>
			<h1 class="thesunh2">
				<span class="span1"></span> <span class="span2"></span> <span
					class="span3"></span>
			</h1>
		

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
	





	
	
	<!--  CopyRight -->
	<div class="row copyright tac">
		<div class="container">
			<!--  저작권 표시자리 -->
		</div>
	</div>
</body>
</html>

				
				