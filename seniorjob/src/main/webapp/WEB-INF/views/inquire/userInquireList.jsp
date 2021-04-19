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
				var td2_2 = $("<td>").text(response[i].content);
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
					class="col-md-1 pr-30 padding-top-40 properties-page user-properties"></div>
				<!--왼쪽 -->
				<jsp:include page="../Service_Center/new_sevice_left.jsp"></jsp:include>
				<!--왼쪽  -->
				<div id="optionVal"
					class="col-md-9 pr-30 padding-top-40 properties-page user-properties">





					<!--목록 게시판  -->
					<input type="hidden" id="id" name="id" value="${id }">
					<table class="table table-striped" id="example">
						<tr>
							<th>글번호<th>
							<th>구분</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>답변 상태</th>
							<th>답변 확인</th>
						</tr>
						<c:forEach items="${list }" var="b">
							<input type="hidden" id="seq" name="seq" value="${b.seq }">
							<tr>
								<td id="modal_Seq">${b.seq}<td>
								<td onclick="location.href='getUserInquire?seq=${b.seq}'">${b.category_a }</td>
								<td onclick="location.href='getUserInquire?seq=${b.seq}'">${b.title }</td>
								<td onclick="location.href='getUserInquire?seq=${b.seq}'">${b.id }</td>
								<td onclick="location.href='getUserInquire?seq=${b.seq}'">${b.w_date }</td>
								<td onclick="location.href='getUserInquire?seq=${b.seq}'">${b.status}</td>
								<td><button type="button" id="#" onclick="click_seq()" class="btn btn-primary"data-toggle="modal" data-target="#myModal">답변확인</button></td>
							</tr>
						</c:forEach>
					</table>


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

					<!--목록 게시판  -->





				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>