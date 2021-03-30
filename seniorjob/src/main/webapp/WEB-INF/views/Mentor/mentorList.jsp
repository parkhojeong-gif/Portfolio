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
	
</style>
<body>
홈
<a href="mypage">마이페이지</a>
<a href="resumeInsert">이력서 등록 폼</a>
<a href="pwNotFound">비밀번호찾을수없다</a>


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
                                                    <input type="checkbox"> 마케팅/MD
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 광고/홍보
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Swimming Pool(1190)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 2 Stories(4600)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Emergency Exit(200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Laundry Room(10073)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Jog Path(1503)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 26' Ceilings(1200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
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
                                                    <input type="checkbox"> 마케팅/MD
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 광고/홍보
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Swimming Pool(1190)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 2 Stories(4600)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Emergency Exit(200)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Laundry Room(10073)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> Jog Path(1503)
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="col-sm-3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 26' Ceilings(1200)
                                                </label>
                                            </div>
                                        </div>
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
                    

                <!-- 리스트 상단 상세 검색 Bar -->
                <h4>체크박스 클릭하면 자동으로 Sorting 작업 => 하단에 검색 결과 출력</h4>
                
                    <div class="col-md-9 padding-top-40 properties-page">
                        <div class="section clear"> 
                            <div class="col-xs-10 page-subheader sorting pl0">
                                <ul class="sort-by-list">
                                    <li class="active">
                                        <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                            Property Date <i class="fa fa-sort-amount-asc"></i>					
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                            Property Price <i class="fa fa-sort-numeric-desc"></i>						
                                        </a>
                                    </li>
                                </ul><!--/ .sort-by-list-->
                                <div class="items-per-page">
                                    <label for="items_per_page"><b>Property per page :</b></label>
                                    <div class="sel">
                                        <select id="items_per_page" name="per_page">
											<option value="최신순">최신순</option>
											<option value="답변순">답변순</option>
											<option value="인기순">인기순</option>
									</select>
                                    </div><!--/ .sel-->
                                </div><!--/ .items-per-page-->
                            </div>

                            <div class="col-xs-2 layout-switcher">
                                <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                                <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                            </div><!--/ .layout-switcher-->
                        </div>

                        <div class="section clear"> 
                            <div id="list-type" class="proerty-th">
                            

                              <c:forEach var="mentor" items="${list }">
								<div class="col-sm-6 col-md-4 p0">
									<div class="box-two proerty-item">
										<div class="item-thumb">
											<a href="property-1.html"><img src="../resources/assets/img/mentor/photoDefault.png"></a>
										</div>

										<div class="item-entry overflow">
											<h5>
												<a href="getMentorInfo"></a>
											</h5>
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
                        
                        <!-- 페이징 -->
                        <div class="section">
                            <div class="pull-right">
                                <div class="pagination">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- 페이징 -->
                    </div> 
                    
                    <!-- 플로팅 배너 -->
                    <div class="col-md-3 pl0 padding-top-40" id="">
                        <div class="blog-asside-right pl0">
                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">멘토등록</h3>
                                </div>
                                <div class="panel-body search-widget">
                                    <form action="" class=" form-inline"> 
                                    
                                   		<fieldset >
                                            <div class="row">
                                                <div class="col-xs-12">  
                                                    <a href="MentorRegister"><img src="../resources/assets/img/mentor/mentoring.jpg"></a>
                                                </div>  
                                            </div>
                                        </fieldset>

                                        <fieldset >
                                            <div class="row">
                                                <div class="col-xs-12">  
                                                    <input class="button btn largesearch-btn" value="멘토 등록하기" type="button" onclick="location.href='MentorRegister'">
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

<!-- 플로팅 배너(사용X) -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script>
	
		$(function(){
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
		});
</script>