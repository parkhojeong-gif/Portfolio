<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row" id="list">

				<div class="section additional-details">

					<h4 class="s-property-title">${sessionScope.users.id}님의장바구니</h4>
					<input type="button" id="del" name="del" value="삭제">
					<hr>
					<c:if test="${sessionScope.users.id eq users.id }">
					<ul>
						<li>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">번호</span>
							<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">상품정보</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">가격</span> 
							<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">시작일자</span> 
							<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">종료일자</span>
							<span class="col-xs-6 col-sm-4 col-md-1 add-d-title">선택</span>
						</li>
						<li id="ul">
						</li>
					</ul>
					</c:if>
					<hr>
					<div align="center">
					<ul>
						<li>
							<span class="col-xs-6 col-sm-4 col-md-5 add-d-title">선택가격</span>
							<span class="col-xs-6 col-sm-4 col-md-5 add-d-title">최종 결제금액</span>
						</li>
						<li>
							<span class="col-xs-6 col-sm-4 col-md-5">55555</span>
							<span class="col-xs-6 col-sm-4 col-md-5">66666</span>
						</li>	
					</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	// localstorage 배열 숫자 증가시키는 중(controller에서 number 가져오면 null값 나옴.)
	// localstorage 저장된 값 불러와서 붙이기
	var num = 1;
	let output;
	while(num < num.length)
		output = localStorage.getItem("arr"+[num]);
		console.log("arr"+[num])
		num++;
	num += num;
	console.log(output)
	let ars = JSON.parse(output);
	console.log(ars)
	
	// 					        alert(JSON.parse(localStorage.getItem("ar")))
	var div = document.getElementById("ul");
	var span;
	for (item in ars) {
		span = "<input class='col-xs-6 col-sm-8 col-md-1 add-d-entry' type='checkbox'>"
				+ "<span class='col-xs-6 col-sm-8 col-md-1 add-d-entry'>"
				+ ars[item].number
				+ "</span>"
				+ "<span class='col-xs-6 col-sm-8 col-md-3 add-d-entry'>"
				+ ars[item].name
				+ "</span>"
				+ "<span class='col-xs-6 col-sm-8 col-md-1 add-d-entry'>"
				+ ars[item].price
				+ "</span>"
				+ "<span class='col-xs-6 col-sm-8 col-md-3 add-d-entry'>"
				+ ars[item].start
				+ "</span>"
				+ "<span class='col-xs-6 col-sm-8 col-md-3 add-d-entry'>"
				+ ars[item].end + "</span>"
	}
	div.innerHTML = span;
	
	
	// checkbox 누르면 삭제
	$(document).on("click", "#del", function(){
		
	})
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>