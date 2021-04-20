<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="userList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<div class="main-content container-fluid">
	<div class="page-title">
		<div class="row">
			<div class="col-12 col-md-6 order-md-1 order-last">
				<h3>회원관리</h3>
				<p class="text-subtitle text-muted">회원관리 목록을 보여줍니다.</p>
			</div>
			<div class="col-12 col-md-6 order-md-2 order-first">
				<nav aria-label="breadcrumb" class='breadcrumb-header'>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="managerMain">메인</a></li>
						<li class="breadcrumb-item active" aria-current="page">회원관리</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<section class="section">
		<div class="card">
			<div class="card-header">회원 데이터 테이블</div>
			<div class="card-body">
				<div class="dataTable-search">
				<form role="form" method="get" action="ManSearchService">
					<div class="col-xs-12">
                         <div class="btn-group bootstrap-select show-tick form-control" style="width: 500px; ">
                         	 <div class="dropdown-menu open" style="max-height: 200px; overflow: hidden; min-height: 109px;"><ul class="dropdown-menu inner" role="menu" style="max-height: 100px; overflow-y: auto; min-height: 98px;"><li data-original-index="0" class=""><a tabindex="0" class="" style="" data-tokens="null"><span class="text"> -Status- </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1" class=""><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Rent </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Boy</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">used</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div>
                         <select id="basic" name="searchType" class="form-select" style="width:200px;" tabindex="-98">
                              <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>------</option>
						      <option value="name"<c:out value="${scri.searchType eq 'name' ? 'selected' : ''}"/>>이름</option>
						      <option value="id"<c:out value="${scri.searchType eq 'id' ? 'selected' : ''}"/>>ID</option>
						      <option value="auth"<c:out value="${scri.searchType eq 'auth' ? 'selected' : ''}"/>>회원등급</option>
                        </select>
							<div class="input-group">
                             <input class="form-control"  name="keyword" id="keywordInput" value="${scri.keyword}" style="text-align:center; height:45px; width: 230px; flex:unset;" type="text" placeholder="내용 입력 ">&nbsp;
                             <span class="input-group-btn">
                             	<button class="btn btn-primary subscribe" id="searchBtn" style="" type="button"><i data-feather="edit"></i>검색</button>
							 </span>
                    		</div>
                        </div>
                        </div>
                        <div class="col-xs-7">
						</div>
				</form>
						
				<br>
				<%-- <div id="outter">
						<div style="float: right;">
							<select id="cntPerPage" name="sel" onchange="selChange()">
								<option value="5"
									<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
								<option value="10"
									<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
								<option value="15"
									<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
								<option value="20"
									<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
							</select>
						</div> --%>
				<table class='table table-striped' style="font-size: 11px;" id="table1">
					<thead>
						<tr>
							<th>ID</th>
							<th>회원 이름</th>
							<th>회원 전화번호</th>
							<!--<th>회원 주소</th>-->
							<th>생일</th>
							<th>회원 이메일</th>
							<th>경력증명서</th>
							<th>회원상태</th>
							<th>승급</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<c:forEach items="${viewAll}" var="users">
							<tr>
								<td>${users.id }</td>
								<td>${users.name }</td>
								<td>${users.phonenum }</td>
								<!-- <td>${users.address }</td> -->
								<td>${users.birth }</td>
								<td>${users.email }</td>
								<td>${users.mentor_career_certificate}</td>
								<td>${users.auth}</td>
								<td><span class="badge bg-success" href="#info" class="info" data-bs-toggle="modal">승급</span></td>
								<td><a href="#exampleModalLong" class="edit" data-bs-toggle="modal"> <i data-feather="edit"></i></a></td>
								<td><a href="#delete" class="delete" data-bs-toggle="modal"><i data-feather="alert-circle"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				 <div class="card-body">
                       <nav aria-label="Page navigation example">
                          <ul class="pagination pagination-primary  justify-content-center">
    						<c:if test="${pageMaker.prev}">
    						<li><a href="userList${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
    						</c:if> 

    						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    						<li><a href="userList${pageMaker.makeSearch(idx)}">${idx}</a></li>
    						</c:forEach>
			
    						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    						<li><a href="userList${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
    						</c:if> 
					  	  </ul>
                      </nav>
					</div>
				</div>

			</div>
		</div>

	</section>
