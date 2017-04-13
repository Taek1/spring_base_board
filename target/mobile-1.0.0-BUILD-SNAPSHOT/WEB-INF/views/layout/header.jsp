<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.dropdown:hover .dropdown-menu {
    display: block;
}


.nav_menu  li  a{
	padding: 15px;
}

</style>
<nav class="navbar navbar-default">
	<div class="container">
		<div class="col-xs-12" >
			<div class="navbar-header">
				<a class="navbar-brand" href="#" >WebSiteName</a>
			</div>
			<ul class="nav navbar-nav navbar-right nav_menu">
				<li><a href="#">Home</a></li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">미생물 유전체<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						 <li><a href="#">텍스트 검색</a></li>
						 <li><a href="#">분류군별 검색</a></li>
						 <li><a href="#">유전체 목록</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">통계<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						 <li><a href="#">분류군별 통계</a></li>
						 <li><a href="#">연도별 통계</a></li>
						 <li><a href="#">대구분별 통계</a></li>
						 <li><a href="#">중구분별 통계</a></li>
					</ul>
				</li>
				
				<li><a href="#">데이터 업로드</a></li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">기관 소개<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						 <li><a href="#">인사</a></li>
						 <li><a href="#">조직도</a></li>
						 <li><a href="#">데이터 관리 프로세스</a></li>
						 <li><a href="#">공지사항</a></li>
						 <li><a href="#">오시는길</a></li>
						 <li><a href="#">사업단 성과</a></li>
						 <li><a href="#"></a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">사용자 참여<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						 <li><a href="#">Q&A</a></li>
						 <li><a href="#">FAQ</a></li>
						 <li><a href="#">자유게시판</a></li>
						 <li><a href="#">오류신고</a></li>
						 <li><a href="#">사용방법</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</div>
</nav>