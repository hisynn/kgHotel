<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

</head>

<body>
	<div class="loading"></div>
	<div class="toprow" id="top" >
		<div class="container" style="width:95%;">
				<span style="float: right">
				<i class="fa fa-user"></i><a href="adminMain">홈</a>
				<i class="fa fa-user"></i><a href="main.jsp">로그아웃</a>
				<i class="fa fa-user"></i><a href="changePw">비밀번호 변경</a>
				</span>			
		</div>
	</div>

	<!--  헤더부분 -->
	<header class="row menubar menu" id="myHeader">
		<div class="container">
			<div class="col-sm-3">
				<a class="ftitle2" href="adminMain.jsp">KGHotel</a>
			</div>
			<div class="col-sm-12" style="padding-right: 300px;">
				<div class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#firstmenu">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"></a>
					</div>
					<div class="navbar-collapse collapse" id="firstmenu">
						<ul class="nav navbar-nav" style="font-size: 15px">
							<li><a href="rumSltAll">객실관리</a></li>
							<li><a href="goodsList">상품관리</a></li>
							<li><a href="inqryList">문의관리</a></li>
							<li><a href="resveSltMulti">예약관리</a></li>
							<li><a href="noticeSltMulti">공지관리</a></li>
							<li><a href="sellingSltDate">매출조회</a></li>
							<li><a href="memberList">회원관리</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	
</html>