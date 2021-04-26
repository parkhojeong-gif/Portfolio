<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%> 
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
/* #sidebar ul {  */
/* 	padding: 10px;  */
/* } */
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



/* 이미지 슬라이드 */

/* Slideshow container */
.slideshow-container {
  max-width: 700px;
  max-height: 500px;
  position: relative;
  margin: auto;
}
.slideshow-container .mySlides img {
  height: 300px;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
input#mentoring_kind {
    width: 700px;
}
div#mtStartDate {
    position: absolute;
    left: 400px;
}
#mtEndDate{
	position:absolute;
	right:400px;
}
#search {
    margin: 110px;
}
/* 이미지 슬라이드 */
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->
<c:if test="${not empty list }">
	<h1 class="display-4" id="mainCopy">현직자 멘토와 함께 직무경험을 쌓아보세요!</h1>
	<footer class="blockquote-footer" style="text-align:center">아래 원하는 멘토링을 클릭하면 해당 멘토링 상세 정보 확인이 가능합니다.</footer>
</c:if>
<c:if test="${empty list }">
	<h1 class="display-4" id="mainCopy">찾으시는 멘토링 정보가 없습니다.</h1>
	<button class="btn btn-primary" onclick="history.back(-1)" style="margin:auto; display:block;">뒤로가기</button>
</c:if>
	<!-- 멘토링 리스트 출력 -->
	<br>
	<!-- 페이징 & 검색 -->
	<form method="POST" action="getMentoringList" id="searchDateFrm" name="searchDateFrm">
		<input type="hidden" name="page" value="1">
		<div class="row row-space" align="center">
		<h2>멘토링을 검색하세요!</h2>
		<input id="mentoring_kind" name="mentoring_kind" class="form-control" type="text" placeholder="멘토 직무 검색 ex)마케팅,영업,IT" value="${MentoringVO.mentoring_kind }">
			<div class="col-4">
				<div class="input-group" id="mtStartDate">
					<label class="label">멘토링 시작일</label> 
					<input class="input--style-1" type="date" name="mentoring_begin_date" placeholder="mm/dd/yyyy" id="mentoring_begin_date" value="${MentoringVO.mentoring_begin_date }">
				</div>
			</div>
			<div class="col-4">
				<div class="input-group" id="mtEndDate">
					<label class="label">멘토링 종료일</label> <input class="input--style-1" type="date" name="mentoring_end_date" placeholder="mm/dd/yyyy" id="mentoring_end_date" value="${MentoringVO.mentoring_end_date }">
				</div>
			</div>
			<button id="search">검색</button>
		</div>
	</form>
	<br>	
	<!-- 이미지 슬라이드 -->
	<div class="slideshow-container">
      <!-- Full-width images with number and caption text -->
      <c:forEach items="${random }" var="random">
      <input type="hidden" id="mentor_id" name="mentor_id" value="${random.mentor_id }">
	  <input type="hidden" id="mentoring_number" name="mentoring_number" value="${random.mentoring_number }">
	  <input type="hidden" id="mentoring_kind" name="mentoring_kind" value="${random.mentoring_kind }">
	  <input type="hidden" id="mentoring_begin_date" name="mentoring_begin_date" value="${random.mentoring_begin_date }">
	  <input type="hidden" id="mentoring_end_date" name="mentoring_end_date" value="${random.mentoring_end_date }">
      <div class="mySlides fade">
        <div class="numbertext">1 / 6</div>
        <a href="getSearchMentoringChanGon?mentor_id=${random.mentor_id }&mentoring_number=${random.mentoring_number }&mentoring_kind=${random.mentoring_kind }&mentoring_begin_date=${random.mentoring_begin_date }&mentoring_end_date=${random.mentoring_end_date }">
        <img src="image/${random.mentoring_photo }" style="width:100%"></a>
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 6</div>
        <a href="getSearchMentoringChanGon?mentor_id=${random.mentor_id }&mentoring_number=${random.mentoring_number }&mentoring_kind=${random.mentoring_kind }&mentoring_begin_date=${random.mentoring_begin_date }&mentoring_end_date=${random.mentoring_end_date }">
        <img src="image/${random.mentoring_photo }" style="width:100%"></a>
        <div class="text">ACNE STUDIO</div>
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 6</div>
        <a href="getSearchMentoringChanGon?mentor_id=${random.mentor_id }&mentoring_number=${random.mentoring_number }&mentoring_kind=${random.mentoring_kind }&mentoring_begin_date=${random.mentoring_begin_date }&mentoring_end_date=${random.mentoring_end_date }">
        <img src="image/${random.mentoring_photo }" style="width:100%"></a>
        <div class="text">ACNE STUDIO</div>
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">4 / 6</div>
        <a href="getSearchMentoringChanGon?mentor_id=${random.mentor_id }&mentoring_number=${random.mentoring_number }&mentoring_kind=${random.mentoring_kind }&mentoring_begin_date=${random.mentoring_begin_date }&mentoring_end_date=${random.mentoring_end_date }">
        <img src="image/${random.mentoring_photo }" style="width:100%"></a>
        <div class="text">ACNE STUDIO</div>
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">5 / 6</div>
        <a href="getSearchMentoringChanGon?mentor_id=${random.mentor_id }&mentoring_number=${random.mentoring_number }&mentoring_kind=${random.mentoring_kind }&mentoring_begin_date=${random.mentoring_begin_date }&mentoring_end_date=${random.mentoring_end_date }">
        <img src="image/${random.mentoring_photo }" style="width:100%"></a>
        <div class="text">ACNE STUDIO</div>
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">6 / 6</div>
        <a href="getSearchMentoringChanGon?mentor_id=${random.mentor_id }&mentoring_number=${random.mentoring_number }&mentoring_kind=${random.mentoring_kind }&mentoring_begin_date=${random.mentoring_begin_date }&mentoring_end_date=${random.mentoring_end_date }">
        <img src="image/${random.mentoring_photo }" style="width:100%"></a>
        <div class="text">ACNE STUDIO</div>
        <div class="text">ACNE STUDIO</div>
      </div>
	</c:forEach>
      <!-- Next and previous buttons -->
      <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
      <a class="next" onclick="moveSlides(1)">&#10095;</a>
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
      <span class="dot" onclick="currentSlide(4)"></span>
      <span class="dot" onclick="currentSlide(5)"></span>
    </div>

	<!-- 이미지 슬라이드 -->
	
	
	
	<div class="content-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<div class="section">
						<div id="list-type" class="proerty-th-list">
							<div class="col-md-4 p0">
							<c:forEach var="mentoring" items="${list }">
							<form id="frm" name="frm" action="getSearchMentoringChanGon">
							<div id="mentorList">
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
										<p style="display: none;">${mentoring.mentoring_begin_date }</p>
										<p style="display: none;">${mentoring.mentoring_introduce }</p>
											<div class="dealer-action p	ull-right">
												<input type="submit" value="상세보기">
											</div>
									</div>
								</div>
								</div>
								</form>
							</c:forEach>	
							<my:paging paging="${paging }" jsFunc="goPage" />
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

