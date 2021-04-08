<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

			<div class="main-content container-fluid">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>신고관리</h3>
							<p class="text-subtitle text-muted">신고목록을 보여줍니다.</p>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class='breadcrumb-header'>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/">메인</a></li>
									<li class="breadcrumb-item active" aria-current="page">신고관리</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<section class="section">
					<div class="card">
						<div class="card-header">신고 데이터 테이블</div>
						<div class="card-body">
						<div class="dataTable-search">
							<input name="search" placeholder="Search..." type="search"/>
							<button style="position : static; right : 200px;">검색</button>
							</div>
							<table class='table table-striped' id="table1">
								<thead>
									<tr>
										<th>고소인</th>
										<th>피고인</th>
										<th>신고내용</th>
										<th>작성일자</th>
										<th>신고조치</th>
										<th>제재시작</th>
										<th>제재끝</th>
										<th>EDIT</th>
										<th>DELETE</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="dec" items="${list}">
									<tr>
										<td>${dec.dela }</td>
										<td>${dec.defend }</td>
										<td>${dec.content }</td>
										<td>${dec.date }</td>
										<td>${dec.measure }</td>
										<td>${dec.start }</td>
										<td>${dec.end }</td>
										<td></td>
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

		<!--scrollbar Modal -->
		<div class="modal fade" id="exampleModalLong" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLongTitle"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">신고조치</h5>
						<button type="button" class="close" data-bs-dismiss="modal"
							aria-label="Close">
							<i data-feather="x"></i>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-4">
								<label>피고인ID</label>
							</div>
							<div class="col-md-8">
								<div class="form-group has-icon-left">
									<div class="position-relative">
										<input type="text" class="form-control" placeholder="ID"
											id="first-name-icon">
										<div class="form-control-icon">
											<i data-feather="user"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<label>신고내용</label>
							</div>
							<div class="col-md-8">
								<div class="form-group has-icon-left">
									<div class="position-relative">
									<textarea class="form-control" id="exampleFormControlTextarea1"
                                            rows="3"></textarea>
										<div class="form-control-icon">
											<i data-feather="file"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<label>작성일자</label>
							</div>
							<div class="col-md-8">
								<div class="form-group has-icon-left">
									<div class="position-relative">
										<input type="date" class="form-control"
											placeholder="date">
										<div class="form-control-icon">
											<i data-feather="date"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<label>제재시작</label>
							</div>
							<div class="col-md-8">
								<div class="form-group has-icon-left">
									<div class="position-relative">
										<input type="date" class="form-control" placeholder=""
											id="first-name-icon">
										<div class="form-control-icon">
											<i data-feather="date"></i>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<label>제재끝</label>
							</div>
							<div class="col-md-8">
								<div class="form-group has-icon-left">
									<div class="position-relative">
										<input type="date" class="form-control" placeholder="">
										<div class="form-control-icon">
											<i data-feather="date"></i>
										</div>
									</div>
								</div>
							</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-light-secondary"
											data-bs-dismiss="modal">
											<i class="bx bx-x d-block d-sm-none"></i> <span
												class="d-none d-sm-block">Close</span>
										</button>

										<button type="button" class="btn btn-primary ml-1"
											data-bs-dismiss="modal">
											<i class="bx bx-check d-block d-sm-none"></i> <span
												class="d-none d-sm-block">Accept</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		
	

		<!--Delete theme Modal -->
		<div class="modal fade text-left" id="delete" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
				role="document">
				<div class="modal-content">
					<div class="modal-header bg-danger">
						<h5 class="modal-title white" id="myModalLabel120">신고내역삭제</h5>
						<button type="button" class="close" data-bs-dismiss="modal"
							aria-label="Close">
							<i data-feather="x"></i>
						</button>
					</div>
					<div class="modal-body">
					정말로 신고내역을 삭제하시겠습니까?
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-light-secondary"
							data-bs-dismiss="modal">
							<i class="bx bx-x d-block d-sm-none"></i> <span
								class="d-none d-sm-block">닫기</span>
						</button>
						<button type="button" class="btn btn-danger ml-1"
							data-bs-dismiss="modal">
							<i class="bx bx-check d-block d-sm-none"></i> <span
								class="d-none d-sm-block">확인</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	

