<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="topHeader.jsp"></jsp:include>
<body>

	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<div class="col-md-3 p0 padding-top-40">
					<div class="blog-asside-right pr0">
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">커뮤니티</h3>
							</div>
						</div>
						<hr>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">공지사항</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">멘토링 후기</h3>
							</div>
						</div>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">시니어 타임즈</h3>
							</div>
						</div>
					</div>
				</div>
					
					<h4 class="s-property-title">인기글 목록</h4>
					<hr>
					<div>
						<img src=resources/assets/img/ads.jpg width="60">
<!-- 						<input type="text">ㅇㅇㅇ 멘토를 만나고 인생이 바뀌었습니다. -->
					</div>
					
				<div class="section additional-details">

					<h4 class="s-property-title">멘토링 후기</h4>
					

					<ul>
						<li><span class="col-xs-6 col-sm-4 col-md-1 add-d-title">글번호</span>
							<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">제목</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">작성자</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">작성일자</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">조회수</span>
						</li>
						
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">1</span>
							<span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">ㅇㅇㅇ 멘토를 만나고 인생이 바뀌었습니다.</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">kildong</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">2021/03/03</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">102</span>
						<br>	
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">1</span>
							<span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">ㅇㅇㅇ 멘토를 만나고 인생이 바뀌었습니다.</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">kildong</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">2021/03/03</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">102</span>
						<br>	
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">1</span>
							<span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">ㅇㅇㅇ 멘토를 만나고 인생이 바뀌었습니다.</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">kildong</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">2021/03/03</span>
							<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">102</span>
					</ul>
					<hr>
					<!-- 검색 -->
<!-- 					<div class="col-sm-3" align="right"> -->
<!-- 						<select> -->
<!-- 							<option value="">공지</option> -->
<!-- 							<option value="">이벤트</option> -->
<!-- 						</select> -->
<!-- 						<button type="button">검색하기</button> -->
<!--                         <input type="text" class="form-control" id="find" value="검색할 내용을 입력하세요."> -->
<!--                     </div> -->
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>