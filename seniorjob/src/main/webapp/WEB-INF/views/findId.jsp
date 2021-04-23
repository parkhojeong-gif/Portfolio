<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 아이디 찾기 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	 $(function(){  //controller에 값을 호출 
		$('#findBtn').click(function(){
			$.ajax({
				url : "findIdProc",
				type : "POST",
				data : { 
						name : $("#name").val(),
						email : $("#email").val()
						},
				success : function(response){
					alert("회원님의 아이디는 " + response[0] +"입니다.");
					
			
				}
			})		
		})
	});
 
</script>
<style type="text/css">
.mybtn{
  width:200px;
  height:40px;
  padding:0;
  display:inline; 
  border-radius: 4px; 
  background: #212529;
  color: #fff;
  margin-top: 40px;
  border: solid 2px #212529; 
  transition: all 0.5s ease-in-out 0s;
}
.mybtn:hover .mybtn:focus {
  background: white;
  color: #212529;
  text-decoration: none;
}
</style>
<title>아이디 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4 w3-auto" style="width: 382px; height: 340px;">
			<div class="w3-center w3-large w3-margin-top">
				<h3>아이디 찾기</h3>
			</div>
			
			<div>
				<p>
						<label>이름</label>
						<input class="w3-input" type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
				</p>
				<p>
						<label>이메일</label>
						<input class="w3-input" type="text" id="email" name="email" placeholder="이메일주소를 입력하세요" required>
				</p>
				<p class="w3-center">
					<button type="button" id="findBtn" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">찾기</button>
					<button type="button" onclick="window.close();" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">닫기</button>
				</p>
			</div>
			
		</div>
	</div>
</body>
</html>