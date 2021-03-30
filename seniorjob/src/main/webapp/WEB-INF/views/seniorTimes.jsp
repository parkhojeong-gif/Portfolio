<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="topHeader.jsp"></jsp:include>
<body>

	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<div class="col-md-3 p0 padding-top-40">
					<div class="blog-asside-right pr0">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">커뮤니티</h3>
							</div>
						</div>
						<hr>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading" onclick="location.href='serviceCenter'">
								<h3 class="panel-title">공지사항</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading" onclick="location.href='mentoringReviews'">
								<h3 class="panel-title">멘토링 후기</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">시니어 타임즈</h3>
							</div>
						</div>
					</div>
				</div>
					
				<div class="section additional-details">
					<h4 class="s-property-title">시니어 타임즈</h4>
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>