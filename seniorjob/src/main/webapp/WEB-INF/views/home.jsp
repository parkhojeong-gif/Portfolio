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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

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

<style>
.slider-content{position:absolute}
.form-inline{margin:20px}
#mentorSearchBtn{cursor:pointer}
#searchKeywordTitle{
	position: relative;
    right: 60px;
}
#chkBoxTitle{
	position:relative;
	right: 115px;
    top: 110px;
}
#chkBox{
	position:relative;
	left: 220px;
}
#dateChkTitle{
	position:relative;
	right: 930px;
    top: 125px;
}
#mtStartDate{
	position:relative;
	left: 50px;
}
#mtEndDate{
	position:relative;
	right:110px;
}
#mentorSearchBtn{
	cursor:pointer;
}
#mentorSearchChkBoxBtn{
	cursor:pointer;
	position:relative;
	top: 100px;
	right: 50px;
	z-index:1; /* 배치 순서 결정 https://aboooks.tistory.com/83 */
}
#mentoringDateBtn{
	cursor:pointer;
	position:relative;
	top: 300px;
	right: 100px;
	z-index:1; /* 배치 순서 결정 https://aboooks.tistory.com/83 */
}
</style>
</head>
<body>
	<!-- topHeader -->
	<jsp:include page="topHeader.jsp" />
	<!-- topHeader -->
	
	<!-- 검색 -->
        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">
                    <div class="item"><img src="resources/assets/img/slide1/slider-image-1.jpg" alt="Mirror Edge"></div> 
                    <div class="item"><img src="resources/assets/img/slide1/slider-image-2.jpg" alt="The Last of us"></div> 
                    <div class="item"><img src="resources/assets/img/slide1/slider-image-4.jpg" alt="GTA V"></div>   
                </div>
            </div>
            <div class="container slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-12 col-md-offset-1 col-sm-12">
                        <div class="search-form wow pulse" data-wow-delay="0.8s">
                            <form class=" form-inline" name="searchFrm">
                            
                            <div class="form-group" >
								<div class="row row-space">
									<div class="col-2"></div>
										<b id="searchKeywordTitle">키워드 검색</b>	
									</div>
							</div>
							
							<div class="form-group" >
								<div class="row row-space">
									<div class="col-2"></div>
										<b id="chkBoxTitle">직무 검색</b>	
									</div>
							</div>
							
                            <input id="searchKeyword" name="searchKeyword" class="form-control" type="text" placeholder="멘토링 검색: 원하는 직무, 지역 또는 연령을 입력하세요.">
							<div class="form-group">
								<div class="row row-space">
									<div class="col-2"></div>
									<i class="fas fa-search fa-2x" style="color:#FFA500" id="mentorSearchBtn"></i>	
								</div>
							</div>
							
							<div class="form-group">
								<div class="row row-space">
									<div class="col-2"></div>
									<i class="fas fa-search fa-2x" style="color:#FFA500" id="mentorSearchChkBoxBtn"></i>	
								</div>
							</div>
							
							<div class="form-group">
								<div class="row row-space">
									<div class="col-2"></div>
									<i class="fas fa-search fa-2x" style="color:#FFA500" id="mentoringDateBtn"></i>	
								</div>
							</div>
							
							<div class="search-row" id="chkBox" name="chkBox" align="left">  
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="IT"> IT
                                                </label>
                                            </div>
                                        <!-- End of  --> 
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="영업"> 영업
                                                </label>
                                            </div>
                                        <!-- End of  --> 
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="인사"> 인사
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="총무"> 총무
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="마케팅"> 마케팅
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="광고"> 광고
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="회계"> 회계
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="재무"> 재무
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="해외"> 해외
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="유통"> 유통
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                      </div>
                                     <div class="search-row" id="chkBox" name="chkBox" align="left">
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="무역"> 무역
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="전략"> 전략
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="기획"> 기획
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="생산"> 생산
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="공기업"> 공기업
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="디자인"> 디자인
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="교육"> 교육
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                        <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_dutyArr" value="컨설팅"> 컨설팅
                                                </label>
                                            </div>
                                        <!-- End of  -->
                                    </div>
							</form>
							<div class="form-group" >
								<div class="row row-space">
									<div class="col-2"></div>
										<b id="dateChkTitle">멘토링 날짜</b>	
									</div>
							</div>
							<hr>
							
							<form class=" form-inline" method="POST" action="getMentoringList" id="searchDateFrm" onsubmit="return checkDateNull()">
							
							
							
							<div class="row row-space">
								<div class="col-4">
									<div class="input-group" id="mtStartDate">
										<label class="label">멘토링 시작일</label> <input class="input--style-1" type="date" name="mentoring_begin_date" placeholder="mm/dd/yyyy" id="mentoring_begin_date" required>
									</div>
								</div>
								<div class="col-4">
									<div class="input-group" id="mtEndDate">
										<label class="label">멘토링 종료일</label> <input class="input--style-1" type="date" name="mentoring_end_date" placeholder="mm/dd/yyyy" id="mentoring_end_date" required>
									</div>
								</div>
							</div>
						</form>
                        </div>
				</div>
                </div>
            </div>
        </div>
      <!-- End of 검색 -->
      
      <!-- 모달 팝업 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">Alert</h4>
			      </div>
			      <div class="modal-body">
					검색 키워드를 입력하세요.
			      </div>
			      <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			      </div>
			    </div>
			  </div>
			</div>
      	<!-- 모달 팝업 -->

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
	
	$('#mentorSearchBtn').click(function(){
		// 멘토 상세검색 값 체크 및 검색 구현
			var keywordChk = $("[name='searchKeyword']").val();
			if(keywordChk==""){
				$('#myModal').modal().show();
				return false;
			}else if(keywordChk.indexOf('서울') >= 0 || keywordChk.indexOf('부산') >= 0|| keywordChk.indexOf('대구') >= 0 || keywordChk.indexOf('인천') >= 0 || keywordChk.indexOf('광주') >= 0 || keywordChk.indexOf('대전') >= 0 || keywordChk.indexOf('울산') >= 0 || keywordChk.indexOf('세종') >= 0){
				alert(keywordChk + " 지역 멘토를 검색합니다.");
				searchFrm.action = "getKeywordSearch";
				searchFrm.submit();
			}else if(keywordChk.indexOf('40') >= 0 || keywordChk.indexOf('50') >= 0 || keywordChk.indexOf('60') >= 0){
				alert(keywordChk + "대 멘토링 멘토를 검색합니다.");
				searchFrm.action = "getKeywordSearch";
				searchFrm.submit();
			}else{
				alert(keywordChk + " 직무 멘토를 검색합니다.");
				searchFrm.action = "getKeywordSearch";
				searchFrm.submit();
			}
	});
	
	// 직무 검색
	$('#mentorSearchChkBoxBtn').click(function(){
		var chkDutyArr = new Array();
		$("input:checkbox[name='mentor_dutyArr']:checked").each(function(){
			chkDutyArr.push(this.value);
		});
		if(chkDutyArr.length < 1){
			alert("직무를 하나 이상 선택하세요.");
		}else{
			searchFrm.action = "getSearchMentorDuty";
			searchFrm.submit();
		}
	});
	
	// 멘토링 날짜 검색
	$('#mentoringDateBtn').click(function(){
		var s_date = $('#mentoring_begin_date').val();
		var e_date = $('#mentoring_end_date').val();
		if(s_date==""){
			alert("시작일을 선택해주세요.");
			return false;
		}else if(e_date==""){
			alert("종료일을 선택해주세요.");
			return false;
			
		}else{
			searchDateFrm.action = "getMentoringList";
			searchDateFrm.submit();
		}
	});
	
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
	
</body>	
</html>