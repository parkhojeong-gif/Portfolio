<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
  padding: 0 16px;
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
        height:100px;
        font-size:20px;
      	background_color:#ffffff;
      	float:left;
      }
</style>
</head>
<body>


  <div class="about-section">
  <h1>${list.usersVO.name } 멘토님의 페이지</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<form name="getMentorInfo">
<input type="hidden" name="id" value="${users.id }">
<input type="hidden" name="mentor_id" value="${list.mentor_id }">
	<div class="row">
		<div class="column">
			<div class="card">
				<div style="width: 200px; height: 150px; float: left;">
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
						<div style="float:left; margin-left:30px;">멘토링 횟수: </div>
						<div style="float:left; margin-left:30px;">팔로워 숫자: </div>
					</div>
					<p>
					<c:if test="${empty users }">
						<button class="button" onclick="loginCheck()">팔로우</button>
					</c:if>
					<c:if test="${not empty users }">
						<button class="button" onclick="mentorFollow()">팔로우</button>
					</c:if>
						<button class="button" onclick="deleteMentorFollow()">팔로우 취소</button>
					</div>
				</div>
			</div>
		</div>
		</form>
		<p>
		<hr>
		<p>
		<div class="column2">
			<div class="card">
				<div style="width: 200px; height: 150px; float: left;">
					<img src="../resources/assets/img/mentor/mentoringCourse.jpg" id="mentoringCourse" style="width: 100%">
				</div>
				<div class="container">
					<p>
						멘토링 제목: <b>${list.usersVO.name }</b>
					</p>
					<p class="title">
						멘토링 코스 시작/종료일: <b>${list.mentoring_kind }</b>
					</p>
					<p>
						정원: <b>${list.mentor_company_name }</b>
					</p>
					<br>
						<b>멘토링 코스 내용</b>
					<br>
						<input type="text">
					<p>
					<div>
						<button class="button" style="float:left; width:200px; height:100px;">장바구니 담기</button>
						<button class="button" style="display:inline-block; width:200px; height:100px; margin-left:10px; ">멘토링 신청하기</button>
					</div>
					</div>
				</div>
			</div>
		
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>

	// 멘토 팔로우
	function mentorFollow(){
		var getMentorInfo = document.getMentorInfo;
		getMentorInfo.action = "MentorFollow";
		getMentorInfo.submit();
	}
	
	// 로그인 여부 확인
	function loginCheck(){
		alert("로그인 또는 회원가입이 필요한 항목입니다.");
		var url = "loginCheckAlert";
		window.open(url, "로그인/회원가입", "width=500, height=450");
	}
	
	// 멘토 팔로우 취소
	function deleteMentorFollow(){
		confirm("멘토 팔로우를 취소하시겠습니까?");
		if(confirm){
			location.href="deleteMentorFollow";
		}
	}
</script>

</body>
</html>