<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 본문 시작 -->
	<div class="row">
			<c:forEach var="boardGrp" items="${boardList }">
				<c:forEach var="boardList" items="${boardGrp.boardList}">
				<c:set var="i" value="0"/>
<!-- --------------------------------------------------- -->
					<div class="col-md-6">
						<div class="panel panel-warning">
						<!-- Default panel contents -->
							<div class="panel-heading">
								${boardList.b_name }
								<div class="view-all pull-right">
									<a href="/board?no=${boardList.b_no }" title="${boardList.b_name }">더보기 <i class="fa fa-angle-right"></i></a>
								</div>
							</div>
							
							<!-- Table -->
							<div class="table-responsive">
								<table class="table table-hover">
									<tbody>
										<c:forEach var="postList" items="${boardList.postList }">
											<c:set var="i" value="${i+1 }"/>
											<tr>
												<td>${postList.p_title }--${i }</td>
												<td class="px80"></td>
											</tr>
										</c:forEach>
										<c:set var="i" value="${i+1 }"/>
										<c:if test="${i<5 }">
											<c:forEach begin="${i }" end="5" step="1" var="i">
												<tr>
													<td>게시물이 없습니다${i }</td>
													<td class="px80"></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
<!-- --------------------------------------------------- -->
			</c:forEach>		
		</c:forEach>

	</div>