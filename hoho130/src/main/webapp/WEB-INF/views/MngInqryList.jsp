<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="rootPath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}" />
<c:set var="actionPath" value="${rootPath}/hoho130" />
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	<title>고객문의 리스트</title>
	<style>
		
		th, td{
			text-align: center;
		}
		
	</style>
</head>
<body>
	<header id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	
	<form id="inqryForm" name="inqryForm" method="get" action="">	
		<input type="hidden" id="selectOption" name="selectOption">
		<input type="hidden" id="pageNum" name="pageNum"> 
	<div class="row footer" id="common"><div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div align="right">
				<span style="float: right"> 
					<input type="button" id="selectButton" name="selectButton" value="검색"
						onclick="fn_selectList()">
				</span> 
				<span style="float: right"> 
					<select id="selectThema" name="selectThema" style="width: 200px; height: 26px;">
						<option value="default">문의 주제 선택</option>
						<c:forEach var="index" items="${themaList }">
							<option value="${index}">${index }</option>
						</c:forEach>
					</select>
				</span><br><br>
			</div>
				
			<table class="table">			
				<tr>
					<th class="text-danger" style="width: 8%">주제</th>
					<th class="text-danger" style="width: 8%">유형</th>
					<th class="text-danger" style="width: 44%">제목</th>
					<th class="text-danger" style="width: 15%">회원 이메일</th>
					<th class="text-danger" style="width: 15%">등록일</th>
					<th class="text-danger" style="width: 10%">답변여부</th>
				</tr>						
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.inqry_thema }</td>
						<td>${dto.inqry_ty }</td>
						<td style="text-align: left;">
							<a href="${actionPath }/inqryContents?mbr_email=${dto.mbr_email }&inqry_date=${dto.inqry_date }">${dto.inqry_sj }</a>
						</td>
						<td>${dto.mbr_email }</td>
						<td>
							<fmt:parseDate var="inqry_date" value="${dto.inqry_date }" pattern="yyyyMMddHHmm" />
							<fmt:formatDate value="${inqry_date }" pattern="yyyy-MM-dd HH:mm" />	
						</td>
						<c:choose>
							<c:when test="${dto.answer_at eq 'Y'}">
								<td><font color="#5cb85c">답변 완료</font></td>
							</c:when>
							<c:when test="${dto.answer_at eq 'N'}">
								<td><font color="#d9534f">답변 대기</font></td>
							</c:when>
						</c:choose>
					</tr>
				</c:forEach>			
			</table>
		</div>
	</div>
	<div class="col-sm-2" style="height: 70px; background: #2b363e;"></div>
	<div class="col-sm-8" style="height: 70px; background: #2b363e;">
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
	<div class="col-sm-2" style="height: 70px; background: #2b363e;"></div>
	</form>
	
	<script type="text/javascript">
		fn_selectList = function(){
			
			if("default" == $("#selectThema").val()){
				alert("검색할 주제를 선택해주세요.");
				return false;
			}
			
			$("#selectOption").val($("#selectThema").val());
			
			$("#inqryForm").attr("action", "http://15.164.14.206:8080/hoho130/inqryList");
			$("#inqryForm").submit();
		}
		
		
		fn_movePage = function(page){
			$("#pageNum").val(page);
			$("#selectOption").val("${selectOption }");
			
			$("#inqryForm").attr("action", "http://15.164.14.206:8080/hoho130/inqryList");
			$("#inqryForm").submit();
		}
	</script>
</body>
</html>