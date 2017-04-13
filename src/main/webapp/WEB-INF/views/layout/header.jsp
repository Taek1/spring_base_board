<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- Bootstrap -->

<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<!-- Font -->

<!-- Jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- Jquery -->

<!-- dropdown hover -->
<style>
.sidebar-nav {
    padding: 9px 0;
}

.dropdown-menu .sub-menu {
    left: 100%;
    position: absolute;
    top: 0;
    visibility: hidden;
    margin-top: -1px;
}

.dropdown-menu li:hover .sub-menu {
    visibility: visible;
}

.dropdown:hover .dropdown-menu {
    display: block;
}

.nav-tabs .dropdown-menu, .nav-pills .dropdown-menu, .navbar .dropdown-menu {
    margin-top: 0;
}

.navbar .sub-menu:before {
    border-bottom: 7px solid transparent;
    border-left: none;
    border-right: 7px solid rgba(0, 0, 0, 0.2);
    border-top: 7px solid transparent;
    left: -7px;
    top: 10px;
}
.navbar .sub-menu:after {
    border-top: 6px solid transparent;
    border-left: none;
    border-right: 6px solid #fff;
    border-bottom: 6px solid transparent;
    left: 10px;
    top: 11px;
    left: -6px;
}
</style>
<!-- dropdown hover -->


<!-- -----------------NAV----------------- -->
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">
				NAME
			</a>
		</div>
		
		<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
			
			<!--   EX) 틀   -->
			<c:forEach var="boardGrp" items="#{boardList}">	
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="text-primary"><c:out value="${boardGrp.bg_name}"></c:out></span> <span class="caret text-primary"></span></a>
						<ul class="dropdown-menu" role="menu">
							<c:forEach items="${boardGrp.boardList }" var="boardList">
								<li><a href="/board?no=${boardList.b_no }">${boardList.b_name} </a></li>
							</c:forEach>
							<!-- <li class="divider"></li> -->
						</ul>
					</li>
				</ul>
			</c:forEach>
			<!-- -------- -->
		
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<!-- <label for="searchText">검색&nbsp;&nbsp;</label> -->
					<input type="text" id="searchText" name="searchText" class="form-control" placeholder="검색어를 입력하세요">
				</div>
					<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			</form>
			<p class="navbar-text"><a href="#" class="navbar-link"><span class="text-primary">로그인</span></a></p>
			<p class="navbar-text"><a href="#" class="navbar-link"><span class="text-success">회원가입</span></a></p>
			<p class="navbar-text"><a href="#" class="navbar-link"><span class="text-warning">회원정보찾기</span></a></p>		
		</div>
	</div>
</nav>
<!-- -----------------NAV----------------- -->