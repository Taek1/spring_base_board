<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-12">
	<p>
		<span class="text-primary">
			로그인	
		</span>
	</p>
	<div class="panel panel-primary">
	</div>
	
	<form class="form">
		<div class="form-group col-xs-12">
			<label for="uid">ID</label>
			<input type="text" class="form-control" id="uid" placeholder="Jane Doe">
		</div>
		
		<div class="form-group col-xs-12">
			<label for="pwd">PASSWORD</label>
			<input type="text" class="form-control" id="pwd" placeholder="Jane Doe">
		</div>
		<div class="row text-center">
			<div class="col-xs-1"></div>
			<button type="submit" class="btn btn-primary col-xs-5">로그인</button>
			<button type="button" class="btn btn-danger col-xs-5">회원가입</button>
			<div class="col-xs-1"></div>
		</div>
	</form>
</div>



<div class="col-md-12" style="margin-top: 50px;">
	<!-- ------------------------------ -->
	<p>&nbsp;<span class="glyphicon glyphicon-asterisk"></span>&nbsp;최근 게시물</p>
	<div class="panel panel-primary" style="margin-bottom: 10px;">
	</div>
		<c:set var="i" value="0"/>
		<c:forEach var="recentPost" items="recentPost">
			<c:set var="i" value="${i+1 }"/>	
			<p>&nbsp;&nbsp;-&nbsp;${recentPost.p_title }</p>
		</c:forEach>
		<c:if test="${i<5 }">
			<c:forEach begin="${i }" end="5" var="i">
				<p>&nbsp;&nbsp;-&nbsp;게시물이 없습니다.</p>
			</c:forEach>
		</c:if>
	<!-- ------------------------------ -->
	<p style="margin-top: 30px;">&nbsp;<span class="glyphicon glyphicon-asterisk"></span>&nbsp;최근 댓글</p>
	<div class="panel panel-primary" >
	</div>
		<c:set var="i" value="0"/>
		<c:forEach items="${recentComment }" var="recentComment">
			<c:set var="i" value="${i+1 }"/>	
			<p>&nbsp;&nbsp;-&nbsp;${recentComment.c_content }</p>
		</c:forEach>
		<c:if test="${i<5 }">
			<c:forEach begin="${i }" end="5" var="i">
				<p>&nbsp;&nbsp;-&nbsp;게시물이 없습니다.</p>
			</c:forEach>
		</c:if>
	<!-- ------------------------------ -->
</div>



