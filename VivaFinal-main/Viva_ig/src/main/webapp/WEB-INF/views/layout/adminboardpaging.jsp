<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="paging">
	<ul class="pagination pagination-sm justify-content-center">
	<c:choose>
	<c:when test="${not empty keyword }">
			<%-- 첫 페이지로 이동 --%>
	<c:if test="${paging.curPage ne 1 }">
		<li class="page-item"><a href="./boardlist" class="page-link" style="width: 60px;">&larr; 처음</a></li>	
	</c:if>
	
	<%-- 이전 페이징 리스트로 이동 --%>
	<c:choose>
	<c:when test="${paging.startPage ne 1 }">
		<li class="page-item"><a href="./boardlist?curPage=${paging.startPage - paging.pageCount }&keyword=${keyword}" class="page-link">&laquo;</a></li>
	</c:when>
	<c:when test="${paging.startPage eq 1 }">
		<li class="page-item disabled"><a class="page-link">&laquo;</a></li>
	</c:when>
	</c:choose>
	
	<%-- 이전 페이지로 가기 --%>
	<c:if test="${paging.curPage > 1 }">
		<li class="page-item"><a href="./boardlist?curPage=${paging.curPage - 1 }&keyword=${keyword}" class="page-link">&lt;</a></li>
	</c:if>
	
	
	
	
	<%-- 페이징 리스트 --%>
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
	<c:if test="${paging.curPage eq i }">
		<li class="page-item active"><a href="./boardlist?curPage=${i }&keyword=${keyword}" class="page-link">${i }</a></li>
	</c:if>
	<c:if test="${paging.curPage ne i }">
		<li class="page-item"><a href="./boardlist?curPage=${i }&keyword=${keyword}" class="page-link">${i }</a></li>
	</c:if>
	</c:forEach>

	<%-- 다음 페이지로 가기 --%>
	<c:if test="${paging.curPage < paging.totalPage }">
		<li class="page-item"><a href="./boardlist?curPage=${paging.curPage + 1 }&keyword=${keyword}" class="page-link">&gt;</a></li>
	</c:if>
	
	<%-- 다음 페이징 리스트로 이동 --%>
	<c:choose>
	<c:when test="${paging.endPage ne paging.totalPage }">
		<li class="page-item"><a href="./boardlist?curPage=${paging.startPage + paging.pageCount }&keyword=${keyword}" class="page-link">&raquo;</a></li>
	</c:when>
	<c:when test="${paging.endPage eq paging.totalPage }">
	</c:when>
	</c:choose>

	<%-- 끝 페이지로 이동 --%>
	<c:if test="${paging.curPage ne paging.totalPage }">
		<li class="page-item"><a href="./boardlist?curPage=${paging.totalPage }&keyword=${keyword}" class="page-link" style= "width: 50px;">끝 &rarr;</a></li>	
	</c:if>
	
	
	
	

	</c:when>
	
	<c:when test="${not empty categoryType }">
		<%-- 첫 페이지로 이동 --%>
	<c:if test="${page.curPage ne 1}">
		<li class="page-item"><a href="./boardlist?categoryType=${categoryType}" class="page-link" style="width: 60px;">&larr; 처음</a></li>
	</c:if>

	<%-- 이전 페이징 리스트로 이동 --%>
	<c:choose>
	<c:when test="${paging.startPage ne 1 }">
		<li class="page-item"><a href="./list?curPage=${paging.startPage - paging.pageCount }&keyword=${keyword}" class="page-link">&laquo;</a></li>
	</c:when>
	<c:when test="${paging.startPage eq 1 }">
		<li class="page-item disabled"><a class="page-link">&laquo;</a></li>
	</c:when>
	</c:choose>
	
	<c:if test="${paging.curPage > 1}">
		<li class="page-item"><a href="./boardlist?curPage=${paging.curPage - 1}&amp;categoryType=${categoryType}&amp;keyword=${keyword}" class="page-link">&lt;</a></li>
	</c:if>

	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
	<c:if test="${paging.curPage eq i}">
		<li class="page-item active"><a href="./boardlist?curPage=${i}&amp;categoryType=${categoryType}&amp;keyword=${keyword}" class="page-link">${i}</a></li>
	</c:if>
	<c:if test="${paging.curPage ne i}">
		<li class="page-item"><a href="./boardlist?curPage=${i}&amp;categoryType=${categoryType}&amp;keyword=${keyword}" class="page-link">${i}</a></li>
	</c:if>
	</c:forEach>

	<c:if test="${paging.curPage < paging.totalPage}">
		<li class="page-item"><a href="./boardlist?curPage=${paging.curPage + 1}&amp;categoryType=${categoryType}&amp;keyword=${keyword}" class="page-link">&gt;</a></li>
	</c:if>

	<c:choose>
	<c:when test="${paging.endPage ne paging.totalPage}">
		<li class="page-item"><a href="./boardlist?curPage=${paging.startPage + paging.pageCount}&amp;categoryType=${categoryType}&amp;keyword=${keyword}" class="page-link">&raquo;</a></li>
	</c:when>
	<c:when test="${paging.endPage eq paging.totalPage}">
	</c:when>
	</c:choose>

	<c:if test="${paging.curPage ne paging.totalPage}">
		<li class="page-item"><a href="./boardlist?curPage=${paging.totalPage}&amp;categoryType=${categoryType}&amp;keyword=${keyword}" class="page-link" style="width: 60px;">끝 &rarr;</a></li>
	</c:if>
	
	</c:when>
	</c:choose>

	</ul>
</div>
