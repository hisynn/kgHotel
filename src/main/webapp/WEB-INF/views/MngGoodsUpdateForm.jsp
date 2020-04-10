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
	<!-- datepicker -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	
	<title>상품 수정</title>

</head>
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<form id="updateForm" name="updateForm" method="post" action="">		
		<input type="hidden" id="goods_delete_at" name="goods_delete_at" value="${dto.goods_delete_at }">
		<input type="hidden" id="goods_ty_no" name="goods_ty_no" value="${dto.goods_ty_no }">
		<input type="hidden" id="rumty_no" name="rumty_no">
		<div class="row footer" >
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="form-group">
					<div class="form-row">
						<div class="form-group col-md-6">
						    <label class=text-danger for="goods_no">상품 번호</label>
						    <input type="text" id="goods_no" name="goods_no" class="form-control" value="${dto.goods_no }" readonly>
						</div>
						<div class="form-group col-md-6">
						    <label class=text-danger for="goods_name">상품명</label>
						    <input type="text" id="goods_name" name="goods_name" class="form-control" value="${dto.goods_name }" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-4">
						    <label class=text-danger for="goods_pc">가격</label>
						    <input type="text" id="goods_pc" name="goods_pc" class="form-control" value="${dto.goods_pc }" >
						</div>
						<div class="form-group col-md-4">
						    <label class=text-danger for="selectGoods_ty">상품 유형</label>
						    <select id="selectGoods_ty" class="form-control">
								<c:forEach var="index" items="${goods_TyList }">
									<option value="${index.goods_ty_no }" ${index.goods_ty_no eq index.goods_ty_no ? 'selected' : ''}>${index.goods_ty_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col-md-4">
						    <label class=text-danger for="selectRumty">객실 유형</label>
						    <select id="selectRumty" class="form-control">
								<c:forEach var="index" items="${rumtyList }">
									<option value="${index.rumty_no }" ${index.rumty_no eq dto.rumty_no ? 'selected' : ''}>${index.rumty_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12">
						    <label class=text-danger for="goods_cn">상품 내용</label>
						    <textarea class="form-control" id="goods_cn" name="goods_cn" rows="4">${dto.goods_cn }</textarea>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
						    <label class=text-danger for="goods_start_date">상품 판매 시작일</label>
						    <input type="text" id="goods_start_date" name="goods_start_date" class="form-control" placeholder="판매기간을 설정하려면 날짜를 선택하세요." value="${dto.goods_start_date }" readonly/>    
						</div>
						<div class="form-group col-md-6">
						    <label class=text-danger for="goods_end_date">상품 판매 종료일</label>
						    <input type="text" id="goods_end_date" name="goods_end_date" class="form-control" placeholder="판매기간을 설정하려면 날짜를 선택하세요." value="${dto.goods_end_date }" readonly/>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12" style="text-align: right">
							<input type="button" id="btnUpdateGoods" name="btnUpdateGoods" class="btn btn-primary btn-sm" value="수정" onclick="fn_updateGoods()">
							<input type="button" id="btnUpdateGoods" name="btnUpdateGoods" class="btn btn-primary btn-sm" value="삭제" onclick="fn_dropGoods()">
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
		
		$(function () {
		    $("#goods_start_date, #goods_end_date").datepicker({ 
		    	format: "yyyymmdd",
		        autoclose: true, 
		        todayHighlight: true,
		        clearBtn: true,
		        startDate: "days",
		        orientation: "right bottom"
		    }).datepicker();
		});


		fn_updateGoods = function(){
			$("#rumty_no").val($("#selectRumty").val());
			$("#goods_ty_no").val($("#selectGoods_ty").val());
			
			if(!$("#rumty_no").val() || !$("#goods_ty_no").val() || !$("#goods_name").val() || !$("#goods_pc").val() 
					|| !$("#goods_cn").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			if($("#goods_start_date").val() > $("#goods_end_date").val()){
				alert("판매 종료일이 판매 시작일보다 빠를수 없습니다.");
				return false;
			}
			
			var doConfirm = confirm("수정 하시겠습니까?");
			
			if(doConfirm){			
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "${actionPath}/ajaxUpdateGoods",
					type: 	  "post",
					dataType: "json",
					data:{	  goods_no: $("#goods_no").val(),
							  rumty_no: $("#rumty_no").val(),
							  goods_ty_no: $("#goods_ty_no").val(),
							  goods_name: $("#goods_name").val(),
							  goods_pc: $("#goods_pc").val(),
							  goods_cn: $("#goods_cn").val(),
							  goods_start_date: $("#goods_start_date").val(),
						      goods_end_date: $("#goods_end_date").val(),
						      goods_delete_at: $("#goods_delete_at").val()
					},
					error:	  function(){
						alert(updateErrorMessage);
					},
					success:  function(result){
						alert(result.msg);
						window.location.href = "${actionPath}/goodsList";
					}
				})		
			}
		}
		
		fn_dropGoods = function(){			
			$("#rumty_no").val($("#selectRumty").val());
			$("#goods_ty_no").val($("#selectGoods_ty").val());
			
			if(!$("#rumty_no").val() || !$("#goods_ty_no").val() || !$("#goods_name").val() || !$("#goods_pc").val() 
					|| !$("#goods_cn").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			var doConfirm = confirm("삭제 하시겠습니까?");
			
			if(doConfirm){
				$("#goods_delete_at").val("Y");
				
				$.ajaxSettings.traditional = true;
				$.ajax({
					url: 	  "${actionPath}/ajaxUpdateGoods",
					type: 	  "post",
					dataType: "json",
					data:{	  goods_no: '${dto.goods_no}',
							  rumty_no: '${dto.rumty_no}',
							  goods_ty_no: '${dto.goods_ty_no}',
							  goods_name: '${dto.goods_name}',
							  goods_pc: '${dto.goods_pc}',
							  goods_cn: $("#goods_cn").val(),
							  goods_start_date: '${dto.goods_start_date}',
						      goods_end_date: '${dto.goods_end_date}',
						      goods_delete_at: $("#goods_delete_at").val()
					},
					error:	  function(){
						alert(dropErrorMessage);
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