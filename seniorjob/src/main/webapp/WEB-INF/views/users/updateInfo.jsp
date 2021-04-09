<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<jsp:include page="../topHeader.jsp"></jsp:include>



<!-- property area -->
<div class="content-area recent-property"
	style="background-color: #FFF;">
	<div class="container">
		<div class="row">

			<jsp:include page="../mypage.jsp" />
			<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties  profiel-container">
			

				<form action="pwProc" method="post">

					<div class="profiel-header">
						<h3>
							<b>비밀번호</b> 변경 <br> 
							<small>새로운 비밀번호를 입력해주세요.</small>
						</h3>
						<hr>
					</div>

					<div class="clear">

						<div class="col-sm-10 col-sm-offset-1">
							<div class="form-group">
								<label>현재 비밀번호 <small></small></label> <input
									name="passwordold" type="password" class="form-control" >
							</div>
							<div class="form-group">
								<label>새로운 비밀번호 <small></small></label> <input
									name="password" type="password" class="form-control" >
							</div>
							<div class="form-group">
								<label>새로운 비밀번호 확인<small></small></label> <input
									name="passwordck" type="password" class="form-control" >
							</div>
						</div>
						<div class="col-sm-10 col-sm-offset-1">
							<button type="submit" class="btn btn-primary">변경</button>
						</div>

					</div>




				</form>

			</div>

		</div>
		<!-- end row -->

	</div>
</div>

<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>