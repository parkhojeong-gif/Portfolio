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
	
	
	<!-- 멘토 검색 -->
	 <!-- <div class="s009">
      <form onsubmit="checkValueNull()" method="post" name="searchFrm">
        <div class="inner-form">
          <div class="basic-search">
            <div class="input-field">
              <input id="search" name="searchKeyword" type="text" value="" placeholder="키워드로 검색   ex)마케팅,경리,경영" />
              <div class="icon-wrap">
                <svg class="svg-inline--fa fa-search fa-w-16" fill="#ccc" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" onclick="checkKeywordNull()">
                  <path d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
                </svg>
              </div>
            </div>
          </div>
          <div class="advance-search">
            <span class="desc">상세검색</span>
            <div class="row">
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="mentor_duty" id="choices-single-defaul">
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
                </div>
              </div>
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="mentoring_location" id="choices-single-defaul">
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
                </div>
              </div>
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="mentoring_age" id="choices-single-defaul">
                    <option value="">연령</option>
                    <option>40대</option>
                    <option>50대</option>
                    <option>60대</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="row third">
              <div class="input-field">
                <div class="result-count">
                  <span></span></div>
                <div class="group-btn">
                  <button class="btn-delete" id="delete">RESET</button>
                  <button type="submit" class="btn-search">검색</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div> -->
    
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
                            <form onsubmit="checkValueNull()" name="searchFrm">
                                <div class="input-group input-group-big">
                                    <label class="label" id="search">키워드 검색</label>
                                    <input class="input--style-1" type="text" name="searchKeyword" value="" placeholder="ex)마케팅,경리,경영">
                                </div>
                                <div class="row row-space">
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
                                <button class="btn-submit m-t-0" type="submit">search</button>
                            </form>
                        </div>
                        <div class="tab-pane" id="tab2">
                            <form method="POST" action="#">
                                
                                
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">멘토링 시작일</label>
                                            <input class="input--style-1" type="text" name="check-in" placeholder="mm/dd/yyyy" id="input-start">
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                            <label class="label">멘토링 종료일</label>
                                            <input class="input--style-1" type="text" name="check-out" placeholder="mm/dd/yyyy" id="input-end">
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
	
	// 멘토링 값 체크
	function checkDateNull(){
		var s_date = $('#s_date').val();
		var e_date = $('#e_date').val();
		if(s_date==""){
			alert("멘토링 시작일 설정해주세요");
			return false;
		}else if(e_date==""){
			alert("멘토링 종료일 설정해주세요");
			return false;
		}else{
			
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