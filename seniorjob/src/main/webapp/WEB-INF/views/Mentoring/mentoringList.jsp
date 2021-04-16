<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡/멘토링</title>
<style>
.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
    border: 1px solid black;
}		
h1{text-align:center}
#sidebar { 
	right: 0;
	padding-top: 110px;
}
#sidebar ul { 
	padding: 10px; 
}
</style>
</head>
<body>
<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->
	<h1 class="display-4">멘토링 리스트</h1>
	
	<!-- 멘토 리스트 출력 -->
	
	<div class="content-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<div class="section">
						<div id="list-type" class="proerty-th-list">
							<div class="col-md-4 p0">
							<c:forEach var="mentoring" items="${list }">
								<div class="box-two proerty-item">
									<div class="item-thumb">
									
										<a href="property-1.html"><img src="image/${mentoring.mentoring_photo }"></a>
									</div>
									<div class="item-entry overflow">
										<h5>
											<a href="property-1.html">멘토링 이름: ${mentoring.mentoring_name }</a>
										</h5>
										<div class="dot-hr"></div>
										<span class="pull-left"><b>멘토 아이디: </b>${mentoring.mentor_id }</span> <span
											class="proerty-price pull-right">멘토링 가격: ${mentoring.mentoring_price }원</span>
										<p style="display: none;">멘토링 내용: ${mentoring.mentoring_content }</p>
										<div class="property-icon">
											<div class="dealer-action pull-right">
												<a href="submit-property.html" class="button">상세보기 </a> <a href="#" class="button delete_user_car">장바구니</a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>	
							</div>
						</div>
					</div>
				</div>
			
				<!-- 멘토 리스트 출력 -->
				
					<!-- 플로팅 배너 -->
				<div class="col-md-3 p0 padding-top-40" id="sidebar">
					<div class="blog-asside-right">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">멘토링 등록</h3>
							</div>
							<form name="mentorRegisterForm" class="form-inline">
							<div class="panel-body search-widget">
								<input type="hidden" name="id" id="id" value="${users.id }">
								<div class="panel-body search-widget">
									<div class="row">
										<div class="col-xs-12">
											<input class="button btn largesearch-btn" value="멘토링 등록하기" type="button" onclick="MentoringRegister()">
											<div class="button btn largesearch-btn" style="cursor: pointer;" onclick="window.scrollTo(0,0);">TOP</div>
										</div>
									</div>
								</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- 플로팅 배너 -->
			</div>
		</div>
	</div>
<!-- Footer area-->
<jsp:include page="../footer.jsp" />
<!-- Footer area-->		

<script>

//멘토링 등록
function MentoringRegister(){
			var param = $('#id').val();
			var mentorRegisterForm = document.mentorRegisterForm;
			mentorRegisterForm.action = "MentoringRegister?id="+param;
			mentorRegisterForm.submit();
		}


/* 플로팅 배너 */
$(function() {
	var offset = $("#sidebar").offset();
	var topPadding = 300;
	$(window).scroll(function() {
		if ($(window).scrollTop() > offset.top) {
			$("#sidebar").stop().animate({
				marginTop: $(window).scrollTop() - offset.top + topPadding
			});
		} else {
			$("#sidebar").stop().animate({
				marginTop: 0
			});
		};
	});
});
/* 플로팅 배너 */



</script>		
</body>
</html>