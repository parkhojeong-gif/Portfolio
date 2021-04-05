<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>멘토링 등록 페이지</title>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

#regForm {
  background-color:#e1e1ea;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
#profilePhoto {
  width: 300px;
  height: 150px;
  object-fit: cover;
}
</style>
<body>

<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->

<form id="regForm" action="MentorRegisterProc" method="post" enctype="Multipart/form-data">
  <h1>멘토등록</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab">기본정보
 	<p><input placeholder="${users.id }" oninput="this.className = ''" name="id" value="${users.id }" type="text" readonly></p> <!-- 현재 로그인 세션값 활용하여 출력 -->
    <p><input placeholder="${users.name }" oninput="this.className = ''" readonly></p> <!-- 현재 로그인 세션값 활용하여 출력 -->
    <p><input placeholder="학교명" oninput="this.className = ''" name="mentor_school_name"></p>
    <p><input placeholder="회사명" oninput="this.className = ''" name="mentor_company_name"></p>
    <p><input placeholder="부서" oninput="this.className = ''" name="mentor_department_name"></p>
    <p><input placeholder="직급" oninput="this.className = ''" name="mentor_job_id"></p>
    <p>직무유형 선택</p>
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="영업">영업
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="인사">인사
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="총무">총무
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="마케팅">마케팅
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="광고">광고
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="회계">회계
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="재무">재무
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="해외">해외
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="유통">유통
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="무역">무역
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="전략">전략
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="기획">기획
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="생산">생산
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="공기업">공기업
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="IT">IT
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="디자인">디자인
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="교육">교육
    <input placeholder="직무유형" oninput="this.className = ''" name="mentor_duty" type="radio" value="컨설팅">컨설팅
    
  </div>
  <div class="tab">멘토링 정보
  	<p>대표 멘토링 분야(최대 5개 선택)</p>
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="해외취업">해외취업
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="직무">직무
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="진로">진로
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="스펙">스펙
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="외국어">외국어
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="자소서">자소서
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="면접">면접
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="회사생활">회사생활
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="창업">창업
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="이직">이직
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="공기업">공기업
    <input placeholder="직무유형" oninput="this.className = ''" name="mentoring_kind" type="checkbox" value="기타">기타
    <p />
    <p>멘토링 희망 연령</p>
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_age" type="radio" value="40대">40대
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_age" type="radio" value="50대">50대
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_age" type="radio" value="60대">60대
    <p />
    <p>멘토링 희망 지역</p>
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="서울특별시">서울특별시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="부산광역시">부산광역시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="대구광역시">대구광역시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="인천광역시">인천광역시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="광주광역시">광주광역시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="대전광역시">대전광역시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="울산광역시">울산광역시
    <input placeholder="주요경력" oninput="this.className = ''" name="mentoring_location" type="radio" value="세종특별자치시">세종특별자치시
    <p />
    <p><input placeholder="멘토소개" oninput="this.className = ''" name="mentor_introduce"></p>
    <p><input placeholder="주요경력" oninput="this.className = ''" name="mentor_career" type="text"></p>
  </div>
  <div class="tab">멘토 인증
  	<p />
  	<div>
  	<p>프로필 사진</p>
  		<img src="../resources/assets/img/mentor/photoDefault.jpg" alt="No Image" id="profilePhoto">
    	<input placeholder="프로필사진" class="form-control" type="file" id="property-images" name="mentor_photo_file">
  	</div>
    <p />
    <p>자격증 선택</p>
    <input placeholder="자격증" class="form-control" type="file" id="property-images" name="mentor_license_file">
    <p />
    <p>경력 증명서</p>
    <input placeholder="경력증명서" class="form-control" type="file" id="property-images" name="mentor_career_certificate_file">
  </div>
  
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">이전</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">다음</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</form>

<!-- Footer area-->
<jsp:include page="../footer.jsp" />
<!-- Footer area-->

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "다음";
  } else {
    document.getElementById("prevBtn").innerHTML = "뒤로가기";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // 일정 시간 지난 후 submit
    setTimeout('document.getElementById("regForm").submit()', 2000); // 2초 후 실행
    
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = true; // false로 바꿔야 빈칸 허용하지 않음(작업중이라 임시로 true로 설정)
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}

// 로딩 이미지 출력
//출처: https://kkamikoon.tistory.com/168 [컴퓨터를 다루다]
function LoadingWithMask() {
    //화면의 높이와 너비를 구합니다.
    var maskHeight = $(document).height();
    var maskWidth  = window.document.body.clientWidth;
     
    //화면에 출력할 마스크를 설정해줍니다.
    var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
    var loadingImg ='';
      
    loadingImg +="<div id='loadingImg'>";
    loadingImg +=" <img src='resources/img/common/LoadingImg.gif' style='position: relative; display: block; margin: 0px auto;'/>";
    loadingImg +="</div>"; 
  
    //화면에 레이어 추가
    $('#regForm')
        .append(mask)
        .append(loadingImg)
        
    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채웁니다.
    $('#mask').css({
            'width' : maskWidth
            ,'height': maskHeight
            ,'opacity' :'0.3'
    });
  
    //마스크 표시
    $('#mask').show();  
  
    //로딩중 이미지 표시
    $('#loadingImg').show();
}
</script>



</body>
</html>
