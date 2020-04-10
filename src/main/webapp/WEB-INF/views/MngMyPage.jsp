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
<title>비밀번호 변경</title>

</head>
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>

	<form id="changePwForm" name="changePwForm" method="post" action="">
		<input type="hidden" id="pw1" name="pw1">
		
		<div class="row footer">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="form-group">
					<label class="text-danger" for="inputPw">현재 비밀번호</label>
   					<input type="password" class="form-control" id="inputPw" name="inputPw"/><br>
   					<label class="text-danger" for="inputPwChange">변경할 비밀번호</label>
   					<input type="password" class="form-control" id="inputPwChange" name="inputPwChange"/><br>
   					<label class="text-danger" for="inputPwCheck">비밀번호 확인</label>
   					<input type="password" class="form-control" id="inputPwCheck" name="inputPwCheck"/><br>
					<span style="float:right">
						<input type="button" class="btn btn-primary btn-sm" value="수정" onclick="fn_update()">
						<input type="button" class="btn btn-primary btn-sm" value="돌아가기" onclick="history.back(-1);">
					</span>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		fn_update = function(){
			if(!$("#inputPw").val() || !$("#inputPwChange") || !$("#inputPwCheck")){
				alert("빈 항목을 입력하세요. ");
				return false;
			}
			
			//session에 박혀있는 패스워드와 입력된 패스워드가 일치하는지 확인
			if("${pw }" != $("#inputPw").val()){
				alert("비밀번호를 확인해주세요. ");
				$("#inputPw").focus();
				return false;
			}
				
			if($("#inputPwChange").val() != $("#inputPwCheck").val()){
				alert("변경할 비밀번호가 일치하지 않습니다. ");
				$("#inputPwChange").focus();
				return false;
			}
			
			$("#pw1").val($("#inputPwChange").val());
			
			$("#memberForm").attr("action","${actionPath}/updateManager");
			$("#memberForm").submit();
			
		}
	</script>
</body>
</html>