</div>

<!--승급 modal -->
<div class="modal fade text-left" id="info" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel130" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
		role="document">
		<div class="modal-content">
			<div class="modal-header bg-info">
				<h5 class="modal-title white" id="myModalLabel130">승급</h5>
				<button type="button" class="close" data-bs-dismiss="modal"
					aria-label="Close">
					<i data-feather="x"></i>
				</button>
			</div>
			<div class="modal-body">이 <span id="authSpan"></span>회원을 멘토로 승급시키겠습니까?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
					<i class="bx bx-x d-block d-sm-none"></i> 
					<span class="d-none d-sm-block">닫기</span>
				</button>
				<button type="button" class="btn btn-info ml-1" id="btnAuth" data-bs-dismiss="modal">
					<i class="bx bx-check d-block d-sm-none"></i> 
					<span class="d-none d-sm-block">승인</span>
				</button>
			</div>
		</div>
	</div>
</div>
</div>

<!-- 회원정보 수정 modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLongTitle"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form action="updateUserProc" method="post">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"><span id="userSpan"></span>회원 정보 수정</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<i data-feather="x"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<label>ID</label>
						</div>
						<div class="col-md-8">
							<div class="form-group has-icon-left">
								<div class="position-relative">
									<input type="text" class="form-control" placeholder="ID" id="id" name="id" readonly="readonly">
									<div class="form-control-icon">
										<i data-feather="user"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<label>Name</label>
						</div>
						<div class="col-md-8">
							<div class="form-group has-icon-left">
								<div class="position-relative">
									<input type="text" class="form-control" placeholder="Name" id="name" name="name">
									<div class="form-control-icon">
										<i data-feather="user"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<label>Email</label>
						</div>
						<div class="col-md-8">
							<div class="form-group has-icon-left">
								<div class="position-relative">
									<input type="email" class="form-control" placeholder="Email" id="email" name="email">
									<div class="form-control-icon">
										<i data-feather="mail"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<label>phonenum</label>
						</div>
						<div class="col-md-8">
							<div class="form-group has-icon-left">
								<div class="position-relative">
									<input type="text" class="form-control" placeholder="Mobile" id="phonenum" name="phonenum">
									<div class="form-control-icon">
										<i data-feather="phone"></i>
									</div>
								</div>
							</div>
						</div>
						<!-- <div class="col-md-4">
							<label>Address</label>
						</div>
						<div class="col-md-8">
							<div class="form-group has-icon-left">
								<div class="position-relative">
									<input type="text" class="form-control" placeholder="Address" id="address" name="address">
									<div class="form-control-icon">
										<i data-feather="file"></i>
									</div>
								</div>
							</div>
						</div> -->
						<!-- 	<div class="card-body">
								<div class="row">
									<div class="col-lg-6 col-md-12">
										<p>File</p>
										<div class="form-file">
											<input type="file" class="form-file-input" id="customFile">
											<label class="form-file-label" for="customFile"> 
											<span class="form-file-text">Choose file...</span> 
											<span class="form-file-button">Browse</span>
											</label>
										</div>
									</div> -->
						<div class="modal-footer">
							<button type="button" class="btn btn-light-secondary"
								data-bs-dismiss="modal">
								<i class="bx bx-x d-block d-sm-none"></i> 
								<span class="d-none d-sm-block">닫기</span>
							</button>

							<button type="submit" id="btnup" class="btn btn-primary ml-1" data-bs-dismiss="modal">
								<i class="bx bx-check d-block d-sm-none"></i> 
								<span class="d-none d-sm-block">수정</span>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>



