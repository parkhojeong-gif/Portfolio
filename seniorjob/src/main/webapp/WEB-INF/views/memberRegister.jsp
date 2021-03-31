<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
 <jsp:include page="topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>    
<script>
function btnId(){
	//입력한 아이디 값이 없을 경우
	if($("#id").val() == "" ){
		alert("아이디를 입력하시오.")
		return;
	}
	//아이디 중복체크 ajax
	$.ajax({
		url : "idCheck",
		type : "POST",
		dataType : "json",
		data : {"id" : $("#id").val()},
		success : function(data){
			if(data == 1) {
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idCheck").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		}
	})
}
</script>    
    <body>
		<div class="content-area error-page" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                   <div class="col-md-6">
                    <div class="box-for overflow">
                        <div class="col-md-12 col-xs-12 register-blocks">
                            <h2>회원가입 : </h2> 
                            <form action="insertUsersProc" method="post">
                            <div class="form-group">
                                   	<label for="name">ID</label>
                                    <input type="text" class="form-control" id="id" name="id">
                                	<button class="idCheck" type="button" id="idCheck" onclick="btnId();" value="N">중복체크</button>
                                	<span id="idResult"></span>
                                </div>
                                <div class="form-group">
                                    <label for="password">PASSWORD</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                                <div class="form-group">
                                    <label for="name">ADDRESS</label>
                                    <input type="text" class="form-control" id="address" name="address">
                                </div>
                                <div class="form-group">
                                    <label for="name">PHONENUM</label>
                                    <input type="text" class="form-control" id="phonenum" name="phonenum">
                                </div>
                                <div class="form-group">
                                    <label for="name">NAME</label>
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="name">BIRTH</label>
                                    <input type="text" class="form-control" id="birth" name="birth">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="email" name="email">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default">승인</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </div> 
            </div>
        </div> 

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>