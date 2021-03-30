<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="../topHeader.jsp"></jsp:include>
<body>

	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-3 p0 padding-top-20">
					<div class="blog-asside-right pr0">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">커뮤니티</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">공지사항</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading" onclick="location.href='mentoringReviews'">
								<h3 class="panel-title">멘토링 후기</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading" onclick="location.href='seniorTimes'">
								<h3 class="panel-title">시니어 타임즈</h3>
							</div>
						</div>
					</div>
				</div>
				
				<div class="section additional-details">

					<h4 class="s-property-title">공지사항</h4>
					

					<ul>
						<li>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">카테고리</span>
							<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">제목</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">작성자</span>
							<span class="col-xs-6 col-sm-4 col-md-2 add-d-title">작성일자</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">조회수</span>
						</li>
						<c:forEach items="${list }" var="gongji">
							<span onclick="location.href='getService_Center?seq=${gongji.seq }'"class="col-xs-6 col-sm-8 col-md-1 add-d-entry">${gongji.category_a }</span>
							<span onclick="location.href='getService_Center'"class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${gongji.title }</span>
							<span onclick="location.href='getService_Center'"class="col-xs-6 col-sm-8 col-md-1 add-d-entry">${gongji.id }</span>
							<span onclick="location.href='getService_Center'"class="col-xs-6 col-sm-8 col-md-2 add-d-entry">${gongji.w_date }</span>
							<span onclick="location.href='getService_Center'"class="col-xs-6 col-sm-8 col-md-1 add-d-entry">${gongji.click }</span>
						</c:forEach>	
						<c:if test="${paging.startPage != 1 }">
			<a href="/serviceCenter?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/serviceCenter?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/serviceCenter?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>	
					</ul>
				</div>
					<div class="col-xs-8">
					<br>
					</div>
					<div class="col-xs-2">
                         <div class="btn-group bootstrap-select show-tick form-control">
                         	 <div class="dropdown-menu open" style="max-height: 640.781px; overflow: hidden; min-height: 109px;"><ul class="dropdown-menu inner" role="menu" style="max-height: 629.781px; overflow-y: auto; min-height: 98px;"><li data-original-index="0" class=""><a tabindex="0" class="" style="" data-tokens="null"><span class="text"> -Status- </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1" class=""><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Rent </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Boy</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">used</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div><select id="basic" class="selectpicker show-tick form-control" tabindex="-98">
                             <option> 분류 </option>
                             <option>제목 </option>
                             <option>제목/내용</option>
                             <option>작성자</option>  
                        </select></div>
                    </div>
                    <div class="col-xs-7">
					<div class="input-group">
                             <input class="form-control"  style="text-align:center;  height:45px; type="text" placeholder="내용 입력 ">
                             <span class="input-group-btn">
                                   <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                             </span>
                   </div>
                   
                   
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>