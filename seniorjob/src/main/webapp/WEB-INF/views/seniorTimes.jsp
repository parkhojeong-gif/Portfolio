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
				<form action="seniorTimes">
					<input type="text" name="keyword" value="노인"><br> <input
						type="submit" name="검색" value="검색">
				</form>
				<hr>
				<table>
					<tr>
						<td height="3" colspan="6" bgcolor="pink"></td>
					</tr>

					<c:forEach items="${seniorTimes }" var="b">
						<tr>
							<td colspan="4" width="800">${b.title }</td>
						</tr>

						<tr>
							<td width="200"><a href="${b.originallink }">${b.originallink }</a></td>
							<td width="200">${b.link }</td>
						</tr>

						<tr>
							<td colspan="6">${b.description }</td>
						</tr>

						<tr>
							<td colspan="6" height="1" width="1000" bgcolor="pink"></td>
						</tr>
					</c:forEach>
				</table>



			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>