<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>          
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
<style>
.error {color: red;}
</style>    
    <body>
		<div class="content-area error-page" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                   <div class="col-md-6">
                    <div class="box-for overflow">
                        <div class="col-md-12 col-xs-12 register-blocks">
                            <h2>회원가입 : </h2> 
                            <form:form modelAttribute ="usersVO" action="insertUsersProc" method="post" name="UsersVO">
                            <div class="form-group">
                                   	<label for="id">ID</label>
                                    <form:input path="id" border="1"/><form:errors path="id" cssClass="error"/>
                                	<form:button class="idCheck" type="button" id="idCheck" onclick="btnId();" value="N">중복체크</form:button>
                                </div>
                                <div class="form-group">
                                    <label for="password">PASSWORD</label>
                                    <form:input path="password"/><form:errors path="password" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="address">ADDRESS</label>
                                    <form:input path="address"/><form:errors path="address" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="phonenum">PHONENUM</label>
                                    <form:input path="phonenum"/><form:errors path="phonenum" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="name">NAME</label>
                                    <form:input path="name"/><form:errors path="name" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="birth">BIRTH</label>
                                    <form:input path="birth"/><form:errors path="birth" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <form:input path="email"/><form:errors path="email" cssClass="error"/>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-default">승인</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                </div> 
            </div>
        </div> 

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>