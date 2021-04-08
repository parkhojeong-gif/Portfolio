<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->

<jsp:include page="../topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    function DaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                    document.getElementById("extraaddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraaddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailaddress").focus();
            }
        }).open();
    }
    
    function insertCerti() {
    	var url="popCerti";
    	window.open(url,"","width=500,height=600");
    }
    
    function insertCareer() {
    	var url="popCareer";
    	window.open(url,"","width=500,height=600");
    }
</script>
<body>
  

        <!-- property area -->
        <div class="content-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<jsp:include page="../mypage.jsp" />

				<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<div class="section">

                        <form action="updateUsersProc" method="post">
                            <div class="profiel-header">
                                <h3>
                                    <b>개인정보수정</b> <br>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">
                                <div class="col-sm-3 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture">
                                            <img src="assets/img/avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
                                            <input type="file" id="wizard-picture">
                                        </div>
                                        <h6>Choose Picture</h6>
                                    </div>
                                </div>

                                <div class="col-sm-10 padding-top-25">

                                    <div class="form-group">
                                        <label>이름 <small>(read only)</small></label>
                                        <input name="name" id="name" type="text" class="form-control" value="${list.name }" readonly>
                                    </div>
                                    
                                    
                                    <div class="form-group">
                                        <label>우편번호</label>
                                        <input name="postcode" id="postcode" type="text" class="form-control" value="${list.postcode }">
                                         
                                    </div>
                                    <div class="form-group">
                                    <input type="button" onclick="DaumPostcode()" value="우편번호 찾기">
                                    </div>
                                    <div class="form-group">
                                        <label>주소</label>
                                        <input name="address" id="address" type="text" class="form-control" value="${list.address }">
                                    </div>
                                    <div class="form-group">
                                        <label>참고항목</label>
                                        <input name="extraaddress" id="extraaddress" type="text" class="form-control" value="${list.extraaddress }">
                                    </div>
                                    <div class="form-group">
                                        <label>상세주소</label>
                                        <input name="detailaddress" id="detailaddress" type="text" class="form-control" value="${list.detailaddress }">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>전화번호</label>
                                        <input name="phonenum" type="text" class="form-control" value="${list.phonenum }">
                                    </div> 
                                    <div class="form-group">
                                        <label>이메일</label>
                                        <input name="email" type="email" class="form-control"  value="${list.email }">
                                    </div>
                                    <div class="form-group">
                                        <label>생년월일</label>
                                        <input name="birth" type="text" class="form-control"  value="${list.birth }">
                                    </div>
                                    <div class="form-group">
                                        <label>권한 <small>(read only)</small></label>
                                        <input name="auth" type="text" class="form-control"  value="${list.auth }" readonly>
                                    </div>
                                </div>
                                
                                <div class="area_btn col-sm-12 text-center">
									<button type="submit" class="btn btn-primary">수정</button>
								</div> 

                            </div>
                            
                            <div class="profiel-header">
                                
                                <hr>
                                <h3>
                                    <b>자격증 목록</b>
                                </h3>
                            </div>

                            
                    
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' onclick='insertCerti()' value='추가' />
                                
                                
                            </div>
                            <br>
                            <br><br>
                               <div class="profiel-header">
                                
                                <hr>
                                <h3>
                                    <b>경력인증서 목록</b>
                                </h3>
                            </div>
                          
                          
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' onclick='insertCareer()' value='추가' />
                                <br>
                                <br>
                            </div>
                            
                            
                            
                            <br>
                            <br>
                            <div class="col-sm-5 col-sm-offset-1">
                            <br>
                            <br>
                            
                            	<hr>
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='회원탈퇴' />
                            </div>
                    </form>

                </div>
                
                </div>
            </div><!-- end row -->

        </div>
    </div>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>