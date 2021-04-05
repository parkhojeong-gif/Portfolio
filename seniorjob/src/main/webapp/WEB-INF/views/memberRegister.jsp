<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>          
<!DOCTYPE html>
<html class="no-js"> <!--<![endif]-->
 <jsp:include page="topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>    
<script>
function btnId(){
	//입력한 아이디 값이 없을 경우
	if($("#id").val() == "" ){
		alert("아이디를 입력하시오.")
		return;
	}
	
	//var _data = {"id" : $("#id").val()}
	//아이디 중복체크 ajax
	$.ajax({
		url : "idCheck",
		type : "POST",
		dataType : "json",
		data : {"id" : $("#id").val()},
		success : function(data){
			console.log(data);
			if(data != 0) {
				alert("중복된 아이디입니다.");	
			}else{
				$("#idCheck").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		},error:function(request,status,error){console.log(request +' / '+ status+ ' / '+ error);}
	})
}


	function btnEmail(){
		//입력한 이메일 값이 없을 경우
		if($("#email").val() == "" ){
			alert("이메일을 입력하시오.")
			return;
		}

		 $.ajax({
			 	type : "POST",
				url : "emailCheck",
				data : {"email" : $("#email").val()},
				success:function(result) {
					if(result != 'fail'){
						alert("중복된 이메일입니다.");
						console.log(result);
					}else{
						$("#emailCheck").attr("value", "Y");
						alert("사용가능한 이메일입니다.");
					}
				}
		 }); 
	}


</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<style>
.error {color: red;}
.register-blocks form input{border-bottom: 3px solid #fbb530;}
.email_success{coler : green; display : none;}
.email_fail{coler : red; display : none;}
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
                                   	<label for="id">아이디</label>
                                    	<form:input path="id" placeholder="아이디를 적어주세요."/><form:errors path="id" cssClass="error"/>
                                		<form:button class="idCheck" style="position:absolute; right: 15px;" type="button" id="idCheck" onclick="btnId();" value="N">중복체크</form:button>
                                   	<div style="display: inline; width : 100%">
                                	</div>
                                </div>
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <form:password path="password" maxlength="10" placeholder="비밀번호를 적어주세요."/><form:errors path="password" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                <label for="address">주소</label>
                                	<form:input path="postcode" id="sample6_postcode" placeholder="우편번호"/><form:errors path="postcode" cssClass="error"/>
									<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
									<form:input path="address" id="sample6_address" placeholder="주소"/><form:errors path="address" cssClass="error"/><br>
									<form:input path="detailaddress" id="sample6_detailAddress" placeholder="상세주소"/><form:errors path="detailaddress" cssClass="error"/><br>
									<form:input path="extraaddress" id="sample6_extraAddress" placeholder="참고항목"/><form:errors path="extraaddress" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="phonenum">전화번호</label>
                                    <form:input path="phonenum" placeholder="전화번호를 적어주세요."/><form:errors path="phonenum" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="name">이름</label>
                                    <form:input path="name" placeholder="이름을 적어주세요."/><form:errors path="name" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="birth">생일</label>
                                    <form:input path="birth" placeholder="생일을 적어주세요."/><form:errors path="birth" cssClass="error"/>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <form:input path="email" class="email" placeholder="이메일을 적어주세요.(ex:USER1@NAVER.COM)" name="email"/><form:errors path="email" cssClass="error"/>
                                    <form:button class="emailCheck" style="position:absolute; right: 15px;" type="button" id="emailCheck" onclick="btnEmail();" value="N">중복체크</form:button>                                   
                                </div>
                                <div class="text-center">
                                      <button type="submit" class="btn btn-default" >가입</button>
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