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

                            <form action="" class=" form-inline">

                                <div class="btn-group">    
                                <h3>지역</h3>                               
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="지역을 선택하세요">

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
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>
                                
                                
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
								<button type="button" name="wholeSearch" id="wholeSearch">전체리스트</button>
								<button type="button" name="detailedSearch" id="detailedSearch">검색</button>
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
        
        <!-- 지역별 검색(구글 지도 api) -->
			<div id="geochart-colors" style="width: 700px; height: 433px;"></div>
		<!-- End of 지역별 검색(구글 지도 api) -->

        <!-- Footer area-->
        <jsp:include page="footer.jsp" />
		<!-- Footer area-->
		

	<!-- 지역별 검색 구현 자바 스크립트 -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {
			'packages' : [ 'geochart' ],
			// Note: you will need to get a mapsApiKey for your project.
			// See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
			'mapsApiKey' : 'AIzaSyAbScl3M1kehlYP67hrvA3B0i0T-tj5mZ4' // Google Cloud Platform에서 발급된 API키
		});
		google.charts.setOnLoadCallback(drawRegionsMap);

		function drawRegionsMap() {
			var data = google.visualization.arrayToDataTable([
					[ 'Country', 'Latitude' ], [ 'Korea (Republic of)', 36 ] ]);

			var options = {
				region : 'KR', // 한국 국가 코드
				colorAxis : {
					colors : [ '#00853f', 'black', '#e31b23' ]
				},
				backgroundColor : '#81d4fa',
				datalessRegionColor : '#f8bbd0',
				defaultColor : '#2DB400',
			};

			var chart = new google.visualization.GeoChart(document
					.getElementById('geochart-colors'));
			chart.draw(data, options);
		};
	</script>
	<!-- 지역별 검색 구현 자바 스크립트 -->

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous">
		$("#wholeSearch").on('click',function(){
			$(location).attr('href','wholeSearch');
		});
	</script>
