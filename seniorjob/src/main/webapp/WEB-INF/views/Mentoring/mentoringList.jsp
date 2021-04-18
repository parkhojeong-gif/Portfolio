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
	
	<!-- 멘토링 리스트 출력 -->
	<div class="content-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<div class="section">
						<div id="list-type" class="proerty-th-list">
							<div class="col-md-4 p0">
							<c:forEach var="mentoring" items="${list }">
							<form action="getSearchMentoringChanGon">
							<input type="hidden" id="mentor_id" name="mentor_id" value="${mentoring.mentor_id }">
							<input type="hidden" id="mentoring_number" name="mentoring_number" value="${mentoring.mentoring_number }">
								<div class="box-two proerty-item">
									<div class="item-thumb">
									
										<img src="image/${mentoring.mentoring_photo }">
									</div>
									<div class="item-entry overflow">
										<h5>	
											<a href="property-1.html">멘토링 이름: ${mentoring.mentoring_name }</a>
										</h5>
										<div class="dot-hr"></div>
										<span class="pull-left"><b>멘토 ID: </b>${mentoring.mentor_id }</span> <span
											class="proerty-price pull-right">멘토링 가격: ${mentoring.mentoring_price }원</span>
										<p style="display: none;">멘토링 내용: ${mentoring.mentoring_content }</p>
										<div class="property-icon">
											<div class="dealer-action pull-right">
											<input type="submit" value="상세보기">
											</div>
										</div>
									</div>
								</div>
								</form>
							</c:forEach>	
							</div>
						</div>
					</div>
				</div>
				
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
												<c:if test="${empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="loginCheck()">
                                                </c:if>
                                                <c:if test="${not empty users }">
													<input class="button btn largesearch-btn" value="멘토링 등록하기" type="button" onclick="MentoringRegister()">
                                                </c:if>
											<div class="button btn largesearch-btn" style="cursor: pointer;" onclick="window.scrollTo(0,0);">TOP</div>
										</div>
									</div>
								</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- End of 플로팅 배너 -->
				
			</div>
		</div>
	</div>
	<!-- End of 멘토 리스트 출력 -->
<!-- Footer area-->
<jsp:include page="../footer.jsp" />
<!-- Footer area-->		

<script>

//로그아웃 상태에서 멘토등록 클릭 시
function loginCheck(){
	if(confirm("로그인 또는 회원가입이 필요한 항목입니다.")){
		location.href = "login"; // 로그인 페이지로 이동
	}
}

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