//송다희 추가
function goPage(p){
	searchMen.page.value = p;
	searchMen.submit();
}

$('#mentorSearchChkBoxBtn').click(function(){
	var chkDutyArr = new Array();
	$("input:checkbox[name='mentor_dutyArr']:checked").each(function(){
		chkDutyArr.push(this.value);
	});
	if(chkDutyArr.length < 1){
		alert("직무를 하나 이상 선택하세요.");
	}else{
		searchFrm.action = "getSearchMentorDuty";
		searchFrm.submit();
	}
});

//페이징
function goPage(p){
	searchDateFrm.page.value = p;
	searchDateFrm.submit();
}




/* 이미지 슬라이드 */
var slideIndex = 0; //slide index

//HTML 로드가 끝난 후 동작
window.onload=function(){
showSlides(slideIndex);

// Auto Move Slide
var sec = 3000;
setInterval(function(){
 slideIndex++;
 showSlides(slideIndex);

}, sec);
}


//Next/previous controls
function moveSlides(n) {
slideIndex = slideIndex + n
showSlides(slideIndex);
}

//Thumbnail image controls
function currentSlide(n) {
slideIndex = n;
showSlides(slideIndex);
}

function showSlides(n) {

var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
var size = slides.length;

if ((n+1) > size) {
 slideIndex = 0; n = 0;
}else if (n < 0) {
 slideIndex = (size-1);
 n = (size-1);
}

for (i = 0; i < slides.length; i++) {
   slides[i].style.display = "none";
}
for (i = 0; i < dots.length; i++) {
   dots[i].className = dots[i].className.replace(" active", "");
}

slides[n].style.display = "block";
dots[n].className += " active";
}

</script>		
</body>
</html>