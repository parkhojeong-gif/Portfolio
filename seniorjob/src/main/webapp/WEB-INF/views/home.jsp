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
<a href="mypageHome">마이페이지홈</a>
<a href="resumeInsert">이력서 등록 폼</a>
<a href="pwNotFound">비밀번호찾을수없다</a>
<a href="getSearchBusinessPlanA">test</a>

<!-- topHeader -->
<jsp:include page="topHeader.jsp" />
<!-- topHeader -->

        <div class="slider-area" style="background-color: #FFFFFF; padding-bottom: 55px;">
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>어떤 멘토를 찾고 싶으세요?</h2>
                        <div class="search-form wow pulse" data-wow-delay="0.8s">

                            <form action="" class=" form-inline">

                                
                                 <h3>지역</h3>
                                 <div class="col-md-12">
                                    <div class="col-md-4">                                     
                                        <select id="basic" class="selectpicker show-tick form-control">
                                        <option></option>
										<option name="location">서울특별시</option>
										<option name="location">부산광역시</option>
										<option name="location">대구광역시</option>
										<option name="location">인천광역시</option>
										<option name="location">광주광역시</option>
										<option name="location">대전광역시</option>
										<option name="location">울산광역시</option>
										<option name="location">세종특별자치시</option>

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
                                                    <input type="checkbox"> 영업
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 인사
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 총무
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 마케팅
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 광고
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 회계
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 재무
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 해외
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 유통
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                     </div>   
                                     <div class="search-row">    
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 무역
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 전략
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 기획
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 생산
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 공기업
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> IT
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 디자인
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 교육
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> 컨설팅
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        <br>
                                        <hr>
                                    </div>                             
                                </div>                    
								<button type="button" name="getMentorList" id="getMentorList">전체리스트</button>
								<button type="button" name="getMentor" id="getMentor">검색</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
		<!-- 키워드로 검색 -->
	<div class="keyword-search" style="background-color: #FFFFFF; padding-top:100px;">
	<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
	<div class="search-form wow pulse" data-wow-delay="0.8s">
	<h3>키워드로 검색</h3>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Key word">
		</div>
	</div>
	</div>
	</div>

	<!-- 연령별 검색 -->
        <div class="boy-sale-area">
            <div class="container">
			<div class="row">
                    <div class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
                        <div class="asks-first">
                            <div class="pe-7s-users">
                                <span class="fa fa-search"></span>
                            </div>
                            <div class="asks-first-info">
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
                            <div class="asks-first-info">
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
                            <div class="asks-first-info">
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
        <!-- End of 연령별 검색 -->
        <!-- End of search-form-bottom -->
        
        <!-- 지역별 검색 -->
			
		<!-- End of 지역별 검색 -->

        <!-- Footer area-->
        <jsp:include page="footer.jsp" />
		<!-- Footer area-->
		

	

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script>
	
		$(function(){
			$('#getMentorList').click(function(){
				location.href = 'getMentorList';
			});
			
			var mentoringLocation = $('option[name=location]:selected').val();

			$('#getMentor').click(function() {
				location.href = 'getMentor';
			});
			
		});
		
		
	</script>
