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
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->

        
        
<!-- Footer area-->
<jsp:include page="../footer.jsp" />
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

