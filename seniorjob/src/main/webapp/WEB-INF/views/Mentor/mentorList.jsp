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
									</div>
									
									<div class="search-row">
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
					<!-- 멘토 세부검색(최신순/인기순) -->
					
					<!-- 멘토 리스트 출력 -->
					<div class="section clear" id="mtList">
						<div id="list-type" class="proerty-th">

							<c:forEach var="mentor" items="${list }">

								<div class="col-sm-6 col-md-4 p0"
									onclick="location.href='getMentor?mentor_id=${mentor.mentor_id}'">
									<div class="box-two proerty-item">
										<div class="item-thumb">
											<img src="../resources/assets/img/mentor/photoDefault.jpg">
										</div>

										<div class="item-entry overflow">
											<h5>${mentor.mentor_company_name }</h5>
											<br> <a>${mentor.mentor_department_name } </a>
											<div class="dot-hr"></div>
											<span class="pull-left"><b>${mentor.mentoring_kind }</b></span>
										</div>
									</div>
								</div>
							</c:forEach>

						</div>
					</div>
					<!-- 멘토 리스트 출력 -->

					<!-- 페이징 -->
					<div id="paging"></div>
					<%-- <div style="align: center">
						<c:if test="${paging.startPage != 1 }">
							<a
								href="/MentorList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
						</c:if>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
							var="p">
							<c:choose>
								<c:when test="${p == paging.nowPage }">
									<b>${p }</b>
								</c:when>
								<c:when test="${p != paging.nowPage }">
									<a
										href="/MentorList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.endPage != paging.lastPage}">
							<a
								href="/MentorList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
						</c:if>
					</div> --%>
					<!-- 페이징 -->
					
				</div>
				
                    
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
		if(confirm("로그인 또는 회원가입이 필요한 항목입니다.")){
			location.href = "login"; // 로그인 페이지로 이동
		}
	}
	
	// 로그인 상태에서 멘토 등록 클릭 시
	function MentoringRegister(){
		var mentorRegisterForm = document.mentorRegisterForm;
		mentorRegisterForm.action = "MentoringRegister";
		mentorRegisterForm.submit();
	}
	
	// 세부검색(최신순, 인기순)
	/* function optionSelect(obj){
		var param = $('#items_per_page').val();
		$.ajax({
			url: "optionValueChk",
			data: {"optionValue": param},
			dataType: "json",
			success:function(result){
				$('#items_per_page').val(""); // 태그 초기화
				$('#list-type').remove();
				var response = result.list;
				$.each(response, function(i){
					var div1 = $("<div>").attr({id:"list-type", class:"proerty-th"});
					var div2 = $("<div>").attr("class", "col-sm-6 col-md-4 p0", "onclick", "location.href=getMentor?mentor_id=").text(response[i].mentor_id)
										 .append($("<div>")).attr("class", "box-two proerty-item")
										 .append($("<div>")).attr("class", "item-thumb").append($("<img>")).attr("src", "../resources/assets/img/mentor/photoDefault.jpg");
					var div3 = $("<div>").attr("class", "item-entry overflow").append($("<h5>")).text(response[i].mentor_company_name)
																			  .append($("<br>")).append($("<a>")).text(response[i].mentor_department_name)
																			  .append($("<div>")).attr("class", "dot-hr")
																			  .append($("<span>")).attr("class", "pull-left")
																			  .append($("<b>")).text(response[i].mentoring_kind);
					div1.append(div2, div3);
					$('#mtList').append(div1);
				});
				//paging버튼
				$("#paging").empty();
				var totalRecord = result.paging.totalRecord;
				var lastPage = result.paging.lastPage;
				var page = result.paging.page;
				var pageSize = result.paging.pageSize;
				var endPage = result.paging.endPage;
				var startPage = result.paging.startPage;
				if (startPage > 1) {
					$("#paging").append("<a href='#' onclick='MentorList("+ (startPage - 1) + ")'>" + "&laquo;"+ "</a>");
				}
				for (i = startPage; i <= endPage; i++) {
					$("#paging").append("<a href='#' onclick='MentorList(" + (i) + ")'>"+ i + "</a>");
				}
				if (lastPage > endPage) {
					$("#paging").append("<a href='#' onclick='MentorList("+ (endPage + 1) + ")'>" + "&raquo;"+ "</a>");
				} // end of paging
			} // end of success
		}); // end of ajax
	} */
	
</script>