<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
 <jsp:include page="topHeader.jsp"></jsp:include>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>    
<script>
$("#btnId").on("click", function(){
	$.ajax({
		url: "",
		data : "id=" =$("[name=id]").val(),	
		dataType : "json",
		success ; function(response){
			if(response.id == true){
				$("#idResult").html("<font color='blue'>사용 가능합니다</font>");
			}else{
				$("#idResult").html("<font color='red'>사용 불가능합니다.</font>");
			} 
		}
	})
});

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
                                    <input type="text" class="form-control" id="id">
                                	<button type="button" id="btnId">중복체크</button>
                                	<span id="idResult"></span>
                                </div>
                                <div class="form-group">
                                    <label for="password">PASSWORD</label>
                                    <input type="password" class="form-control" id="password">
                                </div>
                                <div class="form-group">
                                    <label for="name">ADDRESS</label>
                                    <input type="text" class="form-control" id="address">
                                </div>
                                <div class="form-group">
                                    <label for="name">PHONENUM</label>
                                    <input type="text" class="form-control" id="phonenum">
                                </div>
                                <div class="form-group">
                                    <label for="name">NAME</label>
                                    <input type="text" class="form-control" id="name">
                                </div>
                                <div class="form-group">
                                    <label for="name">BIRTH</label>
                                    <input type="text" class="form-control" id="birth">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="email">
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