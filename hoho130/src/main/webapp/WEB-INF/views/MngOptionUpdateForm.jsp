<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/hoho130" />
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
	
	<title>옵션 수정</title>
</head>
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<form id="updateForm" name="updateForm" method="post" action="">
		<input type="hidden" id="optn_delete_at" name="optn_delete_at" value="${dto.optn_delete_at }">
		<div class="row footer" >
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div id="common" class="form-group">
					<div class="form-row">
						<div class="form-group col-md-6">
						    <label class=text-danger for="optn_no">옵션 번호</label>
						    <input type="text" id="optn_no" name="optn_no" class="form-control" value="${dto.optn_no }" readonly>
						</div>
						<div class="form-group col-md-6">
						    <label class=text-danger for="optn_name">옵션 이름</label>
						    <input type="text" id="optn_name" name="optn_name" class="form-control" value="${dto.optn_name }" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
						    <label class=text-danger for="optn_pc">가격</label>
						    <input type="text" id="optn_pc" name="optn_pc" class="form-control" value="${dto.optn_pc }" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12" style="text-align: right">
							<input type="button" id="btnUpdateOption" name="btnUpdateOption" class="btn btn-primary btn-sm" value="수정" onclick="fn_updateOption()">
							<input type="button" id="btnDropOption" name="btnDropOption" class="btn btn-primary btn-sm" value="삭제" onclick="fn_dropOption()">
							<input type="button" id="btnBackPage" name="btnBackPage" class="btn btn-primary btn-sm" onclick="history.back(-1);" value="돌아가기"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		var updateErrorMessage = "수정에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
		var dropErrorMessage = "삭제에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
	
		fn_updateOption = function(){
			if(!$("#optn_name").val() || !$("#optn_pc").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			var doConfirm = confirm("수정 하시겠습니까?");
			
			if(doConfirm){
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "http://15.164.14.206:8080/ajaxUpdateOption",
					type: 	  "post",
					dataType: "json",
					data:{	  optn_no: $("#optn_no").val(),
							  optn_name: $("#optn_name").val(),
							  optn_pc: $("#optn_pc").val(),
							  optn_delete_at: $("#optn_delete_at").val()
					},
					error:	  function(){
						alert(updateErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "http://15.164.14.206:8080/goodsList";
					}
				})
			}
		}
		
		fn_dropOption = function(){		
			var doConfirm = confirm("삭제 하시겠습니까?");
			
			if(doConfirm){
				$("#optn_delete_at").val("Y");
				
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "http://15.164.14.206:8080/ajaxUpdateOption",
					type: 	  "post",
					dataType: "json",
					data:{	  optn_no: '${dto.optn_no}',
							  optn_name: '${dto.optn_name}',
							  optn_pc: '${dto.optn_pc}',
							  optn_delete_at: $("#optn_delete_at").val()
					},
					error:	  function(){
						alert(dropErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "http://15.164.14.206:8080/goodsList";
					}
				})
			}
		}
	</script>

</body>
</html>