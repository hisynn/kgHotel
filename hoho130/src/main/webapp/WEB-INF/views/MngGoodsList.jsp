<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/pj" />
<c:set var="ajaxPath" value="http://15.164.14.206:8080/ajaxGoods" /> --%>
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
	
	<title>상품 목록</title>

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
        td, th{
			text-align: center;
		}	
	</style>
	
	<script>
	    $(document).ready(function() {
	    	fn_ajaxSelectList();
	    });
	</script>  
</head>
<!-- 배너 -->
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<!--  헤더종료, 배너종료 -->
		<form id="goodsForm" name="goodsForm" method="post" action="">
			<div class="row footer" >
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div>
						<span style="float: right"> 
							<input type="button" value="검색" onclick="fn_ajaxSelectList()" />
						</span> 
						<span style="float: right"> 
							<select id="selectKeyword" name="selectKeyword" style="width: 200px; height: 26px;">
								<option value="rumty">객실 유형</option>
								<option value="goods">상품</option>
								<option value="option">옵션</option>
							</select>
						</span> 
						<span style="float: left"> 
							<input type="button" value="상품 등록" onclick="fn_insertForm()" />
						</span>
					</div><br>
				
					<!-- 동적테이블 -->
					<div id="list"></div>
					<!-- 동적테이블 끝 -->
				</div>
			</div>
		</form>
	<!--  FOOTER -->
	<footer class="row footer">
		
		
	</footer>
	<!--  CopyRight -->
	<div class="row copyright tac">
		<div class="container">
			<!--  저작권 표시자리 -->
		</div>
	</div>
	<script type="text/javascript">
		fn_ajaxSelectList = function(){
			var selectKeyword = $("#selectKeyword").val();
			
			$.ajax({
				url: 	  "ajaxSelectList",
				type: 	  "post",
				dataType: "json",
				data: 	  {keyword : selectKeyword},
				error: 	  function(){
					alert("현재 조회 서비스가 원할하지 않습니다.\n잠시 후 다시 이용해 주십시오.");
				},
				success:  function(result){
					var list = result.list;
					var rumtyList = result.rumtyList;
					var goodsTyList = result.goodsTyList;
					
			        var str = '<TABLE class="table"><TR>';
			        
			        //리스트 중첩방지
			        $("#list").html("");
			        
		        	if("rumty" == selectKeyword){
		        		str += '<TH class="text-danger" style="width: 8%;">유형 번호</TH>'
		        			 + '<TH class="text-danger" style="width: 40%;">객실 유형</TH>'
		        			 + '<TH class="text-danger" style="width: 10%;">객실 총면적</TH>'
		        			 + '<TH class="text-danger" style="width: 22%;">객실 침구 타입</TH>'
		        			 + '<TH class="text-danger" style="width: 8%;">인원 제한</TH>'
		        			 + '<TH class="text-danger" style="width: 12%;">가격</TH></TR>';
			       		$.each(list , function(i){
			        		str += '<TR><TD>' + list[i].rumty_no
				        		 + '</TD><TD>' + '<a href="http://15.164.14.206:8080/hoho130/rumtyUpdateForm?rumty_no=' + list[i].rumty_no + '">' + list[i].rumty_name + '</a>'
				        		 + '</TD><TD>' + list[i].rum_totar
				        		 + '</TD><TD>' + list[i].rum_bedd_ty
				        		 + '</TD><TD>' + list[i].nmpr_lmtt
				        		 + '</TD><TD>' + list[i].rum_pc + ' 원'
				        		 + '</TD></TR>';
			        	});
			       		
			        } else if("goods" == selectKeyword){
			        	str += '<TH class="text-danger" style="width: 8%;">상품 번호</TH>'
		        			 + '<TH class="text-danger" style="width: 38%;">상품명</TH>'
			        		 + '<TH class="text-danger" style="width: 10%;">상품 유형</TH>'
		        			 + '<TH class="text-danger" style="width: 10%;">객실 유형</TH>'
		        			 + '<TH class="text-danger" style="width: 10%;">가격</TH>'
		        			 + '<TH class="text-danger" style="width: 12%;">상품 판매 시작일</TH>'
		        			 + '<TH class="text-danger" style="width: 12%;">상품 판매 종료일</TH></TR>';
		        		
		        		$.each(list, function(i){
		        			var goods_start_date = list[i].goods_start_date;
		        			var goods_end_date = list[i].goods_end_date;
		        			var goods_ty_nameIndex = list[i].goods_ty_no -1;
		        			var rumty_nameIndex = list[i].rumty_no -1;
		        			var rumty_name;
		        			
		        			if(!list[i].rumty_no){
		        				rumty_name = '-';
		        			} else{
		        				rumty_name = rumtyList[rumty_nameIndex].rumty_name;
		        			}
		        			
		        			if(!goods_start_date){
		        				goods_start_date = '-';
		        			}
		        			if(!goods_end_date){
		        				goods_end_date = '-';
		        			}
		        			
		        			str += '<TR><TD>' + list[i].goods_no
			        		 + '</TD><TD>' + '<a href="http://15.164.14.206:8080/hoho130/goodsUpdateForm?goods_no=' + list[i].goods_no + '">' + list[i].goods_name + '</a>'
		        			 + '</TD><TD>' + goodsTyList[goods_ty_nameIndex].goods_ty_name
			        		 + '</TD><TD>' + rumty_name
			        		 + '</TD><TD>' + list[i].goods_pc + ' 원'
			        		 + '</TD><TD>' + goods_start_date
			        		 + '</TD><TD>' + goods_end_date
			        		 + '</TD></TR>';
		        		});
		        		
			        } else if("option" == selectKeyword){
			        	str += '<TH class="text-danger" style="width: 10%;">옵션 번호</TH>'
		        			 + '<TH class="text-danger" style="width: 60%;">옵션 이름</TH>'
		        			 + '<TH class="text-danger" style="width: 30%;">가격</TH></TR>';
		        			 
			        	$.each(list, function(i){
		        			str += '<TR><TD>' + list[i].optn_no
			        		 + '</TD><TD>' + '<a href="http://15.164.14.206:8080/hoho130/optionUpdateForm?optn_no=' + list[i].optn_no + '">' + list[i].optn_name + '</a>'
			        		 + '</TD><TD>' + list[i].optn_pc + ' 원'
			        		 + '</TD></TR>';
		        		});
			        }
		        	
		        	str += '</TABLE>';
			        $("#list").html(str); 
				}
			});
		}
		
		fn_insertForm = function(){
			$("#goodsForm").attr("action","insertForm");
			$("#goodsForm").submit();
		}
	</script>
</body>
</html>

				
				