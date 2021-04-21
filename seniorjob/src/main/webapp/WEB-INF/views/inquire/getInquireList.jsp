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
<jsp:include page="../topHeader.jsp"></jsp:include>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function click_seq(obj){
	$("#example tr").click(function(){ 	
		var tr = $(this);
		var td = tr.children();
		var no = td.eq(0).text();
	console.log(no);
 	$.ajax({
		url:"/getAnswer",
		data :{seq : no},
		dataType : "json",
		success: function(result){
			$('#modal-body').val(""); // 태그 초기화
			$('#modal-body').remove();
			var response = result.list;
			$.each(response, function(i){
				var table1 = $("<table>").attr({id:"modal-body", class:"table table-hover" });
				var tr1 = $("<tr>");
				var td1 = $("<td>").text("제목");
				var td2 = $("<td>").text(response[i].title);
				var tr2 = $("<tr>");
				var td2_1 = $("<td>").html("내용");
				var td2_2 = $("<td>").html(response[i].content);
				table1.append(tr1, tr2);
				tr1.append(td1,td2);
				tr2.append(td2_1,td2_2);
				$("#table_body").append(table1);
			})
			
		}		
	}); 
})
	};

</script>
<body>
	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-12 pr-30 padding-top-40 properties-page user-properties"></div>
				<!--왼쪽 -->
				<jsp:include page="../Service_Center/new_sevice_left.jsp"></jsp:include>
				<!--왼쪽  -->
				<div class="col-md-1 pr-30 padding-top-40 properties-page user-properties">
				</div>
				<div id="optionVal"
					class="col-md-9 pr-30 padding-top-40 properties-page user-properties">

					
				<h5 style="text-align: center;">전체 문의 목록</h5>
				<br>


					<!--목록 게시판  -->
					
					<table class="table table-striped" id="example">
						<tr>
							<th>번호</th>
							<th>구분</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
						<c:forEach items="${list }" var="b">
							<tr>
								<td onclick="location.href='getInquire?seq=${b.seq}'">${b.seq}</td>
								<td onclick="location.href='getInquire?seq=${b.seq}'">${b.category_a }</td>
								<td>${b.title }</td>
								<td>${b.id }</td>
								<td>${b.w_date }</td>
								<td>
								<c:if test="${b.status eq '답변완료'}">
								<button type="button" id="#" onclick="click_seq()" class="btn btn-primary" data-toggle="modal" data-target="#myModal">답변확인</button>
								</c:if>
								<c:if test="${b.status eq '미답변'}">
								${b.status }
								</c:if>
								</td>
							</tr>
						</c:forEach>
					</table>
					<!--카테고리 설정  -->
					<div class="col-md-12 pr-30">
							<h5>카테고리 설정</h5>
							<select id="items_per_page" onchange="optionSelect(this)"class="selectpicker show-tick form-control" tabindex="-98">
								<option value="">선택</option>
								<option value="결제" id="select1">결제</option>
								<option value="환불" id="select2">환불</option>
								<option value="신청" id="select3">신청</option>
								<option value="취소" id="select4">취소</option>
								<option value="기타" id="select5">기타</option>
							</select>
							<select id="items_per_page2" onchange="optionSelect2(this)"class="selectpicker show-tick form-control" tabindex="-98">
								<option value="">선택</option>
								<option value="답변완료" id="answerY">답변완료</option>
								<option value="미답변" id="answerN">미답변</option>
								
							</select>	
						</div>
	<!--검색기능  -->
				<div
					class="col-md-10  properties-page user-properties">
					<form role="form" method="get">
						<div class="search">
							<br>
						</div>
						<div class="col-xs-2">
							<div class="btn-group bootstrap-select show-tick form-control">
								<div class="dropdown-menu open"
									style="max-height: 640.781px; overflow: hidden; min-height: 109px;">
								</div>
								<select id="basic" name="searchType"
									class="selectpicker show-tick form-control" tabindex="-98">
									<option value="n"
										<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>------</option>
									<option value="t"
										<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
									<option value="c"
										<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
									<option value="w"
										<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
									<option value="tc"
										<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
								</select>
							</div>
						</div>
						<div class="col-xs-7">
							<div class="input-group">
								<input class="form-control" name="keyword" id="keywordInput"
									value="${scri.keyword}"
									style="text-align: center; height: 45px; width: 500px"
									type="text" placeholder="내용 입력 "> <span
									class="input-group-btn">
									<button class="btn btn-primary subscribe" id="searchBtn"
										type="button">
										<i class="pe-7s-paper-plane pe-2x"></i>
									</button>
									
<script>
function optionSelect(obj){
	var param = 'optionValue='+$('#items_per_page').val();
	location.href='getInquireList?'+(obj==""?"":param);
	}
function optionSelect2(obj, obj2){
	var param2 = 'optionValue2='+$('#items_per_page2').val();
	var param3 = '&optionValue='+$('#items_per_page').val();
	location.href='getInquireList?'+(obj==""?"":param2)+(obj2==""?"":param3);
	}    
$(function() {
	$('#searchBtn').click(
		function() {		self.location = "getInquireList"
							+ '${pageMaker.makeQuery(1)}' + "&searchType="
							+ $("#basic option:selected").val() + "&keyword="
							+ encodeURIComponent($('#keywordInput').val())
							+ "&optionValue=" + getURLParams(location.search).optionValue;
							});
			});
	//카테고리 체크검색(결제/환불/신청...)

/* $(function() {
		//체크 초기화
		$('[value=${param.optionValue}]').iCheck('check');
		//체크 검색
		$('[name="cs_biz_form"]').on('ifClicked', function() {
			var param = 'optionValue=' + $(this).val();
			location.href = 'getInquireList?' + param;
			});
		}); */
function getURLParams(url) {
    var result = {};
    url.replace(/[?&]{1}([^=&#]+)=([^&#]*)/g, function(s, k, v) { result[k] = decodeURIComponent(v); });
    return result;
}

 $(function(){
	if(getURLParams(location.search).optionValue == '결제'){
		$('#select1').attr('selected','selected')
	}else if(getURLParams(location.search).optionValue == '환불'){
		$('#select2').attr('selected','selected')
	}else if(getURLParams(location.search).optionValue == '신청'){
		$('#select3').attr('selected','selected')
	}else if(getURLParams(location.search).optionValue == '취소'){
		$('#select4').attr('selected','selected')
	}else if(getURLParams(location.search).optionValue == '기타'){
		$('#select5').attr('selected','selected')
	}
}); 	
</script>
								</span>
							</div>
						</div>
					</form>
				</div>
					<!--페이징  -->
					<div
						class="col-md-6  padding-top-40 properties-page user-properties">
						<div class="pagination" style="float: center">
							<ul>
								<c:if test="${pageMaker.prev}">
									<li><a
										href="getInquireList${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li><a href="getInquireList${pageMaker.makeSearch(idx)}">${idx}</a></li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="getInquireList${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					
				<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">답변 확인</h4>
								</div>
								<div class="modal-body" id="table_body">
								<!--실제 내용 부분  -->
								<table class="table table-hover" id="modal-body">
								
								<c:forEach items="${answer }" var="c">
									<tr>
									<td colspan="2">제목</td>
									<td colspan="3">${c.title }</td>
									</tr>
									<tr>
									<td colspan="2"rowspan="2">내용</td>
									<td colspan="3" rowspan="3">${c.content }</td>
									</tr>
								</c:forEach>								
								
								</table>
								<!--실제 내용 부분  -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">목록으로</button>
									
								</div>
								
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>