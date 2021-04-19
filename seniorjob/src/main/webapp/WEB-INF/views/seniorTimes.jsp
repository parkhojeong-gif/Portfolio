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
<jsp:include page="topHeader.jsp"></jsp:include>
<body>
	<!-- property area -->
	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">


				<jsp:include page="Service_Center/sevice_left.jsp"></jsp:include>
				<div
					class="col-md-9 pr-40 padding-top-40 properties-page user-properties">
					<div class="section additional-details">
						<form action="seniorTimes">
							<!-- <input type="text" name="keyword" value=""><br> <input
								type="submit" name="검색" value="검색"> -->
						<button type="submit" class="btn btn-primary btn-lg" formaction="seniorTimes" name="keyword" value='고용정책'>고용정책</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="seniorTimes" name="keyword" value='취업자수'>취업자</button>
						</form>
						<form action="seniorTimes">
						<label for="keyword">
						<input type="text" id="keyword" name="keyword" placeholder="검색어를 입력해주세요"><button type="submit">검색</button>
						</label>
						</form>
							<hr>
							<table class="table table-hover">
								<c:forEach items="${seniorTimes }" var="b">
									<tr>
										<td colspan="4" width="800">${b.title }</td>
									</tr>

									<tr>
										<td width="400"><a href="${b.originallink }">${b.description }</a></td>

									</tr>
								</c:forEach>

							</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>