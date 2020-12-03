<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/pj" />
<c:set var="ajaxPath" value="http://15.164.14.206:8080/ajaxInqry" />
<!DOCTYPE html>
<html>
<head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
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
	<title>문의내용</title>
	<style>
		h2{
			color: #A4A4A4;
			text-align: left;
		}
	
	</style>
</head>
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<div class="row footer">
	<form id="contentsForm" name="contentsForm" method="post" action="">
		<input type="hidden" id="mbr_email" name="mbr_email" value="${dto.mbr_email }">
		<input type="hidden" id="inqry_date" name="inqry_date" value="${dto.inqry_date }">
		<input type="hidden" id="answer_at" name="answer_at" value="${dto.answer_at }">
		<input type="hidden" id="delete_at" name="delete_at" value="${dto.delete_at }">
		<input type="hidden" id="inqry_thema" name="inqry_thema" value="${dto.inqry_thema }">
		<input type="hidden" id="inqry_ty" name="inqry_ty" value="${dto.inqry_ty }">

		<div class="col-sm-3"></div>
		<div class="col-sm-6">
		<div class="form-group">
			<br>
			<label class="text-danger" for="inqry_sj">제목</label>
   			<input type="text" class="form-control" id="inqry_sj" name="inqry_sj" value="${dto.inqry_sj }" readonly />
   			<br>
			<label class="text-danger" for="inqry_cn">문의 내용</label>
			<textarea class="form-control" id="inqry_cn" name="inqry_cn" rows="6" readonly>${dto.inqry_cn }</textarea>
			<br>
			<label class="text-danger" for="answer_cn">답변</label>
			<textarea class="form-control" id="answer_cn" name="answer_cn" rows="6" ${not empty dto.answer_cn ? 'readonly' : ''}>${dto.answer_cn }</textarea>
			<br>
			<span style="float:right">
				<input type="button" class="btn btn-primary btn-sm" id="updateAnswer" name="updateAnswer" value="답변 등록" onclick="fn_updateAnswer()">
				<input type="button" class="btn btn-primary btn-sm" id="dropInqry" name="dropInqry" value="글 삭제" onclick="fn_dropInqry()">
				<input type="button" class="btn btn-primary btn-sm" id="prev" name="prev" value="돌아가기" onclick="history.back(-1);">
			</span>
		</div>
		</div>
	</form>
	</div>
	
	<script type="text/javascript">
		var updateErrorMessage = "답변등록에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
		var dropErrorMessage = "삭제에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
	
		fn_updateAnswer = function(){
			if(!$("#answer_cn").val()){
				alert("답변을 입력해주세요.");
				return false;
			}
			
			var doConfirm = confirm("답변등록 하시겠습니까?");
			if(doConfirm){
				$("#answer_at").val("Y");
				
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "${ajaxPath}/ajaxUpdate",
					type: 	  "post",
					dataType: "json",
					data:{	  mbr_email: $("#mbr_email").val(),
							  inqry_date: $("#inqry_date").val(),
							  inqry_sj: $("#inqry_sj").val(),
							  inqry_cn: $("#inqry_cn").val(),
							  answer_cn: $("#answer_cn").val(),
							  answer_at: $("#answer_at").val(),
						      delete_at: $("#delete_at").val(),
						      inqry_thema: $("#inqry_thema").val(),
						      inqry_ty: $("#inqry_ty").val()
					},
					error:	  function(result){
						alert(updateErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "http://15.164.14.206:8080/hoho130/inqryList";
					}
				})		
			}			
		}
		
		fn_dropInqry = function(){
			var doConfirm = confirm("삭제 하시겠습니까?");
			if(doConfirm){
				$("#delete_at").val("Y");
				
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "${ajaxPath}/ajaxUpdate",
					type: 	  "post",
					dataType: "json",
					data:{	  mbr_email: '${dto.mbr_email}',
							  inqry_date: '${dto.inqry_date}',
							  inqry_sj: $("#inqry_sj").val(),
							  inqry_cn: $("#inqry_cn").val(),
							  answer_cn: $("#answer_at").val(),
							  answer_at: '${dto.answer_at}',
						      delete_at: $("#delete_at").val(),
						      inqry_thema: '${dto.inqry_thema}',
						      inqry_ty: '${dto.inqry_ty}'
					},
					error:	  function(result){
						alert(dropErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "http://15.164.14.206:8080/hoho130/inqryList";
					}
				})	
			}
		}
	</script>
	
</body>
</html>