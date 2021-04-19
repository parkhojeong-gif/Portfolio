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
					
					<table class="table table-striped">
						<tr>
							<th >구분</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
						<c:forEach items="${list }" var="b">
							<tr>
								<td onclick="location.href='getInquire?seq=${b.seq}'">${b.category_a }</td>
								<td>${b.title }</td>
								<td>${b.id }</td>
								<td>${b.w_date }</td>
								<td>${b.status }</td>
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
									<ul class="dropdown-menu inner" role="menu"
										style="max-height: 629.781px; overflow-y: auto; min-height: 98px;">
										<li data-original-index="0" class=""><a tabindex="0"
											class="" style="" data-tokens="null"><span class="text">
													-Status- </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
										<li data-original-index="1" class=""><a tabindex="0"
											class="" style="" data-tokens="null"><span class="text">Rent
											</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
										<li data-original-index="2" class="selected"><a
											tabindex="0" class="" style="" data-tokens="null"><span
												class="text">Boy</span><span
												class="glyphicon glyphicon-ok check-mark"></span></a></li>
										<li data-original-index="3"><a tabindex="0" class=""
											style="" data-tokens="null"><span class="text">used</span><span
												class="glyphicon glyphicon-ok check-mark"></span></a></li>
									</ul>
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



				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>