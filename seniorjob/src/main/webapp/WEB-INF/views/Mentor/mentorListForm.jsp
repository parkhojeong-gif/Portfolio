<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡</title>
</head>
<style>
	h3{text-align:left}
	#clickMentor{cursor:pointer}
</style>
<body>

<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->

          <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">   
                <div class="row">
                
                <!-- 리스트 상단 상세 검색 Bar -->
                
                <!-- 직무별 멘토찾기  -->
                	<div class="col-md-12 padding-bottom-40 large-search"> 
                        <div class="search-form wow pulse">
                            <form action="" class=" form-inline">
                                <div class="col-md-12 ">
                                    <div class="search-row">   
                                        <div class="">
                                            <label for="price-range">직무별 멘토찾기</label>
                                        </div>
                                        <!-- End of  -->  
                                    </div>

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
                                     
                                    <!-- End of 직무별 멘토찾기  -->
                                     
                                      <!-- 지역별 멘토찾기 -->
                    						<div class="search-row">   
                                        		<div class="col-sm-3">
                                            		<label for="price-range">지역별 멘토찾기</label>
                                        		</div>
                                    		</div>
                                    		
                                    		<div class="search-row">  
                                    		<div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 인사/총무
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="서울특별시">서울특별시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="부산광역시">부산광역시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="대구광역시">대구광역시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="인천광역시">인천광역시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="광주광역시">광주광역시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="울산광역시">울산광역시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentoring_location" value="세종특별자치시"> 세종특별자치시
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        </div>
                                        <!-- End of  --> 
                   						<!-- End of 지역별 멘토찾기 -->
                   						
                   						<!-- 연령별 멘토찾기 -->
                   						
                   						<div class="search-row">   
                                        		<div class="col-sm-3">
                                            		<label for="price-range">연령별 멘토찾기</label>
                                        		</div>
                                    		</div>
                                    	
                                    	<div class="search-row">  
                                    		<div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 40대
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 50대
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 60대
                                                </label>
                                            </div>
                                        </div>
                                       </div>
                                        <!-- End of  -->
                    					<!-- 연령별 멘토찾기 -->
                                </div>  
                            </form>
                        </div>
                    </div>
                    
                	<!-- 멘토 리스트 출력 -->
                    <div class="col-md-9 padding-top-40 properties-page" id="optionVal"></div> 
                    <!-- 멘토 리스트 출력 -->
                    
                    <!-- 플로팅 배너 -->
                    <div class="col-md-3 pl0 padding-top-40" id="">
                        <div class="blog-asside-right pl0">
                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">멘토등록 / 멘토링등록</h3>
                                </div>
                                <div class="panel-body search-widget">
                                    <form name="mentorRegisterForm" class="form-inline">
                                    <input type="hidden" name="id" value="${users.id }">
                                   		<fieldset >
                                            <div class="row">
                                                <div class="col-xs-12">  
                                                    <a href=""><img src="../resources/assets/img/mentor/mentoring.jpg"></a>
                                                </div>  
                                            </div>
                                        </fieldset>

                                        <fieldset >
                                            <div class="row">
                                                <div class="col-xs-12">  
                                                <c:if test="${empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="loginCheck()">
                                                </c:if>
                                                <c:if test="${not empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="location.href='MentorRegister'">
                                                </c:if>
                                                <c:if test="${empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토링 등록하기" type="button" onclick="loginCheck()">
                                                </c:if>
                                                <c:if test="${not empty users }">
                                                    <input class="button btn largesearch-btn" value="멘토링 등록하기" type="button" onclick="MentoringRegister()">
                                                </c:if>
                                                </div>  
                                            </div>
                                        </fieldset>                                     
                                    </form>
                                </div>
                            </div>

                            <!-- End of 플로팅 배너 -->
                        </div>
                    </div>
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
		alert("로그인 또는 회원가입이 필요한 항목입니다.");
		location.href = "login"; // 로그인 페이지로 이동
	}
	
	// 로그인 상태에서 멘토 등록 클릭 시
	function MentoringRegister(){
		var mentorRegisterForm = document.mentorRegisterForm;
		mentorRegisterForm.action = "MentoringRegister";
		mentorRegisterForm.submit();
	}
	
	// 세부검색(최신순, 인기순)
	function optionSelect(obj){
		var param = 'optionValue='+$('#items_per_page').val();
		$('#optionVal').load('MentorList?'+(obj==""?"":param));
	}
	// 함수 실행
	$(function(){
		optionSelect("");
	});
	
	
	/* $(function(){ // 플로팅 배너
			// 기본 위치(top)값
			var floatPosition = parseInt($("#floatMenu").css('top'))

			// scroll 인식
			$(window).scroll(function() {
			  
			    // 현재 스크롤 위치
			    var currentTop = $(window).scrollTop();
			    var bannerTop = currentTop + floatPosition + "px";

			    //이동 애니메이션
			    $("#floatMenu").stop().animate({
			      "top" : bannerTop
			    }, 500);

			}).scroll();
		}); */
</script>