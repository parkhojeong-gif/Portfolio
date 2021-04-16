<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡</title>
<link href="https://fonts.googleapis.com/css?family=Lato:400,600,700" rel="stylesheet" />
<link href="resources/css/main.css" rel="stylesheet" />

<!-- Icons font CSS-->
    <link href="resources/mainSearchBar/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="resources/mainSearchBar/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Vendor CSS-->
    <link href="resources/mainSearchBar/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="resources/mainSearchBar/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <!-- Main CSS-->
    <link href="resources/mainSearchBar/css/main.css" rel="stylesheet" media="all">

</head>
<body>
	<!-- topHeader -->
	<jsp:include page="topHeader.jsp" />
	<!-- topHeader -->
    
    <!-- 멘토링 검색 -->
		<div class="page-wrapper bg-img-1 p-t-200 p-b-120">
        <div class="wrapper wrapper--w900">
            <div class="card card-4">
                <div class="card-body">
                    <ul class="tab-list">
                        <li class="tab-list__item active">
                            <a class="tab-list__link" href="#tab1" data-toggle="tab">멘토</a>
                        </li>
                        <li class="tab-list__item">
                            <a class="tab-list__link" href="#tab2" data-toggle="tab">멘토링</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab1">
                            <form onsubmit="return checkValueNull()" name="searchFrm">
                                <div class="input-group input-group-big">
                                    <label class="label" id="search">키워드 검색(직무/지역/연령)</label>
                                    <input class="input--style-1" type="text" name="searchKeyword" value="" placeholder="ex)마케팅,영업,IT">
                                </div>
<!--                                 <div class="row row-space">
                                    <div class="col-3">
                                        <div class="input-group">
                                            <label class="label">직무</label>
                                            <div class="rs-select2 js-select-simple select--no-search">
                                                <select name="mentor_duty">
                                                    <option value="">직무</option>
								                    <option>IT</option>
								                    <option>영업</option>
								                    <option>인사</option>
								                    <option>총무</option>
								                    <option>마케팅</option>
								                    <option>광고</option>
								                    <option>회계</option>
								                    <option>재무</option>
								                    <option>해외</option>
								                    <option>유통</option>
								                    <option>무역</option>
								                    <option>전략</option>
								                    <option>기획</option>
								                    <option>생산</option>
								                    <option>공기업</option>
								                    <option>디자인</option>
								                    <option>교육</option>
								                    <option>컨설팅</option>
                                                </select>
                                                <div class="select-dropdown"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="input-group">
                                            <label class="label">지역</label>
                                            <div class="rs-select2 js-select-simple select--no-search">
                                                <select name="mentoring_location">
                                                     <option value="">지역</option>
													<option>서울특별시</option>
													<option>부산광역시</option>
													<option>대구광역시</option>
													<option>인천광역시</option>
													<option>광주광역시</option>
													<option>대전광역시</option>
													<option>울산광역시</option>
													<option>세종특별자치시</option>
                                                </select>
                                                <div class="select-dropdown"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="input-group">
                                            <label class="label">연령:</label>
                                            <div class="rs-select2 js-select-simple select--no-search">
                                                <select name="mentoring_age">
                                                    <option value="">연령</option>
								                    <option>40대</option>
								                    <option>50대</option>
								                    <option>60대</option>
                                                </select>
                                                <div class="select-dropdown"></div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
 -->                                <button class="btn-submit m-t-0" type="submit">search</button>
                            </form>
                        </div>
                        <div class="tab-pane" id="tab2">
                            <form method="POST" action="getMentoringList" onsubmit="return checkDateNull()">
                                
                                
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">멘토링 시작일</label>
                                            <input class="input--style-1" type="date" name="mentoring_begin_date" placeholder="mm/dd/yyyy" id="mentoring_begin_date" required>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">멘토링 종료일</label>
                                            <input class="input--style-1" type="date" name="mentoring_end_date" placeholder="mm/dd/yyyy" id="mentoring_end_date" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row row-space">
                                    <div class="col-2">
                                    </div>
                                        <button class="btn-submit m-t-0" type="submit">search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- End of 멘토링 검색 -->

