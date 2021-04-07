<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="section clear">
	<div class="col-xs-10 page-subheader sorting pl0">
		<div class="items-per-page">
			<label for="items_per_page"><b>세부검색 :</b></label>
			<div class="sel">
				<select id="items_per_page" name="per_page" onchange="optionSelect(this)">
					<option value="">선택</option>
					<option value="최신순">최신순</option>
					<option value="인기순">인기순</option>
				</select>
			</div>
			<!--/ .sel-->
		</div>
		<!--/ .items-per-page-->
	</div>

</div>

<div class="section clear">
	<div id="list-type" class="proerty-th">


		<c:forEach var="mentor" items="${list }">

			<div class="col-sm-6 col-md-4 p0"
				onclick="location.href='getMentor?mentor_id=${mentor.mentor_id}'">
				<div class="box-two proerty-item">
					<div class="item-thumb">
						<img src="../resources/assets/img/mentor/photoDefault.jpg">
					</div>

					<div class="item-entry overflow">
						<h5>${mentor.mentor_company_name }</h5>
						<br> <a>${mentor.mentor_department_name } </a>
						<div class="dot-hr"></div>
						<span class="pull-left"><b>${mentor.mentoring_kind }</b></span>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>
</div>

<!-- 페이징 -->
<div style="align:center">
		<c:if test="${paging.startPage != 1 }">
			<a
				href="/MentorList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
			var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/MentorList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a
				href="/MentorList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
</div>
<!-- 페이징 -->