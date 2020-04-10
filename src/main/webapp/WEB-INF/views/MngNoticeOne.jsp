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
        
    });
    
    function noticeCancle()
    {
    	location.href='http://localhost:8085/hoho130/noticeCancle';
    }
    function noticeUpdate()
    {
    	location.href='http://localhost:8085/hoho130/noticeUpdate';
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
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<form action="noticeUpdate">
			<table class="table">
				<colgroup>
							<col width="20%">
							<col width="30%">
							<col width="20%">
							<col width="30%">
				</colgroup>
				
					<tr>
						<th class="text-danger">등록 아이디</th> <td>${NOTICE.mngr_id} </td>
						<th class="text-danger">등록일</th> <td>${NOTICE.rgsde} </td>
					</tr>
					<tr>
						<th class="text-danger">제목</th> 
						<td colspan="3"><input class="form-control" style="height:40px;" type="text" name="notice_sj" value="${NOTICE.notice_sj}"></td>
					</tr>
					<tr>
						<th class="text-danger">내용</th>
						<td colspan="3">
								<textarea class="form-control" cols="50" rows="5" name="notice_cn" >${NOTICE.notice_cn}</textarea>
						</td> 
					</tr>
					<tr>
						<th class="text-danger">조회수</th> <td>${NOTICE.rdcnt} </td> 
						<th class="text-danger">삭제 여부</th> <td>${NOTICE.delete_at} </td> 
					</tr>
					
					
					
			</table>
				<input type="hidden" value="${NOTICE.mngr_id}" name="mngr_id">
				<input type="hidden" value="${NOTICE.rgsde}" name="rgsde">
				<input type="hidden" value="${NOTICE.rdcnt}" name="rdcnt">
				<input type="hidden" value="${NOTICE.delete_at}" name="delete_at">
				<div align="center">
					<input class="btn btn-primary" type="submit" style="width:100px;" value="수정"/>
					<button type="button" class="btn btn-danger" style="width:100px;"
				onclick="location.href='http://localhost:8085/hoho130/noticeDelete?mngr_id=${NOTICE.mngr_id}&rgsde=${NOTICE.rgsde}'">
				삭제</button>
				</div>
			</form>
			<div align="right">
			
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

				
				