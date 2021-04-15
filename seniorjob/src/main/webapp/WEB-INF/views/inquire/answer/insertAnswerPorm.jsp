<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="../../topHeader.jsp"></jsp:include>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<body>
	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="col-md-12 single-property-content ">
				<div>
					<h5>사이트맵 적는 부분</h5>
				</div>
			</div>
			<div class="row">
				<div
					class="col-md-12 pr-30 padding-top-40 properties-page user-properties"></div>
				<!--왼쪽 -->
				<jsp:include page="../../Service_Center/new_sevice_left.jsp"></jsp:include>
				<!--왼쪽  -->
				<div id="optionVal"
					class="col-md-10 pr-30 padding-top-40 properties-page user-properties">

					<!--질문 폼 뷰  -->
					<div class="col-md-8 single-property-content ">
						<div class="row">
							<h2 class="wow fadeInLeft animated animated"
								style="visibility: visible; animation-name: fadeInLeft; text-align: center;">${list.title }</h2>
							<br>
							<hr>
							<br>
							<div class="col-sm-6">
								<p class="author-category">
									By <a href="#">${list.id }</a>
								</p>
							</div>

							<div class="col-sm-6 right">
								<p class="date-comments">
									<a href="#"><i class="fa fa-calendar-o"></i> <fmt:formatDate
											value="${list.w_date }" pattern="yyyy-MM-dd" /></a> <a href="#"><i
										class="fa fa-check"></i>${list.click }</a>
								</p>
							</div>

							<!-- .property-meta -->
							<br> <br>
							<div class="section">
								<h4 class="s-property-title">${list.category_b }</h4>
								<div class="s-property-content">
									<p>
									<h3>${list.content }</h3>
									</p>
								</div>
							</div>
							<!-- End description area  -->
					<!--작성부분  -->
					<div id="optionVal"
					class="col-md-10 pr-30 padding-top-40 properties-page user-properties">

					<!--작성부분  -->

					<div align="center">
						<h2>답변 등록하기</h2>
					</div>
					<hr>
					<form id="frm" action="insertAnswer" method="post" name="frm">
					<input type="text" id="seq" name="seq" value="${list.seq }">
						<h3>답변 작성</h3>

						<div class="col-sm-12">
							<div class="form-group">
								<label>제목</label> <input type="text" class="form-control"
									id="title" name="title"size=10>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="form-group">
								<label>작성일자</label> <input type="date" class="form-control"
									id='currentDate' name="resume_email" readonly="readonly">
							</div>
						</div>
						
						<div class="col-sm-12">
							<div class="form-group">
								<label>내용</label>
								<textarea id="summernote" name="content"></textarea>
								<script>
									$('#summernote').summernote({
										placeholder : 'Hello stand alone ui',
										tabsize : 2,
										height : 100
									});
								</script>
								<br>
							</div>
						</div>
						<br> <br> <br> <br> <br> <br> <br>
						<div class="col-sm-6 text-right">
							<button class="btn btn-primary" type="submit">
								<i class="fa fa-bars"></i> 등록하기
							</button>
						</div>
						<div class="col-sm-6 text-left">
							<button class="btn btn-primary">
								<i class="fa fa-reply"></i>
								 <a href="#" onclick="return confirm('목록으로 돌아가시겠습니까?');">목록으로</a>
							</button>
						</div>
						<br> <br> <br> <br> <br>
						<br>
						<br>
					</form>




					<!--작성부분  -->
				</div>
					
					
					
					
					
				</div>
				</div>
				</div>
			</div>
		</div>
		<script>
		document.getElementById('currentDate').value = new Date().toISOString()
				.substring(0, 10);

		$(document).ready(function() {
			//여기 아래 부분
			$('#summernote').summernote({
				height : 300, // 에디터 높이
				minHeight : null, // 최소 높이
				maxHeight : null, // 최대 높이
				focus : true, // 에디터 로딩후 포커스를 맞출지 여부
				lang : "ko-KR", // 한글 설정
				placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정

			});
		});
	</script>
		
		
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>