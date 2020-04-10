<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/hoho130" />
<c:set var="ajaxPath" value="${actionPath}/ajaxGoods" />
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
	
	<title>객실유형 수정</title>
</head>
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<form id="updateForm" name="updateForm" method="post" action="">
		<div class="row footer" >
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="form-group">
					<div class="form-row">
						<div class="form-group col-md-6">
						    <label class=text-danger for="rumty_no">유형 번호</label>
						    <input type="text" id="rumty_no" name="rumty_no" class="form-control" value="${dto.rumty_no }" readonly>
						</div>
						<div class="form-group col-md-6">
						    <label class=text-danger for="rumty_name">객실 유형</label>
						    <input type="text" id="rumty_name" name="rumty_name" class="form-control" value="${dto.rumty_name }" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-3">
						    <label class=text-danger for="rum_pc">가격</label>
						    <input type="text" id="rum_pc" name="rum_pc" class="form-control" value="${dto.rum_pc }" >
						</div>
						<div class="form-group col-md-3">
						    <label class=text-danger for="rum_totar">객실 면적</label>
						    <input type="text" id="rum_totar" name="rum_totar" class="form-control" value="${dto.rum_totar }" >
						</div>
						<div class="form-group col-md-3">
						    <label class=text-danger for="rum_bedd_ty">침구 타입</label>
						    <input type="text" id="rum_bedd_ty" name="rum_bedd_ty" class="form-control" value="${dto.rum_bedd_ty }" >
						</div>
						<div class="form-group col-md-3">
						    <label class=text-danger for="nmpr_lmtt">인원 제한</label>
						    <input type="text" id="nmpr_lmtt" name="nmpr_lmtt" class="form-control" value="${dto.nmpr_lmtt }" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
						    <label class=text-danger for="rum_image_url">객실 이미지 URL</label>
						    <input type="text" id="rum_image_url" name="rum_image_url" class="form-control" value="${dto.rum_image_url }" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
						    <label class=text-danger for="rum_guidance">객실 안내</label>
						    <textarea class="form-control" id="rum_guidance" name="rum_guidance" rows="6">${dto.rum_guidance }</textarea>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12" style="text-align: right">
							<input type="button" id="btnUpdateRumty" name="btnUpdateRumty" class="btn btn-primary btn-sm" value="수정" onclick="fn_updateRumty()">
							<input type="button" id="btnBackPage" name="btnBackPage" class="btn btn-primary btn-sm" onclick="history.back(-1);" value="돌아가기"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript">
		var updateErrorMessage = "수정에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
	
		fn_updateRumty = function() {
			if(!$("#rumty_no").val() || !$("#rumty_name").val() || !$("#rum_totar").val() || !$("#rum_bedd_ty").val() 
					|| !$("#nmpr_lmtt").val() || !$("#rum_pc").val() || !$("#rum_guidance").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			var doConfirm = confirm("수정 하시겠습니까?");
			
			if(doConfirm){				
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "${actionPath}/ajaxUpdateRumty",
					type: 	  "post",
					dataType: "json",
					data:{	  rumty_no: $("#rumty_no").val(),
							  rumty_name: $("#rumty_name").val(),
							  rum_totar: $("#rum_totar").val(),
							  rum_bedd_ty: $("#rum_bedd_ty").val(),
							  nmpr_lmtt: $("#nmpr_lmtt").val(),
							  rum_pc: $("#rum_pc").val(),
							  rum_guidance: $("#rum_guidance").val(),
						      rum_image_url: $("#rum_image_url").val()
					},
					error:	  function(result){
						alert(updateErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "${actionPath}/goodsList";
					}
				})		
			}
		}
	</script>
</body>
</html>