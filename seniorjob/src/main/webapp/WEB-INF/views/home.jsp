<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡</title>
<script>

	// 키워드 검색 값 체크
	function checkKeywordNull() {
		var str = document.getElementsByName("searchKeyword");
		var keywordForm = document.keywordSearch;
		if (str[0].value == '' || str[0].value == null) { // 값이 NodeList, 배열로 넘어오기 때문에 [0]번쨰로 값을 확실히 지정헤야 한다.
			alert("키워드를 입력하세요.");
			return false;
		} else {
			keywordForm.action = "getKeywordSearch";
			keywordForm.submit();
		}
	}
	
	// 연령 검색 값 체크
	function checkAgeNull() {
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
	}
</script>
</head>
<style>
h3 {
	text-align: left
}
.search-form .form-inline .form-group{width:100px !important;}
</style>
<body>
	<!-- topHeader -->
	<jsp:include page="topHeader.jsp" />
	<!-- topHeader -->

	<div class="slider-area"
		style="background-color: #FFFFFF; padding-bottom: 55px;">
		<div class="slider-content">
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<h2>어떤 멘토를 찾고 싶으세요?</h2>
					<div class="search-form wow pulse" data-wow-delay="0.8s">

						<form action="MentorListForm" class=" form-inline" method="post">

							<h3>지역</h3>
							<div class="col-md-12">
								<div class="col-md-4">
									<select id="basic" class="selectpicker show-tick form-control" name="mentoring_location">
										<option value="">선택</option>
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

							<!-- 직무 선택 체크박스 -->
							<div class="content-area">
								<h3>직무</h3>

								<br>
								<div class="search-row">
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="영업">
												영업
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="인사">
												인사
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="총무">
												총무
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="마케팅">
												마케팅
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="광고">
												광고
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="회계">
												회계
											</label>
										</div>
									</div>
									<!-- End of  -->
									</div>
									
									<div class="search-row">
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="재무">
												재무
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="해외">
												해외
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="유통">
												유통
											</label>
										</div>
									</div>
									<!-- End of  -->
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="무역">
												무역
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="전략">
												전략
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="기획">
												기획
											</label>
										</div>
									</div>
									<!-- End of  -->
									</div>
									
									<div class="search-row">
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="생산">
												생산
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="공기업">
												공기업
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="IT">
												IT
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="디자인">
												디자인
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="교육">
												교육
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name="mentor_duty" value="컨설팅">
												컨설팅
											</label>
										</div>
									</div>
									<!-- End of  -->
									<br>
									<hr>
								</div>
							</div>
							<button type="submit" class="btn btn-primary"
								name="getMentorList" id="getMentorList">검색</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 키워드로 검색 -->
	<form onsubmit="return checkKeywordNull()" class=" form-inline"
		name="keywordSearch" method="post">
		<div class="keyword-search"
			style="background-color: #FFFFFF; padding-top: 100px;">
			<div
				class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
				<div class="search-form wow pulse" data-wow-delay="0.8s">
					<h3>키워드로 검색</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Key word"
							name="searchKeyword"> <input type="submit" value="검색" />
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- 연령별 검색 -->
	<form onsubmit="return checkAgeNull()" class=" form-inline"
		name="ageSearchForm" method="post">
		<div class="keyword-search"
			style="background-color: #FFFFFF; padding-top: 100px;">
			<div
				class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
				<div class="search-form wow pulse" data-wow-delay="0.8s">
					<h3>멘토링 연령으로 검색</h3>
					<div class="form-group">
						<input type="radio" class="form-control" placeholder="Key word" name="searchAge" value="40대"> 40대 대상 멘토링 <br> 
						<input type="radio" class="form-control" placeholder="Key word"	name="searchAge" value="50대"> 50대 대상 멘토링 <br> 
						<input type="radio" class="form-control" placeholder="Key word" name="searchAge" value="60대"> 60대 대상 멘토링 <br> 
						<input type="submit" value="검색" />
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- End of 연령별 검색 -->
	<!-- End of search-form-bottom -->

	<!-- 지역별 검색 -->

	<!-- End of 지역별 검색 -->

	<!-- Footer area-->
	<jsp:include page="footer.jsp" />
	<!-- Footer area-->