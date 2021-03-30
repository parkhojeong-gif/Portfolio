<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>businessPlanInsert.jsp</title>
<meta name="description" content="company is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="resources/assets/css/normalize.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/fontello.css">
<link
	href="resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="resources/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link href="resources/assets/css/animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="resources/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="resources/assets/css/price-range.css">
<link rel="stylesheet" href="resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/responsive.css">
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->


	<!-- property area -->
	<div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<!-- /.row -->

					
					<form action="insertBusinessPlanA" method="post" name="frm">
					<hr>
					<h2>계획사업의 개요</h2>
					<br>
						<div class="row">

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_a">사업의 배경과 필요성</label>
									<textarea name="business_a" id="business_a" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_b">사업의 목적</label>
									<textarea name="business_b" id="business_b" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_c">사업 기대효과</label>
									<textarea name="business_c" id="business_c" class="form-control"></textarea>
								</div>
							</div>


					<hr>
					<h2>생산제품의 소개</h2>
					<br>
					
					<div class="col-sm-12">
								<div class="form-group">
									<label for="prod_a">제품(서비스)명</label>
									<textarea name="prod_a" id="prod_a" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="prod_b">제품(서비스)소개</label>
									<textarea name="prod_b" id="prod_b" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="prod_c">제품(서비스)차별성</label>
									<textarea name="prod_c" id="prod_c" class="form-control"></textarea>
								</div>
							</div>
							
						</div>
						<!-- /.row -->
						<div class="area_btn col-sm-12 text-center">
				<button type="submit" class="btn btn-primary">작성완료</button>
			</div>
						
					</form>
				</div>
				
				<!-- 생산제품의 소개 -->
				<div class="col-md-8 col-md-offset-2">
					<!-- /.row -->

					
					<form>
						<div class="row">

							

							
						</div>
						<!-- /.row -->
					</form>
				</div>
				
				<!-- 시장현황 및 전망 -->
				<div class="col-md-8 col-md-offset-2">
					<!-- /.row -->

					<hr>
					<h2>시장현황 및 전망</h2>
					<br>
					<form>
						<div class="row">

							<div class="col-sm-12">
								<div class="form-group">
									<label for="market_a">국내외 목표시장</label>
									<textarea name="market_a" id="market_a" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="market_b">국내외 관련기술(제품) 동향</label>
									<textarea name="market_b" id="market_b" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="market_c">경쟁사 현황</label>
									<textarea name="market_c" id="market_c" class="form-control"></textarea>
								</div>
							</div>
							
							<div class="col-sm-12">
								<div class="form-group">
									<label for="market_d">시장창출 가능성</label>
									<textarea name="market_d" id="market_d" class="form-control"></textarea>
								</div>
							</div>

							
						</div>
						<!-- /.row -->
					</form>
				</div>
				
				
				<!-- 판매계획 -->
				<div class="col-md-8 col-md-offset-2">
					<!-- /.row -->

					<hr>
					<h2>판매계획</h2>
					<br>
					<form>
						<div class="row">

							<div class="col-sm-12">
								<div class="form-group">
									<label for="selling_a">제품홍보방법</label>
									<textarea name="selling_a" id="selling_a" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="selling_b">수익창출방안</label>
									<textarea name="selling_b" id="selling_b" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="selling_c">시장성공요인</label>
									<textarea name="selling_c" id="selling_c" class="form-control"></textarea>
								</div>
							</div>

							
						</div>
						<!-- /.row -->
					</form>
				</div>
				
			</div>
		</div>
	</div>

	<!-- 우측 사이드 -->
	<div id="nudge_wrap" style="transform: translateX(42px);">
		<div class="inner">
			<div id="order_list" class="box_change_order">
				<h4 class="title_tip">사업계획서 항목</h4>
				<ul class="list_change">
					<li><a class="link_change" href="##"
						data-order_item="activity">계획사업의 개요<span class="btn_check">추가</span></a></li>
					<li><a class="link_change" href="##" data-order_item="license">생산제품의
							소개<span class="btn_check">추가</span>
					</a></li>
					<li><a class="link_change" href="##" data-order_item="skill">시장현황
							및 전망<span class="btn_check">추가</span>
					</a></li>
					<li><a class="link_change" href="##"
						data-order_item="personal">판매계획
						<span class="btn_check">
						추가
						
						</span></a></li>

				</ul>
			</div>
			<div class="area_btn col-sm-12 text-center">
				<button type="" class="btn btn-primary">미리보기</button>
			</div>
			<div class="area_btn col-sm-12 text-center">
				<button type="" class="btn btn-primary">중간저장</button>
			</div>
			

		</div>
	</div>

	<script src="resources/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="resources/assets/js/jquery-1.10.2.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/bootstrap-select.min.js"></script>
	<script src="resources/assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="resources/assets/js/easypiechart.min.js"></script>
	<script src="resources/assets/js/jquery.easypiechart.min.js"></script>

	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/wow.js"></script>

	<script src="resources/assets/js/icheck.min.js"></script>
	<script src="resources/assets/js/price-range.js"></script>

	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	<script src="resources/assets/js/gmaps.js"></script>
	<script src="resources/assets/js/gmaps.init.js"></script>

	<script src="resources/assets/js/main.js"></script>

</body>
</html>