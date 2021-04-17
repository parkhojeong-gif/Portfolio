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
	<div class="content-area recent-property padding-top-40"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<jsp:include page="mypage.jsp"></jsp:include>
				<div align="center">
					<h2>나의 팔로우 목록</h2>
				</div>
				<c:forEach items="${list }" var="follow">
				<c:if test="${follow.id eq users.id }">
					<div name="all" id="all">
						<div class="card-content-padding mentor-hero__content">
							<div class="renew-mentor-card__image-wrap">
								<div class="renew-mentor-card__image-inner">
									<img class="renew-mentor-card__image image--loaded"
										src="image/고등어.jpg">
									<div class="renew-mentor-card__icon-wrap active">
									</div>
								</div>
							</div>

							<div class="mentor-hero">
								<div class="mentor-hero__name">
									<div class="mentor-hero__name__text">
										${follow.mentor_id } <span class="mentor-hero__name__subtext">멘토</span>
									</div>
								</div>


								<div class="mentor-hero__stat">
									<div class="chip chip-outline no-border-radius mentor-index">
										<div class="chip-label">
											<span>팔로워 <strong class="highlight">71명</strong></span>
										</div>
									</div>
								</div>
							</div>

							<div class="row mentor-hero__buttons">
								<div class="col-40">
									<a class="button button-light-gray user_1592"
										data-disable-with="..." type="external" data-remote="true"
										rel="nofollow" data-method="delete" href=""> <span
										style="vertical-align: sub;"> <svg
												xmlns="http://www.w3.org/2000/svg" width="24" height="24"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round"
												stroke-linejoin="round"
												class="feather feather-check feather--lg">
								<polyline points="20 6 9 17 4 12"></polyline>
								</svg>

									</span> <span>팔로우 중</span>
									</a>
								</div>
							</div>
						</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>







	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>