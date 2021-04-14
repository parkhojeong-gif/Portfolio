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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
/* 이력서 토글(누르면 메뉴 나오기)  hide 작동이 안 됨.  */ 
	$(".resumesub").hide();
	$(document).on("click", "#resc", function() {
		$(".resumeMenu .resumesub").slideToggle();
	})
	
/* 사업계획서 토글(누르면 메뉴 나오기) */
	$(".busisub").hide();
	$(document).on("click", "#busic", function(){
		$(".busiMenu .busisub").slideToggle();
	})
/* 멘토링 현황 토글(누르면 메뉴 나오기) */	
	$(".mentosub").hide();
	$(document).on("click", "#mentoc", function(){
		$(".mentoMenu .mentosub").slideToggle();
	})
/* 나의 결제정보 토글(누르면 메뉴 나오기) */
	$(".pricesub").hide();
	$(document).on("click", "#pricec", function(){
		$(".priceMenu .pricesub").slideToggle();
	})
</script>
<body>




	<!-- property area -->


	<div class="col-md-3 p0 padding-top-40">
		<div class="blog-asside-right pr0">


			<div class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='mypageHome'">
					<h3 class="panel-title">My Home</h3>
				</div>
			</div>

			<div class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading">
					<div class="resumeMenu" id="resM">
						<h3 class="panel-title">
							<div id="resc">이력서</div>
						</h3>
						<ul class="resumesub">
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="resumeInsertForm"> <span class="txt">이력서 등록</span>
							</a>
							</li>
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="getSearchResumeList"> <span class="txt">이력서 관리</span>
							</a>
							</li>
						</ul>
						<div class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading" onclick="location.href='updateInfo'">
								<h3 class="panel-title">비밀번호 변경</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading">
					<div class="busiMenu" id="busiM">
						<h3 class="panel-title"><div id="busic">사업계획서</div></h3>
						<ul class="busisub">
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="insertBusinessPlanA"> <span class="txt">사업계획서 등록</span></a>
							</li>
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="getSearchBusinessPlanA"> <span class="txt">사업계획서 관리</span></a>
							</li>
						</ul>
					</div>	
				</div>
			</div>
			<div class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading">
					<div class="mentoMenu" id="mentoM">
						<h3 class="panel-title"><div id="mentoc">멘토링 현황</div></h3>
						<ul class="mentosub">
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="getSearchShopping"> <span class="txt">수강중인 멘토링</span></a>
							</li>
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="getSearchMentoring"> <span class="txt">내가 만든 멘토링</span></a>
							</li>
						</ul>
					</div>	
				</div>
			</div>
			<div class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading">
					<div class="priceMenu" id="priM">
						<h3 class="panel-title"><div id="pricec">나의 결제정보</div></h3>
						<ul class="pricesub">
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href="getSearchPay"> <span class="txt">결제내역</span></a>
							</li>
							<li class="panel panel-default sidebar-menu wow fadeInRight animated">
								<a href=""> <span class="txt">장바구니</span></a>
							</li>
						</ul>
					</div>	
				</div>
			</div>
			<div class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='updateUsers?id=somTest'">
					<h3 class="panel-title">개인정보/경력 수정</h3>
				</div>
			</div>
		</div>
	</div>
</body>
</html>