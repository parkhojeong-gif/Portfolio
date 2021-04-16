<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Home page</title>
<meta name="description" content="GARO is a real-estate template">
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
<!--summernote  -->

<link rel="stylesheet" href="/css/summernote/summernote-lite.css">
<!--summernote  -->
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<div class="header-connect">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-8  col-xs-12">
					<div class="header-half header-call">
						<p>
							<span><i class="pe-7s-call"></i> +1 234 567 7890</span> <span><i
								class="pe-7s-mail"></i> your@company.com</span>
						</p>
					</div>
				</div>
				<div
					class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
					<div class="header-half header-social">
						<ul class="list-inline">
							<c:choose>
								<c:when test="${users.auth eq 'ADMIN'}">
									<li style="width: 450px; height: 40px">
									<a href="#">${sessionScope.users.id} 관리자</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="managerMain">관리자 페이지</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="logout">로그아웃</a></li>
								</c:when>
								<c:when test="${users.auth eq 'USER'}">
									<li style="width: 300px; height: 40px"><a href="#">${sessionScope.users.id}님
											환영합니다</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="logout">로그아웃</a></li><li></li>
								</c:when>
								<c:when test="${not empty userInfo}">
									<li style="width: 300px; height: 40px"><a href="#">${sessionScope.userInfo.kakaoId}님
											환영합니다</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="logout">로그아웃</a></li>
								</c:when>
								<c:when test="${users.auth eq 'MENTOR'}">
									<li style="width: 300px; height: 40px"><a href="#">${sessionScope.users.id}님
											환영합니다</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="logout">로그아웃</a></li>
								</c:when>
								<c:when test="${users.auth eq null}">
									<li style="width: 250px; height: 40px"><a href="#"></a></li>
								</c:when>
							</c:choose>
						</ul>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End top header -->

	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="getMain"><img
					src="resources/assets/img/logo.png" width="200px" height="70px"
					alt="클릭 시 메인페이지로 이동"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">


				<c:if test="${users.auth eq null and empty userInfo}">
					<div class="button navbar-right">
						<button class="navbar-btn nav-button wow bounceInRight login"
							style="height: 50px; width: 130px"
							onclick="location.href='login'" data-wow-delay="0.45s">로그인</button>
						<button class="navbar-btn nav-button wow fadeInRight"
							style="height: 50px; width: 104px"
							onclick="location.href='insertUsers'" data-wow-delay="0.48s">회원가입</button>
					</div>
				</c:if>
				
				

				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="wow fadeInDown" data-wow-delay="0.3s"
						style="width: 150px; height: 100px"><a class=""
						href="getMentorList" style="text-align: center"><strong><h4>멘토</h4></strong></a></li>
					<li class="wow fadeInDown" data-wow-delay="0.3s"
						style="width: 150px; height: 100px"><a class=""
						href="getMentoringList" style="text-align: center"><strong><h4>멘토링</h4></strong></a></li>
					<li class="wow fadeInDown" data-wow-delay="0.3s"
						style="width: 150px; height: 100px"><a class=""
						href="job?cd=12" style="text-align: center"><strong><h4>정보공유</h4></strong></a></li>
					<li class="wow fadeInDown" data-wow-delay="0.3s"
						style="width: 150px; height: 100px"><a class=""
						href="serviceCenterMain" style="text-align: center"><strong><h4>고객센터</h4></strong></a></li>
					<c:if test="${not empty users }">
						<li class="wow fadeInDown" data-wow-delay="0.3s"
						style="width: 150px; height: 100px"><a
							href="mypageHome"><strong><h4>마이페이지</h4></strong></a></li>
					</c:if>
					<c:if test="${not empty userInfo }">
						<li class="wow fadeInDown" data-wow-delay="0.3s"
						style="width: 150px; height: 100px"><a
							href="mypageHome"><strong><h4>마이페이지</h4></strong></a></li>
					</c:if>
					
					
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->
</body>
</html>