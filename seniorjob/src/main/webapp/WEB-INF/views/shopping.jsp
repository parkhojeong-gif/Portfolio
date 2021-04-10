<%@page import="java.util.ArrayList"%>
<%@page import="com.company.mentoring.service.MentoringVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	ArrayList<MentoringVO> shopping = null;
	Object obj = session.getAttribute("cart");
	
	if(obj == null){
		shopping = new ArrayList<MentoringVO>();
	} else{
		shopping = (ArrayList<MentoringVO>) obj;
	}
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="topHeader.jsp"></jsp:include>
<body>
<% String id = (String)session.getAttribute("users.id"); %>
<% ArrayList<String> arr = (ArrayList)session.getAttribute("arr"); %>

	<!-- property area --> 
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<div class="section additional-details">

					<h4 class="s-property-title">${sessionScope.users.id}님의 장바구니</h4>
					<hr>
					<ul>
						<li><span class="col-xs-6 col-sm-4 col-md-1 add-d-title">번호</span>
							<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">상품정보</span>
							<span class="col-xs-6 col-sm-4 col-md-2 add-d-title">가격</span> 
							<span class="col-xs-6 col-sm-4 col-md-2 add-d-title">시작일자</span> 
							<span class="col-xs-6 col-sm-4 col-md-2 add-d-title">종료일자</span>
						</li>
						
						<%-- <%
							if(shopping.size() == 0){
								out.println("<span class='col-xs-6 col-sm-4 col-md-1 add-d-title'>");
									out.println("장바구니에 담긴 상품이 없습니다.");
								out.println("</span>");
							} else{
								int totalSum = 0, total = 0;
								DecimalFormat df = new DecimalFormat("");
								for(int i = 0; i < shopping.size(); i++){
									ShoppingVO shoppvo = shopping.get(i);
									out.println("<span class='col-xs-6 col-sm-4 col-md-1 add-d-title'>");
										out.println(i + 1);
									out.println("</span>");
									out.println("<span class='col-xs-6 col-sm-4 col-md-1 add-d-title'>");
										out.println(shoppvo.mentoring_number());
									out.println("</span>");
									out.println("<span class='col-xs-6 col-sm-4 col-md-1 add-d-title'>");
										out.println(shoppvo.mentoring_name());
									out.println("</span>");
									out.println("<span class='col-xs-6 col-sm-4 col-md-1 add-d-title'>");
										out.println(shoppvo.price());
									out.println("</span>");
									total = shoppvo.getPrice();
									out.println("<span class='col-xs-6 col-sm-4 col-md-1 add-d-title'>");
										out.println(df.format(total));
									out.println("</span>");
								}
							}
						%> --%>

<!-- 						<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">1</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry"> -->
<!-- 						<img src="#"></span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">2021032901</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">229,000</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">2021/03/29</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">2021/04/29</span> -->
<!-- 						<br> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry">2</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-1 add-d-entry"> -->
<!-- 						<img src="#"></span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">2021032902</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">150,000</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">2021/02/29</span> -->
<!-- 						<span class="col-xs-6 col-sm-8 col-md-2 add-d-entry">2021/03/29</span> -->
					</ul>
					<hr>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>