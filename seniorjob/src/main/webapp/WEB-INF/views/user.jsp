<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
									<li class="breadcrumb-item"><a href="/">메인</a></li>
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
							<input name="search" placeholder="Search..." type="search"/>
							<button style="position : static; right : 200px;">검색</button>
						</div><br>
							<table class='table table-striped' id="table1">
								<thead>
									<tr>
										<th>ID</th>
										<th>회원 이름</th>
										<th>회원 전화번호</th>
										<th>회원 주소</th>
										<th>생일</th>
										<th>회원 이메일</th>
										<th>경력증명서</th>
										<th>승급</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="users" items="${list}">
									<tr>
										<td>${users.id }</td>
										<td>${users.name }</td>
										<td>${users.phonenum }</td>
										<td>${users.address }</td>
										<td>${users.birth }</td>
										<td>${users.email }</td>
										<td> </td>
										<td><span class="badge bg-success" href="#info"
											class="info" data-bs-toggle="modal" onclick="">승급</span></td>
										<td><a href="#exampleModalLong" class="edit"
											data-bs-toggle="modal"> <i data-feather="edit"></i></a></td>
										<td><a href="#delete" class="delete"
											data-bs-toggle="modal" onclick=""> <i
												data-feather="alert-circle"></i></a></td>
									</tr>
								</c:forEach>	
								</tbody>
							</table>
						</div>
					</div>

				</section>
			</div>

			<!--승급 modal -->
			<div class="modal fade text-left" id="info" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel130" aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
					role="document">
					<div class="modal-content">
						<div class="modal-header bg-info">
							<h5 class="modal-title white" id="myModalLabel130">승급</h5>
							<button type="button" class="close" data-bs-dismiss="modal"
								aria-label="Close">
								<i data-feather="x"></i>
							</button>
						</div>
						<div class="modal-body">이 회원을 멘토로 승급시키겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-light-secondary"
								data-bs-dismiss="modal">
								<i class="bx bx-x d-block d-sm-none"></i> <span
									class="d-none d-sm-block">닫기</span>
							</button>
							<button type="button" class="btn btn-info ml-1"
								data-bs-dismiss="modal">
								<i class="bx bx-check d-block d-sm-none"></i> <span
									class="d-none d-sm-block">승인</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 회원정보 수정 modal -->
		<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
				<form action="updateUsers" method="post">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">회원정보수정</h5>
						<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
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
										<input type="text" class="form-control" placeholder="ID"
											id="first-name-icon" name="id">
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
										<input type="text" class="form-control" placeholder="Name" id="first-name-icon" name="name">
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
										<input type="email" class="form-control" placeholder="Email" id="first-name-icon" name="email">
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
										<input type="text" class="form-control" placeholder="Mobile" name="phonenum">
										<div class="form-control-icon">
											<i data-feather="phone"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<label>Address</label>
							</div>
							<div class="col-md-8">
								<div class="form-group has-icon-left">
									<div class="position-relative">
										<input type="text" class="form-control" placeholder="Address" name="address">
										<div class="form-control-icon">
											<i data-feather="file"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="card-body">
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
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
											<i class="bx bx-x d-block d-sm-none"></i> <span
												class="d-none d-sm-block">닫기</span>
										</button>

										<button type="button" class="btn btn-primary ml-1" data-bs-dismiss="modal">
											<i class="bx bx-check d-block d-sm-none"></i> <span
												class="d-none d-sm-block">수정</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				  </form>
				</div>
			</div>
		</div>
	</div>


	<!--삭제 Modal -->
	<div class="modal fade text-left" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
			<div class="modal-content">
			<form action="deleteUsers" method="post">
				<div class="modal-header bg-danger">
					<h5 class="modal-title white" id="myModalLabel120">회원삭제</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<i data-feather="x"></i>
					</button>
				</div>
				<div class="modal-body">정말로 회원을 삭제하시겠습니까?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
						<i class="bx bx-x d-block d-sm-none"></i> 
						<span class="d-none d-sm-block">닫기</span>
					</button>
					<button type="button" class="btn btn-danger ml-1" data-bs-dismiss="modal">
						<i class="bx bx-check d-block d-sm-none"></i> 
						<span class="d-none d-sm-block">확인</span>
					</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	
<!-- 수정 modal 창 -->
<script>
$(function(){
	
	$("#exampleModalLong").on('show.bs.modal', function(){
		var button = $(event.delegateTarget);
		let edit = button.closest('tr').find('td');
		$("#exampleModalLong").find('[name=id]').val(edit.eq(0).text());
		$("#exampleModalLong").find('[name=name]').val(edit.eq(1).text());
		$("#exampleModalLong").find('[name=email]').val(edit.eq(5).text());
		$("#exampleModalLong").find('[name=phonenum]').val(edit.eq(2).text());
		$("#exampleModalLong").find('[name=address]').val(edit.eq(4).text());
		
	});
	
	$("#delete").on('show.bs.modal', function(){
		var button = $(event.delegateTarget);
		let del = button.closest('tr').find('td').eq(0).text();
	});
})
</script>
