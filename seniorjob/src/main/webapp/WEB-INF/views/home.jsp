<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<jsp:include page="topHeader.jsp" />
<!-- topHeader -->

        <div class="slider-area" style="background-color: #FFFFFF; padding-bottom: 55px;">
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>어떤 멘토를 찾고 싶으세요?</h2>
                        <div class="search-form wow pulse" data-wow-delay="0.8s">

                            <form action="getMentorList" class=" form-inline" method="post">

                                
                                 <h3>지역</h3>
                                 <div class="col-md-12">
                                    <div class="col-md-4">                                     
                                        <select id="basic" class="selectpicker show-tick form-control" name="mentoring_location">
                                        <option value="">선택</option>
										<option >서울특별시</option>
										<option >부산광역시</option>
										<option >대구광역시</option>
										<option >인천광역시</option>
										<option >광주광역시</option>
										<option >대전광역시</option>
										<option >울산광역시</option>
										<option >세종특별자치시</option>
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
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 영업
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 인사
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 총무
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 마케팅
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 광고
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 회계
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 재무
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 해외
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 유통
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                     </div>   
                                     <div class="search-row">    
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 무역
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 전략
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 기획
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 생산
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 공기업
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> IT
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 디자인
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 교육
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="mentor_duty"> 컨설팅
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        <br>
                                        <hr>
                                    </div>                             
                                </div>                    
								<button type="submit" class="btn btn-primary" name="getMentorList" id="getMentorList">검색</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
	<!-- 키워드로 검색 -->
	<form action="getKeywordSearch" class=" form-inline" method="post">
	<div class="keyword-search" style="background-color: #FFFFFF; padding-top:100px;">
	<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
	<div class="search-form wow pulse" data-wow-delay="0.8s">
	<h3>키워드로 검색</h3>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Key word" name="searchKeyword">
			<input type="submit" value="검색"/>
		</div>
	</div>
	</div>
	</div>
	</form>

	<!-- 연령별 검색 -->
	<form action="getAgeSearch" class=" form-inline" method="post">
        <div class="boy-sale-area">
            <div class="container">
			<div class="row">
                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
                        <div class="asks-first">
                            <div class="pe-7s-users">
                                <span class="fa fa-search"></span>
                            </div>
                            <div class="asks-first-info" name="mentoring_age">
                                <h2>40대 대상자</h2>
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.html"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
                        <div  class="asks-first">
                            <div class="pe-7s-users">
                                <span class="fa fa-usd"></span>
                            </div>
                            <div class="asks-first-info" name="mentoring_age">
                                <h2>50대 대상자</h2>
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.html"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
                        <div  class="asks-first">
                            <div class="pe-7s-users">
                                <span class="fa fa-usd"></span>
                            </div>
                            <div class="asks-first-info" name="mentoring_age">
                                <h2>60대 대상자</h2>
                            </div>
                            <div class="asks-first-arrow">
                                <a href="properties.html"><span class="fa fa-angle-right"></span></a>
                            </div>
                        </div>
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
		

	

	