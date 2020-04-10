<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
	
	<title>회원 리스트</title>
	<style>
		th, td{
			text-align: center;
		}
	</style>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<form id="memberForm" name="memberForm" method="get" action="">
		<input type="hidden" id="selectOption" name="selectOption">
		<input type="hidden" id="inputValue" name="inputValue">
		<input type="hidden" id="pageNum" name="pageNum">
		<div class="row footer" >
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<span style="float:right">
					<input type="button" onclick="fn_selectListByInput()" value="검색" />
				</span>
				<span style="float:right">
					<input type="text" id="keyword" name="keyword" style="width:180px;"/>
				</span>
				<span style="float:right">
					<select id="select" name="select" style="width:100px; height: 26px;">
						<option value="selectId">아이디</option>
						<option value="selectName">이름</option>
					</select>
				</span><br><br>
				
				<table class="table">
					<tr>
						<th class=text-danger style="width: 20%;">아이디</th>
						<th class=text-danger style="width: 20%;">이름</th>
						<th class=text-danger style="width: 16%;">생일</th>
						<th class=text-danger style="width: 20%;">전화번호</th>
						<th class=text-danger style="width: 16%;">국적</th>
						<th class=text-danger style="width: 9%;">성별</th>
					</tr>
					<c:forEach var="dto" items="${list }">
						<tr>
							<td><a href="${actionPath}/memberUpdateForm?mbr_email=${dto.mbr_email }">${dto.mbr_email }</a></td>
							<td>${dto.mbr_name }</td>
							<td>${dto.mbr_brthdy }</td>
							<td>${dto.mbr_tel }</td>
							<td>${dto.mbr_nlty }</td>
							<td>${dto.mbr_sexdstn }</td>
						</tr>
					</c:forEach>
				</table>										
			</div>
		</div>
		<div class="col-sm-3" style="height: 70px; background: #2b363e;"></div>
		<div class="col-sm-6" style="height: 70px; background: #2b363e;">
			<!-- 페이징 -->
			<ul class="pagination justify-content-left">
  				<li class="page-item"><a class="page-link" href="#" onclick="fn_movePage(1)">First</a></li>
  				<c:if test="${startPage > 10 }">
  					<li class="page-item"><a class="page-link" href="#" onclick="fn_movePage(${startPage -10 })">Prev</a></li>
  				</c:if>
  				<c:forEach var="cnt" begin="${startPage }" end="${endPage }" step="1">
  					<li class="page-item ${pageNum eq cnt ? 'active' : ''}"><a class="page-link" href="#" onclick="fn_movePage(${cnt})">${cnt }</a></li>
  				</c:forEach>
  				<c:if test="${endPage < totalPage }">
  					<li class="page-item"><a class="page-link" href="#" onclick="fn_movePage(${startPage +10 })">Next</a></li>
  				</c:if>
  				<li class="page-item"><a class="page-link" href="#" onclick="fn_movePage(${totalPage })">End</a></li>
			</ul>
			<!-- 페이징 끝 -->
		</div>
		<div class="col-sm-3" style="height: 70px; background: #2b363e;"></div>
	</form>


	<script type="text/javascript">
	fn_selectListByInput = function(){
		if("" == $("#keyword").val()){
			alert("검색할 정보를 입력해주세요.");
			$("#input").focus();
			return false;
		}
		
		$("#inputValue").val($("#keyword").val());
		$("#selectOption").val($("#select").val());
				
		$("#memberForm").attr("action","${actionPath}/memberList");
		$("#memberForm").submit();
	}
	
	fn_movePage = function(page){
		$("#pageNum").val(page);
		$("#selectOption").val("${selectOption }");
		$("#inputValue").val("${inputValue }");
		
		$("#memberForm").attr("action", "${actionPath}/memberList");
		$("#memberForm").submit();
	}
	
	</script>
</body>
</html>