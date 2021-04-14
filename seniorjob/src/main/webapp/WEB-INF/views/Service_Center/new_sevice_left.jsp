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
<style>
.my-hr1 {
	border: 0;
	height: 1px;
	background: #ccc;
}

.my-hr2 {
	border: 0;
	height: 2px;
	background: #ccc;
}

.my-hr3 {
	border: 0;
	height: 3px;
	background: #ccc;
}
.
</style>

<body>




	<!-- property area -->

	<div class="col-md-2 p0 padding-top-20">
		<div class="blog-asside-right pr0">
			<hr class="my-hr3">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='serviceCenter'">
					<h3 class="panel-title">고객센터 게시판</h3>
				</div>
			</div>
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='serviceCenter'">
					<h3 class="panel-title">공지사항</h3>
				</div>
			</div>
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading"
					onclick="location.href='#'">
					<h3 class="panel-title">서식자료실</h3>
				</div>
			</div>
			<hr class="my-hr3">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='#'">
					<h3 class="panel-title">자주하는 질문</h3>
				</div>
			</div>
			<hr class="my-hr3">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='#'">
					<h3 class="panel-title">문의 게시판</h3>
				</div>
			</div>
			<c:if test="${empty users }">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="loginCheck()">
					<h5 class="panel-title">문의하기</h5>
				</div>
			</div>
			</c:if>
			<c:if test="${not empty users }">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='insertInquireForm'">
					<h5 class="panel-title">문의하기</h5>
				</div>
			</div>
			</c:if>
			<c:if test="${empty users }">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="loginCheck()">
					<h3 class="panel-title">내문의목록</h3>
				</div>
			</div>
			</c:if>
			<c:if test="${not empty users }">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='userInquireList'">
					<h3 class="panel-title">내문의목록</h3>
				</div>
			</div>
			</c:if>
			<c:if test="${users.auth eq 'ADMIN' }">
			<div
				class="panel panel-default sidebar-menu wow fadeInRight animated">
				<div class="panel-heading" onclick="location.href='getInquireList'">
					<h3 class="panel-title">목록전체조회</h3><!--문의 전체조회  -->
				</div>
			</div>
			</c:if>
			<hr class="my-hr3">
		</div>
	</div>
	<script>
	function loginCheck(){
		if(confirm("로그인 또는 회원가입이 필요한 항목입니다.")){
			location.href = "login"; // 로그인 페이지로 이동
		}
	}
	
	</script>
	
</body>
</html>