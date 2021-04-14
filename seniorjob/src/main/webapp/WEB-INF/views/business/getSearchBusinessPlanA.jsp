<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function detail() {
	//location.href="getBusinessPlanA?seq="+seq //
	var frm = document.frm;
	frm.submit();
}

function deleteBp(seq) {
	location.href="deleteBusinessPlanA?seq="+seq //
}

function updateBp(seq) {
	location.href="updateBusinessPlanA?seq="+seq //
}

function printBp(seq) {
	var url = "printBusinessPlanA?seq="+seq;
	window.open(url,"","width=500,height=600");
}

function excelBp(seq) {
	location.href="getBpExcel?seq="+seq //
}


</script>
<jsp:include page="../topHeader.jsp"></jsp:include>
<body>






	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<jsp:include page="../mypage.jsp" />
				<form action="getBusinessPlanA" method="post" name="frm">
				<%-- <c:forEach items="${bb}" var="bb">
				
				</c:forEach>
				<c:forEach items="${bc}" var="bc">
					<input type="hidden" name="mHidden" id="mHidden" value="${bc.mHidden }">
				</c:forEach>
				<c:forEach items="${bd}" var="bd">
					<input type="hidden" name="sHidden" id="sHidden" value="${bd.sHidden }">
				</c:forEach> --%>
				<c:forEach  var="list1" items="${list1}"  var="list2" items="${list2}" >
				
					<input type="hidden" name="seq" id="seq" value="${list1.seq }">
					<input type="hidden" name="pHidden" id="pHidden" value="${list2.pHidden }">
					
					<div
						class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
						<div class="section">

							<section class="post">
								<div class="text-center padding-b-50">
									<h2 class="wow fadeInLeft animated" onclick="detail()" >${list1.business_a}</h2>
									<div class="title-line wow fadeInRight animated"></div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<p class="author-category">
											by <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
										</p>
									</div>
									<div class="col-sm-6 right">
										<p class="date-comments">
											<a href="single.html"><i class="fa fa-calendar-o"></i>
												June 20, 2013</a> <a href="single.html"><i
												class="fa fa-comment-o"></i> 8 Comments</a>
										</p>
									</div>
								</div>
								<div class="image wow fadeInLeft animated">
									<a href="single.html"> <img src="assets/img/blog2.jpg"
										class="img-responsive" alt="Example blog post alt">
									</a>
								</div>
								<p class="intro">Pellentesque habitant morbi tristique
									senectus et netus et malesuada fames ac turpis egestas.
									Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor
									sit amet, ante. Donec eu libero sit amet quam egestas semper.
									Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
								<p class="read-more">
									<a onclick="updateBp('${list1.seq }')" class="btn btn-default btn-border">수정</a>
									<a onclick="deleteBp('${list1.seq }')" class="btn btn-default btn-border">삭제</a>
									<a onclick="printBp('${list1.seq }')" class="btn btn-default btn-border">인쇄</a>
									<a onclick="excelBp('${list1.seq }')" class="btn btn-default btn-border">엑셀저장</a>
									<a href="single.html" class="btn btn-default btn-border">첨삭요청</a>
								</p>
							</section>
							<hr>



						</div>
					</div>

				</c:forEach>
				</form>
			</div>
			<!-- row end -->

		</div>
	</div>



	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>