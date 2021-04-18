<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡/멘토</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

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

.modal{ position:absolute; width:100%; height:100%; background: rgba(0,0,0,0.8); top:0; left:0; display:none; }
.modal_content{
  width:400px; height:200px;
  background:#fff; border-radius:10px;
  position:relative; top:50%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px; cursor:pointer;
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
										<c:if test="${not empty mentor.mentor_photo }">
											<img src="image/${mentor.mentor_photo }">
										</c:if>
										<c:if test="${empty mentor.mentor_photo }">
											<img src="resources/assets/img/mentor/photoDefault.jpg">
										</c:if>
										</div>	

										<div class="item-entry overflow">
											<h5 id="mentor_company_name" >${mentor.usersVO.name }<b class="property-info-unit">멘토</b></h5>
											<div class="dot-hr"></div>
											<span class="pull-left"><b id="mentoring_kind" ><b class="property-info-unit">멘토링 종류:</b> ${mentor.mentoring_kind }</b></span>
											<span class="pull-left"><b id="mentoring_location" ><b class="property-info-unit">멘토링 지역:</b> ${mentor.mentoring_location }</b></span>
											<span class="pull-left"><b id="mentoring_age" ><b class="property-info-unit">멘토링 연령:</b> ${mentor.mentoring_age }</b></span>
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
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="loginCheck()" style="background:#FDC600; color:#fff">
                                                </c:if>
                                                <c:if test="${not empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="MentorRegister()" style="background:#FDC600; color:#fff">
                                                </c:if>
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
        <!-- TOP버튼 / https://seo6285.tistory.com/189-->
      	<a style="display:scroll;position:fixed;bottom:20px;right:20px;" href="#" title=”맨 위로">맨 위로<i class="fas fa-arrow-up"></i></a> 
      	<!-- TOP버튼 -->
      	<button id="modal_on">모달창</button>
      	<!-- 모달 테스트 -->
      	<div class="modal"> 
      	<div class="modal_content" title="클릭하면 창이 닫힙니다."> 여기에 모달창 내용을 적어줍니다.<br> 이미지여도 좋고 글이어도 좋습니다. </div>
      	</div>
      	<!-- 모달 테스트 -->

<div id="footerBottom">footer</div>
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
		var offset = $("#sidebar").offset(); // 선택요소 좌표 가져오기
		var topPadding = 300; 
		$(window).scroll(function() {
			if ($(window).scrollTop() > offset.top) { // 윈도우 스크롤바가 sidebar 보다 높이 위치한다면
				$("#sidebar").stop().animate({ // 더이상 따라오지 않고 멈추기
					marginTop: $(window).scrollTop() - offset.top + topPadding
				});
			} else{ // 윈도우 스크롤바가 sidebar 보다 낮게 위치한다면
				$("#sidebar").stop().animate({
					marginTop: 0
				});
			}; 
		});
	});
	
	// 모달 테스트
	$(function(){ 
		$("#modal_on").click(function(){ 
			$(".modal").fadeIn(); 
			}); 
		$(".modal_content").click(function(){
			$(".modal").fadeOut(); }); 
		});

	/* 플로팅 배너 */
</script>