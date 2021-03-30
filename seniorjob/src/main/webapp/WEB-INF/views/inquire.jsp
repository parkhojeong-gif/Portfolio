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
				<br>
				<form>
					<div align="center">
						<h3>무엇을 도와드릴까요?</h3>
					</div>
					<div class="input-group" align="center">
						<input class="form-control" type="text" placeholder="내용을 입력해주세요">
						<span class="input-group-btn">
							<button class="btn btn-primary subscribe" type="button">검색</button>
						</span>
					</div>
					<!-- /input-group -->
				</form>

				<div class="col-md-3 p0 padding-top-40">
					<div class="blog-asside-right pr0"></div>
				</div>
				<div class="col-md-5 col-sm-6 col-xs-12">
					<div class="welcome_services wow fadeInRight" data-wow-delay="0.3s"
						data-wow-offset="100">
						<div class="row">
							<div class="col-xs-6 m-padding">
								<div class="welcome-estate">
									<div class="welcome-icon">
										<i class="pe-7s-home pe-4x"></i>
									</div>
									<h2>결제/환불</h2>
									<h6>1:1 도움말</h6>
								</div>
							</div>
							<div class="col-xs-6 m-padding">
								<div class="welcome-estate">
									<div class="welcome-icon">
										<i class="pe-7s-users pe-4x"></i>
									</div>
									<h2>신청/취소</h2>
									<h6>1:1 도움말</h6>
								</div>
							</div>

							<!--                                     <div class="col-xs-6 m-padding"> -->
							<div class="welcome-estate">
								<div class="welcome-icon">
									<i class="pe-7s-notebook pe-4x"></i>
								</div>
								<h2>화상면접 사용법</h2>
								<h6>1:1 도움말</h6>
							</div>
							<!--                                     </div> -->
							<div class="col-xs-6 m-padding">
								<div class="welcome-estate">
									<div class="welcome-icon" onclick="location.href='inquireInsert'">
										<i class="pe-7s-help2 pe-4x"></i>
									</div>
									<h2>문의하기</h2>
									<h6>기타</h6>
								</div>
							</div>
							<div class="col-xs-6 m-padding">
								<div class="welcome-estate">
									<div class="welcome-icon" onclick="location.href='inquireList'">
										<i class="pe-7s-help2 pe-4x"></i>
									</div>
									<h2>문의목록</h2>
									<h6>기타</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>