<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/hoho130" />
<c:set var="ajaxPath" value="http://15.164.14.206:8080/ajaxGoods" />
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
	
	<title>상품 등록</title>
</head>

<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<div class="row footer" >
	<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<ul class="nav nav-tabs" id="myTab" role="tablist" style="">
			  <li class="nav-item">
			    <a class="nav-link" id="rumty-tab" data-toggle="tab" href="#rumty" role="tab" aria-controls="rumty" aria-selected="true">&nbsp;&nbsp;객실 유형&nbsp;&nbsp;</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="goods-tab" data-toggle="tab" href="#goods" role="tab" aria-controls="goods" aria-selected="false">&nbsp;&nbsp;상품&nbsp;&nbsp;</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="option-tab" data-toggle="tab" href="#option" role="tab" aria-controls="option" aria-selected="false">&nbsp;&nbsp;옵션&nbsp;&nbsp;</a>
			  </li>
			</ul>
			
 			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade" id="rumty" role="tabpanel" aria-labelledby="rumty-tab">
			  		<form id="rumtyForm" name="rumtyForm" method="get" action="">
			  			<div class="form-group">
							<div class="form-row">
								<div class="form-group col-md-12">
									<label class=text-danger for="rumty_name">객실 유형 이름</label>
									<input type="text" id="rumty_name" name="rumty_name" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-3">
									<label class=text-danger for="rum_pc">가격</label>
									<input type="text" id="rum_pc" name="rum_pc" class="form-control">
								</div>
								<div class="form-group col-md-3">
									<label class=text-danger for="rum_totar">객실 면적</label>
									<input type="text" id="rum_totar" name="rum_totar" class="form-control">
								</div>
								<div class="form-group col-md-3">
									<label class=text-danger for="rum_bedd_ty">침구 타입</label>
									<input type="text" id="rum_bedd_ty" name="rum_bedd_ty" class="form-control">
								</div>
								<div class="form-group col-md-3">
									<label class=text-danger for="nmpr_lmtt">인원 제한</label>
									<input type="text" id="nmpr_lmtt" name="nmpr_lmtt" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label class=text-danger for="rum_image_url">객실 이미지 URL</label>
									<input type="text" id="rum_image_url" name="rum_image_url" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label class=text-danger for="rum_guidance">객실 안내</label>
									<textarea class="form-control" id="rum_guidance" name="rum_guidance" rows="6"></textarea>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-12" style="text-align: right">
									<input type="button" class="btn btn-primary btn-sm" id="btnInsertRumty" name="btnInsertRumty" value="등록" onclick="fn_insertRumty()">
									<input type="button" class="btn btn-primary btn-sm" id="prev" name="prev" value="돌아가기" onclick="history.back(-1);">
								</div>
							</div>
						</div>
					</form>
			  	</div>
				<div class="tab-pane fade" id="goods" role="tabpanel" aria-labelledby="goods-tab">
				  	<form id="goodsForm" name="goodsForm" method="get" action="">
						<input type="hidden" id="goods_delete_at" name="goods_delete_at" value="N">
						<input type="hidden" id="rumty_no" name="rumty_no">
						<input type="hidden" id="goods_ty_no" name="goods_ty_no">
		
						<div class="form-group">
							<div class="form-row">
								<div class="form-group col-md-12">
									<label class=text-danger for="goods_name">상품명</label>
									<input type="text" id="goods_name" name="goods_name" class="form-control" >
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label class=text-danger for="goods_pc">가격</label>
									<input type="text" id="goods_pc" name="goods_pc" class="form-control" >
								</div>
								<div class="form-group col-md-4">
									<label class=text-danger for="selectGoods_ty">상품 유형</label>
									<select id="selectGoods_ty" class="form-control">
										<c:forEach var="index" items="${goods_TyList }">
											<option value="${index.goods_ty_no }">${index.goods_ty_name }</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group col-md-4">
									<label class=text-danger for="selectRumty">객실 유형</label>
									<select id="selectRumty" class="form-control">
										<option value=""> - </option>
										<c:forEach var="index" items="${rumtyList }">
											<option value="${index.rumty_no }">${index.rumty_name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label class=text-danger for="goods_cn">상품 내용</label>
									<textarea class="form-control" id="goods_cn" name="goods_cn" rows="4"></textarea>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label class="text-danger" for="goods_start_date">상품 판매 시작일</label>	
									<input type="text" id="goods_start_date" name="goods_start_date" class="form-control" placeholder="판매기간을 설정하려면 날짜를 선택하세요." readonly>
								</div>
								<div class="form-group col-md-6">
									<label class="text-danger" for="goods_end_date">상품 판매 종료일</label>
									<input type="text" id="goods_end_date" name="goods_end_date" class="form-control" placeholder="판매기간을 설정하려면 날짜를 선택하세요." readonly>
								</div>
							</div>
							<div class="form-row" style="text-align: center;">
								<div class="form-group col-md-12" style="text-align: right">
									<input type="button" id="btnInsertGoods" name="btnInsertGoods" class="btn btn-primary btn-sm" value="등록" onclick="fn_insertGoods()">
									<input type="button"class="btn btn-primary btn-sm" onclick="history.back(-1);" value="돌아가기"/>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="tab-pane fade" id="option" role="tabpanel" aria-labelledby="option-tab">
				 	<form id="optionForm" name="optionForm" method="get" action="">
						<input type="hidden" id="optn_delete_at" name="optn_delete_at" value="N">
						
						<div class="form-group">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label class=text-danger for="optn_name">옵션 이름</label>
									<input type="text" id="optn_name" name="optn_name" class="form-control">
								</div>
								<div class="form-group col-md-6">
									<label class=text-danger for="optn_pc">가격</label>
									<input type="text" id="optn_pc" name="optn_pc" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-12" style="text-align: right">
									<input type="button" id="btnInsertOption" name="btnInsertOption" class="btn btn-primary btn-sm" value="등록" onclick="fn_insertOption()">
									<input type="button" class="btn btn-primary btn-sm" onclick="history.back(-1);" value="돌아가기"/>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var insertErrorMessage = "등록에 실패하였습니다. 잠시 후 다시 시도해 주세요.";
		
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
		
		fn_insertRumty = function(){
			if(!$("#rumty_name").val() || !$("#rum_totar").val() || !$("#rum_bedd_ty").val() 
					|| !$("#nmpr_lmtt").val() || !$("#rum_pc").val() || !$("#rum_guidance").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			$.ajaxSettings.traditional = true;
			$.ajax({
				url: 	  "http://15.164.14.206:8080/hoho130/ajaxInsertRumty",
				type: 	  "post",
				dataType: "json",
				data:{	  rumty_name: $("#rumty_name").val(),
						  rum_totar: $("#rum_totar").val(),
						  rum_bedd_ty: $("#rum_bedd_ty").val(),
						  nmpr_lmtt: $("#nmpr_lmtt").val(),
						  rum_pc: $("#rum_pc").val(),
						  rum_guidance: $("#rum_guidance").val(),
					      rum_image_url: $("#rum_image_url").val()
				},
				error:	  function(){
					alert(insertErrorMessage);
				},
				success:  function(){
					alert("등록 되었습니다.");
					window.location.href = "http://15.164.14.206:8080/hoho130/goodsList";
				}
			})		
		}
		
		fn_insertGoods = function(){
			$("#rumty_no").val($("#selectRumty").val());
			$("#goods_ty_no").val($("#selectGoods_ty").val());
			
			if(!$("#goods_ty_no").val() || !$("#goods_name").val() || !$("#goods_pc").val() 
					|| !$("#goods_cn").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			if($("#goods_start_date").val() > $("#goods_end_date").val()){
				alert("판매 종료일이 판매 시작일보다 빠를수 없습니다.");
				return false;
			}			

			$.ajaxSettings.traditional = true;
			$.ajax({
				url: 	  "http://15.164.14.206:8080/hoho130/ajaxInsertGoods",
				type: 	  "post",
				dataType: "json",
				data:{	  rumty_no: $("#rumty_no").val(),
						  goods_ty_no: $("#goods_ty_no").val(),
						  goods_name: $("#goods_name").val(),
						  goods_pc: $("#goods_pc").val(),
						  goods_cn: $("#goods_cn").val(),
						  goods_start_date: $("#goods_start_date").val(),
					      goods_end_date: $("#goods_end_date").val(),
						  goods_delete_at: $("#goods_delete_at").val()
				},
				error:	  function(result){
					alert(insertErrorMessage);
				},
				success:  function(result){
					alert(result.msg);
					window.location.href = "http://15.164.14.206:8080/hoho130/goodsList";
				}
			})

		}
				
		fn_insertOption = function(){
			
			if(!$("#optn_name").val() || !$("#optn_pc").val()){
				alert("빈 항목이 존재합니다. 확인해주세요.");
				return false;
			}
			
			$.ajaxSettings.traditional = true;
			$.ajax({
				url: 	  "http://15.164.14.206:8080/hoho130/ajaxInsertOption",
				type: 	  "post",
				dataType: "json",
				data:{	  optn_name: $("#optn_name").val(),
						  optn_pc: $("#optn_pc").val(),
						  optn_delete_at: $("#optn_delete_at").val()
				},
				error:	  function(result){
					alert(insertErrorMessage);
				},
				success:  function(result){
					alert(result.msg);
					window.location.href = "http://15.164.14.206:8080/hoho130/goodsList";
				}
			})
		}
	</script>
</body>
</html>