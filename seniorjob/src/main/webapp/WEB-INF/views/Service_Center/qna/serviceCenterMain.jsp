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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
	<!-- property area -->
	<div class="content-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
			<!--왼쪽 -->
			<jsp:include page="../new_sevice_left.jsp"></jsp:include>
			<!--왼쪽  -->
		</div>
	</div>
</div>
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>