<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html class="no-js">
<jsp:include page="topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function allDel(){
	var yn = confirm("전체 항목을 삭제하시겠습니까?");
	if(yn){
		frm.action = "deleteCartAll";
		frm.submit();
	}
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
					<form id="form" name="form" method="post">
					
					<div align="right">
						<button class="btn btn-primary" type="submit" id="allCheck" name="allCheck" onclick="allDel()">전체삭제</button>
					</div>
					<table class="table">
					    <thead class="thead-light">
					    <tr>
					      <th>
					      <div class="allCheck">
					      	<input type="checkbox"  id="checkedAll" name="checkedAll"> ALL 
					      </div>
					      </th>	
					      <th>상품명</th>
					      <th>결제 가능일</th>
					      <th>결제 만료일</th>
					      <th>가격</th>
					    </tr>
					  </thead>
					  <tbody>
<%-- 					  <c:set var = "sum" value="0" /> --%>
					  <c:forEach items="${list }" var="cart">
					  <c:if test="${cart.id eq users.id }">
				        <tr>
				        	<td>
				        		<div class="chBox">
				        			<input type="checkbox" id="del" name="del" value="${cart.cart_no }" >
				        		</div>
				        	</th>
				            <td><a href="getMentor?mentor_id=${cart.mentor_id }">${cart.mentoring_name }</a></td>
				            <td>${cart.cart_start }</td>
				            <td>${cart.cart_end }</td>
				            <td><input type="text" id="total" name="total" value="${cart.cart_price }"></td>
				            <td><input type="button" id="delCheck" name="delCheck" onclick="chkDel(${cart.cart_no})" value="삭제"></td>
				            <!-- <div class="delBtn" align="right">
								<button type="button" id="delCheck" name="delCheck" >삭제</button>
							</div> -->
				        </tr>
<%-- 				      <c:set var="sum" value="${sum + (cart.cart_price)}" /> --%>
				      </c:if>  
				      </c:forEach>
					  </tbody>
					  <tfoot>
					    <tr align="right">
					        <td colspan="4">최종 합계</td>
					        <td>
					        	<input type="text" name="total_sum" id="total_sum">
<%-- 					        	<div class="sum"><fmt:formatNumber pattern="###,###,###" value="${sum }" />원</div> --%>
					        </td>
					    </tr>
					  </tfoot>
					</table>
					<div align="right">
						<button type="button" class="btn btn-primary">결제하기</button>
						<button type="button" class="btn btn-primary">목록으로</button>
					</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/icheck.min.js"></script>
	<script>
	//css 체크박스 안 먹을 때 .iCheck() 추가;
/* 	$('[name=del]').on('ifCreated ifClicked ifChanged ifChecked ifUnchecked ifDisabled ifEnabled ifDestroyed', function(event){
      }).iCheck(); */
    //선택한 항목 값 나오기(최종합계)
	$('[name=del]').on('ifChanged', function(event){
		  var sum = 0;
		  var count = form.del.length;
		  for(var i = 0; i < count; i++){
			  if(form.del[i].checked == true){
				  sum += parseInt(form.total[i].value);
			      console.log(sum);
			  }
		  }
		  if(form.del.checked == true){
			 sum += parseInt(form.total.value);
			 console.log(sum);
		  }
		  form.total_sum.value = sum;
	  }).iCheck();
    
    //선택 항목 삭제  
    function chkDel(str){
    	var chkObj = document.getElementsByName("del");
    	var chkDelStr = "";
    	
    	for(var i = 0; i < chkObj.length; i++){
    		var chkObjElement = chkObj[i];
    		if(chkObjElement.checked){
    			chkDelStr = chkDelStr + chkObjElement.value + "/";
    		}
    	}
    	if(chkDelStr == ''){
    		alert("선택한 항목이 없습니다.");
    		return false;
    	}
    	chkDelStr = chkDelStr.substring(0, chkDelStr.length-1);
    	
    	if(!confirm("해당 항목을 삭제하시겠습니까?"))
    		return false;
    		form.action = "deleteCart?cart_no=" + str;
    		form.submit();
    }
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>