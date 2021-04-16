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
<script>
function detail(seq) {
	location.href="getBusinessPlanA?seq="+seq //
}

function deleteBp(seq) {
	location.href="deleteBusinessPlanA?seq="+seq //
}

function updateBp(seq) {
	location.href="updateBusinessPlanA?seq="+seq //
}

function printBp(seq) {
	var url = "printBusinessPlanA?seq="+seq;
	window.open(url,"","width=500,height=600");
}

function excelBp(seq) {
	location.href="getBpExcel?seq="+seq //
}

function wordBp(seq) {
	location.href="getBpWord?seq="+seq
}

function ckBp(seq) {
	var url = "checkBpForm?seq="+seq;
	window.open(url,"","width=500,height=600");
}


function seeCkBp(seq) {
	var url = "seeCkBp?seq="+seq;
	window.open(url);
}


</script>
<jsp:include page="../topHeader.jsp"></jsp:include>
<body>






	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">

				<jsp:include page="../mypage.jsp" />
				<%-- <c:forEach items="${bb}" var="bb">
				
				</c:forEach>
				<c:forEach items="${bc}" var="bc">
					<input type="hidden" name="mHidden" id="mHidden" value="${bc.mHidden }">
				</c:forEach>
				<c:forEach items="${bd}" var="bd">
					<input type="hidden" name="sHidden" id="sHidden" value="${bd.sHidden }">
				</c:forEach> --%>
				<c:forEach  var="list" items="${list}">
				
					
					<div
						class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
						<div class="section">

							<section class="post">
								<div class="text-center padding-b-50">
									<h2 class="wow fadeInLeft animated" onclick="detail('${list.seq }')" >${list.title}</h2>
									<div class="title-line wow fadeInRight animated"></div>
								</div>

								<div class="row">
									
									
								</div>
								
								<p class="intro">${list.business_a }</p>
								<p class="read-more">
									<a onclick="updateBp('${list.seq }')" class="btn btn-default btn-border">수정</a>
									<a onclick="deleteBp('${list.seq }')" class="btn btn-default btn-border">삭제</a>
									<a onclick="printBp('${list.seq }')" class="btn btn-default btn-border">인쇄</a>
									<!-- <a onclick="excelBp('${list.seq }')" class="btn btn-default btn-border">엑셀저장</a>-->
									<%-- <a onclick="wordBp('${list.seq }')" class="btn btn-default btn-border">워드저장</a> --%>
									<a onclick="ckBp('${list.seq }')" class="btn btn-default btn-border">첨삭요청</a>
									<a onclick="seeCkBp('${list.seq }')" class="btn btn-default btn-border">첨삭보기</a>
								</p>
							</section>
							<hr>



						</div>
					</div>

				</c:forEach>
			</div>
			<!-- row end -->

		</div>
	</div>



	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>