<script src="resources/js/extention/choices.js"></script>
<script>
	
	// 멘토 상세검색 값 체크 및 검색 구현
	function checkValueNull(){
		var keywordChk = $("[name='searchKeyword']").val();
		var dutyChk = $("[name='mentor_duty']").val();
		var locationChk = $("[name='mentoring_location']").val();
		var ageChk = $("[name='mentoring_age']").val();
		if(keywordChk=="" && dutyChk=="" && locationChk=="" && ageChk==""){
			alert("검색 조건을 하나 또는 여러개 선택하세요");
			return false;
		}else if(keywordChk != null){
			searchFrm.action = "getKeywordSearch";
			searchFrm.submit();
		}else{
			searchFrm.action = "getMentorList";
			searchFrm.submit();
		}
	}
	
	// 멘토링 날짜 검색 유효성 체크
	function checkDateNull(){
		var s_date = $('#s_date').val();
		var e_date = $('#e_date').val();
		var s_dateArr = s_date.split("-");
		var e_dateArr = e_date.split("-");
		var startDate = new Date(s_dateArr[0], s_dateArr[1], s_dateArr[2]);
		var endDate = new Date(e_dateArr[0], e_dateArr[1], e_dateArr[2]);
		var today = new Date().getFullYear() + _pad(new String(new Date().getMonth() + 1), 2) + _pad(new String(new Date().getDate()), 2);
		
		if(startDate > endDate){
			alert("날짜 설정이 잘못되었습니다");
			return false;
		}else if(startDate < today){
			alert("과거 날짜를 시작일로 설정 불가능");
			return false;
		}else if(endDate < e_date){
			alert("과거 날짜를 종료일로 설정 불가능");
			return false;
		}
	}
	
	// 키워드 검색 값 체크
	/* function checkKeywordNull() {
		var str = document.getElementsByName("searchKeyword");
		var searchFrm = document.searchFrm;
		if (str[0].value == '' || str[0].value == null) { // 값이 NodeList, 배열로 넘어오기 때문에 [0]번쨰로 값을 확실히 지정헤야 한다.
			alert("키워드를 입력하세요.");
			return false;
		}else {
			searchDateFrm.action = "getKeywordSearch";
			searchDateFrm.submit();
		}
	} */
	
	// 연령 검색 값 체크
	/* function checkAgeNull() {
		var chk_radio = document.getElementsByName("searchAge");
		var ageForm = document.ageSearchForm;
		
		for (var i=0; i < chk_radio.length; i++) {
			if(chk_radio[i].checked.length<1) { // 해당 인덱스에 체크된 값의 길이가 0일 때 = 체크되지 않았을 때
				return false;
			}
			else if(chk_radio[0].checked==false && chk_radio[1].checked==false && chk_radio[2].checked==false){ // 모든 인덱스에 체크된 값이 없을 때
				alert("연령을 선택하세요");
				return false;
			}else{
				ageForm.action = "getAgeSearch";
				ageForm.submit();
				return true;
			}
		}
	} */
	
</script>

	 <!-- Jquery JS-->
    <script src="resources/mainSearchBar/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="resources/mainSearchBar/vendor/select2/select2.min.js"></script>
    <script src="resources/mainSearchBar/vendor/jquery-validate/jquery.validate.min.js"></script>
    <script src="resources/mainSearchBar/vendor/bootstrap-wizard/bootstrap.min.js"></script>
    <script src="resources/mainSearchBar/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="resources/mainSearchBar/vendor/datepicker/moment.min.js"></script>
    <script src="resources/mainSearchBar/vendor/datepicker/daterangepicker.js"></script>
    <!-- Main JS-->
    <script src="resources/mainSearchBar/js/global.js"></script>

	<script src="resources/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="resources/assets/js/jquery-1.10.2.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/bootstrap-select.min.js"></script>
	<script src="resources/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="resources/assets/js/easypiechart.min.js"></script>
	<script src="resources/assets/js/jquery.easypiechart.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/wow.js"></script>
	<script src="resources/assets/js/icheck.min.js"></script>
	<script src="resources/assets/js/price-range.js"></script>
	<script src="resources/assets/js/main.js"></script>