<!--삭제 Modal -->
<div class="modal fade text-left" id="delete" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
		role="document">
		<div class="modal-content">
			<form name="deleteUser" action="deleteUser" method="post">
				<div class="modal-header bg-danger">
					<h5 class="modal-title white" id="myModalLabel120">회원삭제</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<i data-feather="x"></i>
					</button>
				</div>
				<div class="modal-body">정말로<span id="delspan"></span>회원을 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-light-secondary"
						data-bs-dismiss="modal">
						<i class="bx bx-x d-block d-sm-none"></i> <span
							class="d-none d-sm-block">닫기</span>
					</button>
					<button type="button" class="btn btn-danger ml-1" id="btndel" data-bs-dismiss="modal">
						<i class="bx bx-check d-block d-sm-none"></i> <span class="d-none d-sm-block">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</div>

<!-- modal 창 -->
<script>
$(function(){
	<!--modal 창에 단건 조회값을 띄우기-->
	$("#exampleModalLong").on('show.bs.modal', function(event){
				console.log(event);	
		let idx = $(event.relatedTarget).closest('tr').find('td').eq(0).text();
				$('#userSpan').html(idx);
		   	$.ajax({
	    		url : 'getUserList',
	    		type : 'get',
				data : {"id": idx},	
	    		dataType: 'json',
	    		success: function(result){
	    			console.log(result);
	    			if(result.length > 0 ){
	    				var id = result[0].id;
	    				var name = result[0].name;
	    				var email = result[0].email;
	    				var phonenum = result[0].phonenum;
	    				var address = result[0].address;	
	    		
	    					$("#exampleModalLong").find('[name=id]').val(id);
	    					$("#exampleModalLong").find('[name=name]').val(name);
	    					$("#exampleModalLong").find('[name=email]').val(email);
	    					$("#exampleModalLong").find('[name=phonenum]').val(phonenum);
	    					//$("#exampleModalLong").find('[name=address]').val(address); 
	    				
	    			}
				}
			})
			
	});
	
	<!--회원 정보 수정-->
	$("#btnup").on("click", function(event){
		let idx =$('#userSpan').html();
		let idx1 = $('#name').val();
		let idx2 = $('#email').val();
		let idx3 = $('#phonenum').val();
		let idx4 = $('#address').val();
		$.ajax({
			url : 'updateUserProc',
			type: 'POST',
			data :{id: idx, 
				   name: idx1, 
				   email : idx2, 
				   phonenum : idx3, 
				   address : idx4},
			dataType :'text',
			success: function(result){
				location.reload();		
			},error : function(result){
				alert("x");
			}
			
		})
	})
	
	<!-- delete modal 클릭-->
	
	$("#delete").on('show.bs.modal', function(event){
		let idx = $(event.relatedTarget).closest('tr').find('td').eq(0).text();
			console.log(idx);
		$('#delspan').html(idx);
	});
	
	<!-- 삭제 modal 창 -->
	$("#btndel").on('click', function(event){
			console.log(event);
		let idx = $('#delspan').html();
			$.ajax({
				url: 'deleteUser',
				type : 'GET',
				data : {"id": idx},
				dataType : 'text',
				success : function(result){	
					location.reload();
				}
			})
	});
	
	<!--회원 승급 modal click-->
	
	$("#info").on('show.bs.modal', function(event){
		let idx = $(event.relatedTarget).closest('tr').find('td').eq(0).text();
			console.log(idx);
		$('#authSpan').html(idx);
	});
	
	<!--회원 승급 modal 창-->
	$("#btnAuth").on('click', function(event){
		console.log(event);
		let idx = $('#authSpan').html();
		$.ajax({
			url: 'authUser',
			type : 'GET',
			data : {"id":idx},
			dataType : 'text',
			success : function(result){
				location.reload();
			
			} 
			
		})
	})
});

<!--검색-->
	
	 	$('#searchBtn').click(function() {
		 self.location = "userList" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
		});
	  

</script>
