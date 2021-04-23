<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡/멘토링</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

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
#mainCopy{
	font-size: 40px;
	padding:30px; 
	font-family:'Spoqa Han Sans'; 
	font-weight: 300;
}
input#searchKeyword {
    margin: 30px;
    height: 60px;
}

select#mentoring_option {
    height: 31px;
    width: 132px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$('#mentoringDateBtn').click(function(){
	dateF.action = "getMentoringList";
	dateF.submit();
});
</script>
</head>
<body>
<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->
	<h1 class="display-4" id="mainCopy">현직자 멘토와 함께 직무경험을 쌓아보세요!</h1>
	<footer class="blockquote-footer" style="text-align:center">아래 원하는 멘토링을 클릭하면 해당 멘토링 상세 정보 확인이 가능합니다.</footer>
	<!-- 멘토링 리스트 출력 -->
	<br>
	<div align="center">
		분야: <select id = "mentoring_option">
			<option value="IT">IT</option>
			<option value="직무">직무</option>
			<option value="회사생활">회사생활</option>
			<option value="이직">이직</option>
			<option value="면접">면접</option>
			<option value="자소서">자소서</option>
			<option value="스펙">스펙</option>
			<option value="진로">진로</option>
		</select>
	</div>
	<form id="dateF" name="dateF">
	<div class="row row-space">
		<div class="col-4">
			<div class="input-group" id="mtStartDate">
				<label class="label">멘토링 시작일</label> <input class="input--style-1" type="date" name="mentoring_begin_date" placeholder="mm/dd/yyyy" id="mentoring_begin_date" required="">
			</div>
		</div>
		<div class="col-4">
			<div class="input-group" id="mtEndDate">
				<label class="label">멘토링 종료일</label> <input class="input--style-1" type="date" name="mentoring_end_date" placeholder="mm/dd/yyyy" id="mentoring_end_date" required="">
			</div>
		</div>
	</div>
	</form>
	<div class="form-group">
		<div class="col-2"></div>
		<i class="fas fa-search fa-2x" style="color:#FFA500" id="mentoringDateBtn"></i>	
	</div>
	
	
	<div class="content-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<div class="section">
						<div id="list-type" class="proerty-th-list">
							<div class="col-md-4 p0">
							<c:forEach var="mentoring" items="${list }">
							<form id="frm" name="frm" action="getSearchMentoringChanGon">
							<input type="hidden" id="mentor_id" name="mentor_id" value="${mentoring.mentor_id }">
							<input type="hidden" id="mentoring_number" name="mentoring_number" value="${mentoring.mentoring_number }">
							<input type="hidden" id="mentoring_kind" name="mentoring_kind" value="${mentoring.mentoring_kind }">
							<input type="hidden" id="mentoring_begin_date" name="mentoring_begin_date" value="${mentoring.mentoring_begin_date }">
							<input type="hidden" id="mentoring_end_date" name="mentoring_end_date" value="${mentoring.mentoring_end_date }">
								<div class="box-two proerty-item">
									<div class="item-thumb">
									
										<img src="image/${mentoring.mentoring_photo }">
									</div>
									<div class="item-entry overflow">
										<h5>	
											<a href="property-1.html">${mentoring.mentoring_name }</a>
										</h5>
										<div class="dot-hr"></div>
										<span class="pull-left"><b style="color:#64C03C">${mentoring.mentoring_kind }</b></span> <span
											class="proerty-price pull-right">멘토링 가격: ${mentoring.mentoring_price }원</span>
										<p style="display: none;">${mentoring.mentoring_introduce }</p>
											<div class="dealer-action pull-right">
												<input type="submit" value="상세보기">
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
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" style="background:#FDC600; color:#fff" data-toggle="modal" data-target="#myModal">
                                                </c:if>
                                                <c:if test="${not empty users }">
													<input class="button btn largesearch-btn" value="멘토링 등록하기" type="button" onclick="MentoringRegister()" style="background:#FDC600; color:#fff">
                                                </c:if>
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
	
<!-- TOP버튼 / https://seo6285.tistory.com/189-->
<a style="display:scroll;position:fixed;bottom:20px;right:20px;" href="#" title=”맨 위로">맨 위로<i class="fas fa-arrow-up"></i></a> 
<!-- TOP버튼 -->
      	
		<!-- 모달 팝업 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">Alert</h4>
			      </div>
			      <div class="modal-body">
					로그인 또는 회원가입이 필요한 항목입니다.
			      </div>
			      <div class="modal-footer">
			      	<button type="button" class="btn btn-primary" style="display:none">로그인</button> <!-- 레이아웃 정렬용 태그(사용X) -->
					<button type="button" class="btn btn-primary" onclick="location.href='login'">로그인</button>
					<button type="button" class="btn btn-primary" onclick="location.href='insertUsers'">회원가입</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			      </div>
			    </div>
			  </div>
			</div>
      	<!-- 모달 팝업 -->     	
      	
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