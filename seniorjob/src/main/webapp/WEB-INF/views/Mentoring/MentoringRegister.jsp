<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멘토링 등록 페이지</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<form action="MentoringRegisterProc">
  <div class="container">
    <h1>멘토링 등록</h1>
    <p>모든 빈칸을 채워주세요</p>
    <hr>
    
    <input type="hidden" name="mentor_id" value="${mentorInfo.mentor_id }">

    <label for="name"><b>멘토링 이름</b></label>
    <input type="text" placeholder="멘토링 이름" name="mentoring_name" id="name" required>

    <label for="date"><b>멘토링 시작 날짜</b></label>
    <input type="date" placeholder="Enter Date" name="mentoring_begin_date" id="mentoring_begin_date" required>
    
    <label for="date"><b>멘토링 종료 날짜</b></label>
    <input type="date" placeholder="Enter Date" name="mentoring_end_date" id="mentoring_end_date" required>

    <label for="psw-repeat"><b>정원</b></label>
    <input type="text" placeholder="Repeat Password" name="mentoring_limit" id="psw-repeat" required>
    <hr>

    <label for="psw"><b>내용</b></label>
    <input type="text" placeholder="Enter Password" name="mentoring_content" id="psw" style="height:200px" required>
    
    <label for="psw"><b>멘토링 코스 이미지</b></label>
    <input type="file" placeholder="enter password" name="mentoring_photo" id="psw" required>
    
    <label for="psw"><b>멘토링 금액</b></label>
    <input type="text" placeholder="Enter Password" name="mentoring_price" id="psw" required>
    
    <button type="submit" class="registerbtn">멘토링 등록하기</button>
    <button type="button" class="registerbtn" onclick="MentoringPreview()">미리보기</button>
  </div>
  
  <div class="container signin">
    <p><a href="getMain">Home</a>.</p>
  </div>
</form>

<script>
	function MentoringPreview(){
		alert("Mentoring Preview");
	}
</script>

</body>
</html>