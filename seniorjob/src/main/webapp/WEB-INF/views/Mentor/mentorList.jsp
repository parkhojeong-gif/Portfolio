<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡/멘토</title>
</head>
<style>
	h3{text-align:left}
	#clickMentor{cursor:pointer}
	h1{text-align:center}
	
#sidebar { 
	right: 0;
	padding-top: 110px;
}
#sidebar ul { 
	padding: 10px; 
}
</style>
<body>

<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->
<h1 class="display-4">멘토 리스트</h1>
<div id="listResult"></div>
          <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">   
                <div class="row">
                    
				<div class="col-md-9 padding-top-40 properties-page" id="optionVal">

                <!-- 멘토 세부검색(최신순/인기순) -->
					<div class="section clear">
						<div class="col-xs-10 page-subheader sorting pl0">
							<div class="items-per-page">
								<label for="items_per_page"><b>세부검색 :</b></label>
								<div class="sel">
									<select id="items_per_page" name="per_page" onchange="optionSelect(this)">
										<option value="">선택</option>
										<option value="최신순">최신순</option>
										<option value="인기순">인기순</option>
									</select>
								</div>
								<!--/ .sel-->
							</div>
							<!--/ .items-per-page-->
						</div>
					</div>
					<!-- End of 멘토 세부검색(최신순/인기순) -->
					
					<!-- 멘토 리스트 출력 -->
					<div class="section clear" id="mtList">
						<div id="list-type" class="proerty-th">

							<c:forEach var="mentor" items="${list }">
								<div class="col-sm-6 col-md-4 p0" id="mentor_id" onclick="location.href='getMentor?mentor_id=${mentor.mentor_id}'">
									<div class="box-two proerty-item">
										<div class="item-thumb">
											<img src="image/${mentor.mentor_photo }">
										</div>

										<div class="item-entry overflow">
											<h5 id="mentor_company_name" >직무: ${mentor.mentor_duty }</h5>
											<br> <a id="mentor_department_name">부서: ${mentor.mentor_department_name } </a>
											<div class="dot-hr"></div>
											<span class="pull-left"><b id="mentoring_kind" >멘토링 종류: ${mentor.mentoring_kind }</b></span>
											<span class="pull-left"><b id="mentoring_location" >멘토링 종류: ${mentor.mentoring_location }</b></span>
											<span class="pull-left"><b id="mentoring_age" >멘토링 연령: ${mentor.mentoring_age }</b></span>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<!-- End of 멘토 리스트 출력 -->
					
				</div>
                    <!-- 플로팅 배너 -->
                    <div class="col-md-3 p0 padding-top-40" id="sidebar">
					<div class="blog-asside-right">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">멘토 등록</h3>
							</div>
							<form name="mentorRegisterForm" class="form-inline">
							<div class="panel-body search-widget">
								<input type="hidden" name="id" id="id" value="${users.id }">
								<div class="panel-body search-widget">
									<div class="row">
										<div class="col-xs-12">
												<c:if test="${empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="loginCheck()">
                                                </c:if>
                                                <c:if test="${not empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="MentorRegister()">
                                                </c:if>
											<div class="button btn largesearch-btn" style="cursor: pointer;" onclick="window.scrollTo(0,0);">TOP</div>
										</div>
									</div>
								</div>
								</div>
							</form>
						</div>
					</div>
				</div>
                <!-- End of 플로팅 배너 -->
                </div>           
            </div>
        </div>

<!-- Footer area-->
<jsp:include page="../footer.jsp" />
<!-- Footer area-->
	
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>

	// 로그아웃 상태에서 멘토 등록 클릭 시
	function loginCheck(){
		if(confirm("로그인 또는 회원가입이 필요한 항목입니다.")){
			location.href = "login"; // 로그인 페이지로 이동
		}
	}
	
	// 멘토 등록
	function MentorRegister(){
		var param = $('#id').val();
		var mentorRegisterForm = document.mentorRegisterForm;
		mentorRegisterForm.action = "mentorRegisterCheck?id="+param;
		mentorRegisterForm.submit();
	}
	
	// 멘토링 등록
		function MentoringRegister(){
			var param = $('#id').val();
			var mentorRegisterForm = document.mentorRegisterForm;
			mentorRegisterForm.action = "MentoringRegister?id="+param;
			mentorRegisterForm.submit();
		}
	
	// 세부검색(최신순, 인기순)
	function optionSelect(obj){
		var param = $('#items_per_page').val();
		$.ajax({
			url: "optionValueChk",
			data: {"optionValue": param},
			dataType: "json",
			success:function(result){
				$('#mtList').empty(); // 태그 내부 내용 삭제
				var response = result.list;
				$.each(response, function(i){
				
				var div2 = $("<div>").attr({ id:"list-type",'class':"proerty-th" });
				var div3 = $("<div>").attr({ 'class':"col-sm-6 col-md-4 p0",id:"mentor_id"}).data('id',response[i].mentor_id);
				var div4 = $("<div>").attr("class", "box-two proerty-item");
				var div5 = $("<div>").attr("class","item-thumb").append($("<img>").attr("src","image/"+response[i].mentor_photo));
				var div6 = $("<div>").attr("class","item-entry overflow");
					var h5 = $("<h5>").attr("id","mentor_company_name").text(response[i].mentor_company_name).append($("<br>"));
					var a = $("<a>").attr("id","mentor_department_name").text(response[i].mentor_department_name);
					var div7 = $("<div>").attr("class","dot-hr");
					var span = $("<span>").attr("class","pull-left");
					var b = $("<b>").attr("id","mentoring_kind").text(response[i].mentoring_kind);
					
				div6.append(h5, a, div7, span, b);
				div4.append(div5, div6);
				div3.append(div4);
				div2.append(div3);
				$('#mtList').append(div2);
				});
			} // end of success
		}); // end of ajax
		
		$('#mtList').on('click','#mentor_id',function(){
		var param = $(event.target).closest('#mentor_id').data('id');
		location.href='getMentor?mentor_id='+param;
	});
		
	}
	
	/* 플로팅 배너 */
	$(function() {
		var offset = $("#sidebar").offset();
		var topPadding = 300;
		$(window).scroll(function() {
			if ($(window).scrollTop() > offset.top) {
				$("#sidebar").stop().animate({
					marginTop: $(window).scrollTop() - offset.top + topPadding
				});
			} else {
				$("#sidebar").stop().animate({
					marginTop: 0
				});
			};
		});
	});
	/* 플로팅 배너 */
</script>