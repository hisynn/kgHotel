<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/hoho130" />
<c:set var="ajaxPath" value="http://15.164.14.206:8080/ajaxMemberManage" />
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
	
	<title>회원정보</title>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<form id="updateForm" name="updateForm" method="post" action="">
		<input type="hidden" id="mbr_pw" name="mbr_pw" value="${dto.mbr_pw }" >
		<input type="hidden" id="act_at" name="act_at" value="${dto.act_at }" >
		<input type="hidden" id="srbde" name="srbde" value="${dto.srbde }" >
		<div class="row footer" >
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="form-group">
					<div class="form-row">
						<div class="form-group col-md-6">
						    <label class=text-danger for="mbr_email">이메일</label>
						    <input type="text" id="mbr_email" name="mbr_email" class="form-control" value="${dto.mbr_email }" readonly>
						</div>
						<div class="form-group col-md-6">
						    <label class=text-danger for="mbr_name">이름</label>
						    <input type="text" id="mbr_name" name="mbr_name" class="form-control" value="${dto.mbr_name }" readonly>
						</div>
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-6">
						    <label class=text-danger for="DTO.mbr_sexdstn">성별</label>
						    <input type="text" id="mbr_sexdstn" name="mbr_sexdstn" class="form-control" value="${dto.mbr_sexdstn }" readonly>
						</div>
						<div class="form-group col-md-6">
						    <label class=text-danger for="mbr_brthdy_fmt">생년월일</label>
						    <input type="text" id="mbr_brthdy" name="mbr_brthdy" class="form-control" 
						    	value="${dto.mbr_brthdy }" readonly>
						</div>
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-4">
						    <label class=text-danger for="mbr_nlty">국적</label>
						    <input type="text" id="mbr_nlty" name="mbr_nlty" class="form-control" value="${dto.mbr_nlty }" readonly>
						</div>
						<div class="form-group col-md-4">
						    <label class=text-danger for="mbr_adres">주소</label>
						    <input type="text" id="mbr_adres" name="mbr_adres" class="form-control" value="${dto.mbr_adres }">
						</div>
						<div class="form-group col-md-4">
						    <label class=text-danger for="mbr_tel">전화번호</label>
						    <input type="text" id="mbr_tel" name="mbr_tel" class="form-control" value="${dto.mbr_tel }">
						</div>
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-4">
							<fmt:parseDate var="srbdeDate" value="${dto.srbde }" pattern="yyyyMMdd" />
						    <label class=text-danger for="srbde_fmt">가입일</label>
						    <input type="text" id="srbde_fmt" name="srbde_fmt" class="form-control" 
						    	value="<fmt:formatDate value="${srbdeDate }" pattern="yyyy.MM.dd" />" readonly>
						</div>
						<div class="form-group col-md-4">
						    <label class=text-danger for="mbr_grad">등급</label>
						    <input type="text" id="mbr_grad" name="mbr_grad" class="form-control" value="${dto.mbr_grad }" readonly>
						</div>
						<div class="form-group col-md-4">
						    <label class=text-danger for="mbr_point">포인트</label>
						    <input type="text" id="mbr_point" name="mbr_point" class="form-control" value="${dto.mbr_point }" readonly>
						</div>
					</div>
						
					<div class="form-row">
						<div class="form-group col-md-12" style="text-align: right">
							<input type="button" id="update" name="update" class="btn btn-primary btn-sm" onclick="fn_update()" value="수정"/>
							<input type="button" id="drop" name="drop" class="btn btn-primary btn-sm" onclick="fn_drop()" value="회원탈퇴"/>
							<input type="button" id="list" name="list" class="btn btn-primary btn-sm" onclick="history.back(-1);" value="돌아가기"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		var updateErrorMessage = "수정에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
		var dropErrorMessage = "삭제에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
		
		fn_update = function(){
			if(!$("#mbr_tel").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				$("#mbr_tel").focus();
				return false;
			}
			
			var doConfirm = confirm("수정 하시겠습니까?");
			if(doConfirm){
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "http://15.164.14.206:8080/ajaxMemberUpdate",
					type: 	  "post",
					dataType: "json",
					data:{	  mbr_email: $("#mbr_email").val(),
							  mbr_name: $("#mbr_name").val(),
							  mbr_pw: $("#mbr_pw").val(),
							  mbr_brthdy: $("#mbr_brthdy").val(),
							  mbr_adres: $("#mbr_adres").val(),
							  mbr_tel: $("#mbr_tel").val(),
							  mbr_grad: $("#mbr_grad").val(),
						      mbr_nlty: $("#mbr_nlty").val(),
						      mbr_sexdstn: $("#mbr_sexdstn").val(),
						      act_at: $("#act_at").val(),
						      srbde: $("#srbde").val(),
						   	  mbr_point: $("#mbr_point").val()
					},
					error:	  function(result){
						alert(updateErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "http://15.164.14.206:8080/memberList";
					}
				})		
			}
		}
		
		fn_drop = function(){
			var doConfirm = confirm("탈퇴 처리 하시겠습니까?");
			if(doConfirm){
				$("#act_at").val("N");
				
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "http://15.164.14.206:8080/ajaxMemberUpdate",
					type: 	  "post",
					dataType: "json",
					data:{	  mbr_email: '${dto.mbr_email}',
							  mbr_name: '${dto.mbr_name}',
							  mbr_pw: '${dto.mbr_pw}',
							  mbr_brthdy: '${dto.mbr_brthdy}',
							  mbr_adres: '${dto.mbr_adres}',
							  mbr_tel: '${dto.mbr_tel}',
							  mbr_grad: '${dto.mbr_grad}',
						      mbr_nlty: '${dto.mbr_nlty}',
						      mbr_sexdstn: '${dto.mbr_sexdstn}',
						      act_at: $("#act_at").val(),
						      srbde: '${dto.srbde}',
						   	  mbr_point: '${dto.mbr_point}'
					},
					error:	  function(result){
						alert(dropErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "http://15.164.14.206:8080/memberList";
					}
				})		
			}			
		}
	</script>
</body>
</html>