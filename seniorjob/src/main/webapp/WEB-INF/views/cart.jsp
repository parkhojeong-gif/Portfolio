<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<jsp:include page="topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function selectAll(allChk){
		const checkboxes = document.getElementsByName('del');
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = allChk.checked;
		})
	}
	
	$(document).ready(function(){
		$("input:checkbox[name='del']").val([${CartVO.getdel1}])
		console.log($("input:checkbox[name='del']").val([${CartVO.getdel1}]))
	})
		
	function ardChange(){
		frm.submit();
	}
</script>
<body>
	<!-- property area -->
	<div class="properties-area recent-property" style="background-color: #FFF;">
		<div class="container">
			<div class="row" id="list">
				<div class="section additional-details">
					<h4 class="s-property-title">${sessionScope.users.id}님의장바구니</h4>
					<hr>
					<form id="frm" name="frm" method="post" action="deleteCartAll">
					<div align="right">
						<button type="button" id="delCheck" name="delCheck">삭제</button>
						<button type="submit" id="allCheck" name="allCheck">전체삭제</button>
					</div>
					<table class="table">
					    <thead class="thead-light">
					    <tr>
					      <th><input type="checkbox" class="call" id="checkedAll" name="checkedAll"></th>	
					      <th>상품명</th>
					      <th>결제 가능일</th>
					      <th>결제 만료일</th>
					      <th>가격</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${list }" var="cart">
					  <c:if test="${cart.id eq users.id }">
				        <tr>
				            <div onchange="ardChange()">
				        	<th><input class="del" type="checkbox" id="del" name="del"></th>
				            <td><a href="getMentor?mentor_id=${cart.mentoring_name }">${cart.mentoring_name }</a></td>
				            <td>${cart.cart_start }</td>
				            <td>${cart.cart_end }</td>
				            <td>${cart.cart_price }</td>
				            </div>
				        </tr>
				      </c:if>  
				      </c:forEach>
					  </tbody>
					  <tfoot>
					    <tr align="right">
					        <td colspan="4">최종 합계</td>
					        <td>4144</td>
					    </tr>
					  </tfoot>
					</table>
					<div align="right">
						<button type="button">결제하기</button>
						<button type="button">목록으로</button>
					</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>