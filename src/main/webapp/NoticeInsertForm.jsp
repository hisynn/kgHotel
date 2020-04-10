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
    	location.href='http://localhost:8085/hoho127/rumChckt?rum_no='+RUMNO;
    }
    
   
	</script>
</head>
<!-- 배너 -->
<body>
<div class="loading"></div>
	
		<div class="toprow" id="top">
		
			<div class="container">
				<!-- <div class="col-md-offset-8"> -->
				<div class="col-sm-11 col-sm-push-12">
					<p>
						<i class="fa fa-user"></i><a href="adminMain">홈</a>&nbsp;
						 <i class="fa fa-user"></i><a href="main.jsp">로그아웃</a>&nbsp;
						 <i class="fa fa-user"></i><a href="pwChange.jsp">비밀번호 변경</a>&nbsp;
					
					</p>
				</div>
			</div>
		</div>
	
		<!--  헤더부분 -->
		<header class="row menubar menu" id="myHeader">
			<div class="container">
				<div class="col-sm-3">
					<a class="ftitle2" href="adminMain.jsp">KGHotel</a>
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
								<li><a href="rumSltAll" class="homepagelink">객실관리</a></li>
								<li><a href="roominfo.jsp" class="roominfo">상품관리</a></li>
								<li><a href="inqry.jsp" class="rewardsinfo">문의관리</a></li>
								<li><a href="resveSltMulti" class="noticeinfo">예약관리</a></li>
								<li><a href="noticeSltMulti" class="hotelinfo">공지관리</a></li>
								<li><a href="hotelinfo.jsp" class="hotelinfo">매출조회</a></li>
								<li><a href="hotelinfo.jsp" class="hotelinfo">회원관리</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--  헤더종료, 배너종료 -->
		<div class="row footer">
		<div class="container"><div class="col-sm-3"></div>
			<div class="col-sm-6"><br><br><br>
				<form action="noticeInsert">
					<table class="table">
						<colgroup>
							<col width="20%">
							<col width="70%">
						</colgroup>
						<tbody>
							<tr>
								<th class="text-danger" align="center">아이디</th>
								<td></td>
							</tr>

							<tr>
								<th class="text-danger" align="center">제목</th>
								<td colspan="3"><input class="form-control"
									style="height: 40px;" type="text" name="notice_sj"></td>
							</tr>
							<tr>
								<th class="text-danger" align="center">내용</th>
								<td colspan="3"><textarea class="form-control" cols="50"
										rows="5" name="notice_cn"></textarea></td>
							</tr>
	
							<tr>
								<td colspan="5">
									<div style="text-align: center;">
										<input class="btn btn-primary" type="submit"
											style="width: 400px;" value="등록" />
									</div>
								</td>
						</tbody>
					</table>
					<input type="hidden" name="id" value="">
				</form>
			</div>
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

				
				