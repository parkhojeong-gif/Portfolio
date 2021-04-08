<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>		

			<div class="main-content container-fluid">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>커뮤니티관리</h3>
							<p class="text-subtitle text-muted">커뮤니티(후기) 세부 목록을 보여줍니다.</p>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class='breadcrumb-header'>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/">메인</a></li>
									<li class="breadcrumb-item active" aria-current="page">커뮤니티(후기)</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<section class="section">
					<div class="card">
						<div class="card-header">후기 테이블</div>
						<div class="card-body">
						<div class="dataTable-search">
								<input class="dataTable-input" placeholder="Search..."
									type="text">
							</div>
							<table class='table table-striped' id="table1">
								<thead>
									<tr>
										<th>작성자ID</th>
										<th>멘토링 코스번호</th>
										<th>후기 제목</th>
										<th>후기 작성일자</th>
										<th>후기 내용</th>
										<th>첨부파일</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="reviews" items="${list}">
									<tr>
										<td>${reviews.id}</td>
										<td>${reviews.mentoring_number}</td>
										<td>${reviews.title}</td>
										<td>${reviews.w_date}</td>
										<td>${reviews.content}</td>
										<td>${reviews.r_file}</td>
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

		<!--Delete theme Modal -->
		<div class="modal fade text-left" id="delete" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
				role="document">
				<div class="modal-content">
					<div class="modal-header bg-danger">
						<h5 class="modal-title white" id="myModalLabel120">멘토삭제</h5>
						<button type="button" class="close" data-bs-dismiss="modal"
							aria-label="Close">
							<i data-feather="x"></i>
						</button>
					</div>
					<div class="modal-body">
					정말로 멘토를 삭제하시겠습니까?
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


	<