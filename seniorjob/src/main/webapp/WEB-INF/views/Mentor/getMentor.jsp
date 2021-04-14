<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>멘토 상세 페이지</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  margin:auto;
  width: 50%;
  margin-bottom: 16px;
  padding: 0 8px;
}
.column2 {
  margin:auto;
  width: 100%;
  margin-bottom: 16px;
  padding: 0 8px;
  background-color:#f2f2f2;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 30px;
}
.container2{

}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.class{float:left}
input{
        width:100%;
        font-size:20px;
      	background_color:#ffffff;
      	float:left;
      }
h1{text-align:center; padding: 20px}
</style>
</head>
<body>


  <div class="about-section">
  <h1>${list.usersVO.name } 멘토님의 페이지</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<form name="getMentorInfo" method="post">
<input type="hidden" name="mentor_id" id="mentor_id" value="${list.mentor_id }">
<input type="hidden" name="id" id="id" value="${list.id }">
	<div class="row">
		<div class="column">
			<div class="card">
				<div style="width: 200px; height: 150px; display:block">
					<img src="../resources/assets/img/mentor/photoDefault.jpg" style="width: 70%">
				</div>
				<div class="container">
					<p>
						이름: <b>${list.usersVO.name }</b>
					</p>
					<p class="title">
						멘토링 분야: <b>${list.mentoring_kind }</b>
					</p>
					<p>
						회사 이름: <b>${list.mentor_company_name }</b>
					</p>
					<p>
						부서 이름: <b>${list.mentor_department_name }</b>
					</p>
					<div style="border:1px solid black; padding-bottom:20px;">
						<div style="float:left; margin-right:30px;">진행중인 멘토링: </div>
						<div style="float:left; margin-left:30px;">팔로워 숫자: </div>
					</div>
					<p>
					<c:if test="${empty users }">
						<button class="button" type="button" onclick="loginCheck()">팔로우</button>
					</c:if>
					<c:if test="${not empty users }">
						<button class="button" type="button" id="followBtn">팔로우</button>
					</c:if>
					<c:if test="${not empty users }">
						<button class="button" type="button" id="followCancelBtn">팔로우 취소</button>
					</c:if>
					</div>
				</div>
			</div>
		</div>
		</form>
		<p>
		<hr>
		<p>
		
		<!-- 멘토링 정보(멘토링 등록 정보가 있을 때만 출력 -->
	<c:if test="${not empty mentoring.mentoring_number }">
		<form id="mentoringForm" name="mentoringForm" method="post">
		<input type="hidden" id="id" name="id" value="${list.id }">
		<input type="hidden" name="mentor_id" id="mentor_id" value="${list.mentor_id }">
		<input type="hidden" id="mentoring_number" name="mentoring_number" value="${mentoring.mentoring_number }">
		<input type="hidden" id="men_start" name="men_start" value="${mentoring.mentoring_begin_date }">
		<input type="hidden" id="met_end" name="met_end" value="${mentoring.mentoring_end_date }">
		<div class="column2">
			<div class="card">
				<div style="width: 200px; height: 150px; float: left;">
					<img src="../resources/assets/img/mentor/mentoringCourse.jpg" id="mentoringCourse" style="width:100%">
				</div>
				<div class="container">
					<p>
						멘토링 제목: <b>${mentoring.mentoring_name }</b>
					</p>
					<p class="title">
						멘토링 코스 시작일: <b>${mentoring.s_date }</b>
					</p>
					<p class="title">
						멘토링 코스 종료일: <b>${mentoring.e_date }</b>
					</p>
					<p>
						정원: <b>${mentoring.mentoring_limit }</b>
					</p>
					<br>	
						<b>멘토링 코스 내용</b>
					<br>
						<textarea style="margin: 0px; width: 1019px; height: 143px;" readonly>${mentoring.mentoring_content }</textarea>
					<p>
					<div>
						<button class="button" style="float:left; width:200px;" id="BasketBtn" type="button">장바구니 담기</button>
						<button class="button" style="display:inline-block; width:200px; margin-left:10px;" id=PayBtn type="button" onclick="mentoringPayForm()">멘토링 신청하기</button>
					</div>
					</div>
				</div>
			</div>
			</form>
		</c:if>
		<c:if test="${empty mentoring.mentoring_number }">
			<h1 class="display-3">- 등록된 멘토링이 없습니다 -</h1>
		</c:if>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>

	$(function() {
		getBasket(); // 장바구니 담기
		getFollow(); // 멘토팔로우
		deleteFollow(); // 멘토팔로우 취소
	}); // end of function
		
		function getBasket(){ // 장바구니 담기
		
			var formData2 = { "id" : $('#id').val(),
							 "mentoring_number":$('#mentoring_number').val(),
							 "men_start":$('#men_start').val(),
							 "met_end":$('#met_end').val() }
	
			$('#BasketBtn').click(function() {
				$.ajax({
					url : "BasketCheck",
					//type : "post",
					dataType : "json",
					data : formData2,
					success : function(result) {
						if (result == 1) {
							alert("이미 장바구니에 담았습니다.");
						} else {
							alert("장바구니에 담았습니다.");
						}
					}
				});
			});
		} // end of getBasket
		
		/* $('#PayBtn').click(function(){ // 멘토링 신청하기(작성중)
			$.ajax({
				url:
				dataType:
				data:
				success:function(result){
					if(result==0){
						alert("");
					}
				}
			});
		}); */
		
		function getFollow(){ // 멘토 팔로우
			
			var formData1 = { "id" : $('#user_id').val(),"mentor_id":$('#mentor_id').val() }
			
			$('#followBtn').click(function(){
				$.ajax({
					url: "mentorFollowCheck",
					dataType: "json", 
					data: formData1,
					success:function(result){
						if(result == 0){
							alert("팔로우 완료");
						}else{
							alert("이미 팔로우된 멘토입니다");
						}
					}
				});
			});
		} // end of getFollow
		
		function deleteFollow(){ // 멘토 팔로우 취소
			
			var formData1 = { "id" : $('#user_id').val(),"mentor_id":$('#mentor_id').val() }
			
			$('#followCancelBtn').click(function(){
				$.ajax({
					url: "deleteMentorFollow",
					dataType: "json", 
					data: formData1,
					success:function(result){
						if(result == 0){
							alert("팔로우하지 않은 멘토입니다.");
						}else{
							alert("팔로우 취소 완료");
						}
					}
				});
			});
		} // end of deleteFollow
		
	// 로그인 여부 확인
	function loginCheck(){
			if(confirm("로그인 또는 회원가입이 필요한 항목입니다.")){
				location.href = "login"; // 로그인 페이지로 이동
			}
	}
	// 멘토 팔로우
	function mentorFollow() {
		var msg = confirm("멘토를 팔로우 하시겠습니까?");
		if (msg == true) {
			var getMentorInfo = document.getMentorInfo;
			getMentorInfo.action = "MentorFollow";
			getMentorInfo.submit();
		} else if (msg == false) {
			alert("취소");
		}
	}
	
	// 멘토링 신청페이지 이동
	function mentoringPayForm(){ 
			if(confirm("멘토링을 신청하시겠습니까?")){
				location.href = "mentoringPayForm?mentor_id=${list.mentor_id}";
			}
		}
</script>

</body>
</html>