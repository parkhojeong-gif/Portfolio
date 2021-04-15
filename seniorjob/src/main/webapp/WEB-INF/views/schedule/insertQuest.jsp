<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<jsp:include page="../topHeader.jsp"></jsp:include>



<!-- property area -->
<div class="content-area recent-property"
	style="background-color: #FFF;">
	<div class="container">
		<div class="row">

			<jsp:include page="../mypage.jsp" />
			<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties  profiel-container">
			

				<form action="insertQuest" method="post">

					<div class="profiel-header">
						<h3>
							<b>질문 <br> 
							<small></small>
						</h3>
						<hr>
					</div>

					<div class="clear">

						<div class="col-sm-10 col-sm-offset-1">
							<div class="form-group">
								<label>받는사람 <small>(read only)</small></label> <input
									name="mentorid" type="text" value="soMen" class="form-control" readonly="readonly">
							</div>
							<div class="form-group">
								<label>제목<small>(read only)</small></label> <input name="schedule_name" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>내용<small>(required)</small></label> <input name="schedule_con" type="text" class="form-control">
							</div>
						
							<div class="form-group">
								<label>보내는 사람<small>(read only)</small></label> <input
									name="menteeid" type="text" value="somTest" class="form-control" readonly="readonly">
							</div>
						</div>
						<div class="col-sm-10 col-sm-offset-1">
							<button type="submit" class="btn btn-primary">요청</button>
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