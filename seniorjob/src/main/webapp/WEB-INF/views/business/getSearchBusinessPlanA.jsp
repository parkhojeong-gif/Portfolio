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
<jsp:include page="../topHeader.jsp"></jsp:include>
<body>





	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<jsp:include page="../mypage.jsp" />
				<c:forEach items="${list }" var="bp">
					<div
						class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
						<div class="section">

							<section class="post">
								<div class="text-center padding-b-50">
									<h2 class="wow fadeInLeft animated">${bp.business_a}</h2>
									<div class="title-line wow fadeInRight animated"></div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<p class="author-category">
											By <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
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
									<a href="single.html" class="btn btn-default btn-border">수정</a>
									<a href="single.html" class="btn btn-default btn-border">삭제</a>
									<a href="single.html" class="btn btn-default btn-border">인쇄</a>
									<a href="single.html" class="btn btn-default btn-border">저장</a>
									<a href="single.html" class="btn btn-default btn-border">첨삭요청</a>
								</p>
							</section>
							<hr>



						</div>
					</div>

				</c:forEach>
			</div>
			<!-- row end -->

		</div>
	</div>



	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>