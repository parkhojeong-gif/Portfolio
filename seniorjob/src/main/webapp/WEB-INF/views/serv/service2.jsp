<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.css">

<link rel="stylesheet"
	href="resources/assets/vendors/chartjs/Chart.min.css">

<link rel="stylesheet"
	href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="resources/assets/css/app.css">
<link rel="shortcut icon" href="resources/assets/images/favicon.svg"
	type="image/x-icon">
<style type="text/css">

.dataTable-search {
width : 1000px ;
position : absolute;
right : 0px;

}

.dataTable-input{
position : absolute;
right : 0px;
bottom : 5px;

}
</style>		
</head>

<body>
	<div id="app">
		<div id="sidebar" class='active'>
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<img src="assets/images/logo.svg" alt="" srcset="">
				</div>
				<div class="sidebar-menu">
					<ul class="menu">


						<li class='sidebar-title'>관리자 페이지</li>
						<a href="/" class='sidebar-link'>
                                <i data-feather="user" width="20"></i>
                                <span>메인으로</span>
                            </a>

						<li class='sidebar-title'>관리 목록</li>



						<li class="sidebar-item  "><a href="./user"
							class='sidebar-link'> <i data-feather="user" width="20"></i>
								<span>회원관리</span>
						</a></li>


						<li class="sidebar-item  "><a href="./mentor"
							class='sidebar-link'> <i data-feather="user" width="20"></i>
								<span>멘토관리</span>
						</a></li>

						<li class="sidebar-item  "><a href="/declaration"
							class='sidebar-link'> <i data-feather="alert-circle" width="20"></i>
								<span>신고관리</span>
						</a></li>

						<li class="sidebar-item  has-sub"><a href="#"
							class='sidebar-link'> <i data-feather="trending-up"
								width="20"></i> <span>매출관리</span>
						</a>

							<ul class="submenu ">

								<li><a href="./sum">매출 종합 관리</a></li>

							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#"
							class='sidebar-link'> <i data-feather="user" width="20"></i>
								<span>커뮤니티</span>
						</a>

							<ul class="submenu ">

								<li><a href="/community">공지사항</a></li>

								<li><a href="/com_later">후기</a></li>

							</ul></li>

						<li class="sidebar-item  has-sub"><a href="#"
							class='sidebar-link'> <i data-feather="file-text" width="20"></i>
								<span>고객센터</span>
						</a>

							<ul class="submenu ">

								<li><a href="/service">결제/환불</a></li>

								<li><a href="/service2">취소/신청</a></li>
								
							</ul></li>

					</ul>
				</div>
				<button class="sidebar-toggler btn x">
					<i data-feather="x"></i>
				</button>
			</div>
		</div>
		<div id="main">
			<nav class="navbar navbar-header navbar-expand navbar-light">
				<a class="sidebar-toggler" href="#"><span
					class="navbar-toggler-icon"></span></a>
				<button class="btn navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul
						class="navbar-nav d-flex align-items-center navbar-light ms-auto">
						<li class="dropdown nav-icon"><a href="#"
							data-bs-toggle="dropdown"
							class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-lg-inline-block">
									<i data-feather="bell"></i>
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-large">
								<h6 class='py-2 px-4'>Notifications</h6>
								<ul class="list-group rounded-none">
									<li class="list-group-item border-0 align-items-start">
										<div class="avatar bg-success me-3">
											<span class="avatar-content"><i
												data-feather="shopping-cart"></i></span>
										</div>
										<div>
											<h6 class='text-bold'>New Order</h6>
											<p class='text-xs'>An order made by Ahmad Saugi for
												product Samsung Galaxy S69</p>
										</div>
									</li>
								</ul>
							</div></li>
						<li class="dropdown nav-icon me-2"><a href="#"
							data-bs-toggle="dropdown"
							class="nav-link dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-lg-inline-block">
									<i data-feather="mail"></i>
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="#"><i data-feather="user"></i>
									Account</a> <a class="dropdown-item active" href="#"><i
									data-feather="mail"></i> Messages</a> <a class="dropdown-item"
									href="#"><i data-feather="settings"></i> Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i data-feather="log-out"></i>
									Logout</a>
							</div></li>
						<li class="dropdown"><a href="#" data-bs-toggle="dropdown"
							class="nav-link dropdown-toggle nav-link-lg nav-link-user">
								<div class="avatar me-1">
									<img src="assets/images/avatar/avatar-s-1.png" alt="" srcset="">
								</div>
								<div class="d-none d-md-block d-lg-inline-block">관리자님!
									안녕하세요!</div>
						</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="#"><i data-feather="user"></i>
									Account</a> <a class="dropdown-item active" href="#"><i
									data-feather="mail"></i> Messages</a> <a class="dropdown-item"
									href="#"><i data-feather="settings"></i> Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i data-feather="log-out"></i>
									Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>

			<div class="main-content container-fluid">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>고객센터</h3>
							<p class="text-subtitle text-muted">고객센터 목록을 보여줍니다.</p>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class='breadcrumb-header'>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/">메인</a></li>
									<li class="breadcrumb-item active" aria-current="page">고객센터(취소/신청)</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<section class="section">
					<div class="card">
						<div class="card-header">취소/신청 테이블</div>
						<div class="card-body">
						<div class="dataTable-search">
								<input class="dataTable-input" placeholder="Search..."
									type="text">
							</div>
							<table class='table table-striped' id="table1">
								<thead>
									<tr>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일자</th>
										<th>내용</th>
										<th>첨부파일</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공지사항1</td>
										<td>admin</td>
										<td>2011-01-01</td>
										<td>공지1</td>
										<td>Offenburg.pdf</td>
										<td>
										<a href="#edit" class="edit" data-bs-toggle="modal" onclick="">
										<i data-feather="edit"></i></a>
										</td>
										<td><a href="#delete" class="delete" data-bs-toggle="modal" onclick=""> 
										<i data-feather="alert-circle"></i></a>
										</td>
									</tr>
									<tr>
										<td>공지사항1</td>
										<td>admin</td>
										<td>2011-01-01</td>
										<td>공지1</td>
										<td>Offenburg.pdf</td>
										<td>
										<a href="#edit" class="edit" data-bs-toggle="modal" onclick="">
										<i data-feather="edit"></i></a>
										</td>
										<td><a href="#delete" class="delete" data-bs-toggle="modal" onclick=""> 
										<i data-feather="alert-circle"></i></a>
										</td>
									</tr>
									<tr>
										<td>공지사항1</td>
										<td>admin</td>
										<td>2011-01-01</td>
										<td>공지1</td>
										<td>Offenburg.pdf</td>
										<td>
										<a href="#edit" class="edit" data-bs-toggle="modal" onclick="">
										<i data-feather="edit"></i></a>
										</td>
										<td><a href="#delete" class="delete" data-bs-toggle="modal" onclick=""> 
										<i data-feather="alert-circle"></i></a>
										</td>
									</tr>
									<tr>
										<td>공지사항1</td>
										<td>admin</td>
										<td>2011-01-01</td>
										<td>공지1</td>
										<td>Offenburg.pdf</td>
										<td>
										<a href="#edit" class="edit" data-bs-toggle="modal" onclick="">
										<i data-feather="edit"></i></a>
										</td>
										<td><a href="#delete" class="delete" data-bs-toggle="modal" onclick=""> 
										<i data-feather="alert-circle"></i></a>
										</td>
									</tr>
									<tr>
										<td>공지사항1</td>
										<td>admin</td>
										<td>2011-01-01</td>
										<td>공지1</td>
										<td>Offenburg.pdf</td>
										<td>
										<a href="#edit" class="edit" data-bs-toggle="modal" onclick="">
										<i data-feather="edit"></i></a>
										</td>
										<td><a href="#delete" class="delete" data-bs-toggle="modal" onclick=""> 
										<i data-feather="alert-circle"></i></a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

				</section>
			</div>


		<!--Edit theme Modal -->
			<div class="modal fade text-left" id="edit" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel110" aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
					role="document">
					<div class="modal-content">
						<div class="modal-header bg-success">
							<h5 class="modal-title white" id="myModalLabel110">멘토 정보 수정</h5>
							<button type="button" class="close" data-bs-dismiss="modal"
								aria-label="Close">
								<i data-feather="x"></i>
							</button>
						</div>
						<div class="modal-body">
						
						
						
						
	
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-light-secondary"
								data-bs-dismiss="modal">
								<i class="bx bx-x d-block d-sm-none"></i> <span
									class="d-none d-sm-block">닫기</span>
							</button>

							<button type="button" class="btn btn-success ml-1"
								data-bs-dismiss="modal">
								<i class="bx bx-check d-block d-sm-none"></i> <span
									class="d-none d-sm-block">수정</span>
							</button>
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
	</div>


	<footer>
		<div class="footer clearfix mb-0 text-muted">
			<div class="float-start">
				<p>2020 &copy; Voler</p>
			</div>
			<div class="float-end">
				<p>
					Crafted with <span class='text-danger'><i
						data-feather="heart"></i></span> by <a href="http://ahmadsaugi.com">Ahmad
						Saugi</a>
				</p>
			</div>
		</div>
	</footer>
	</div>
	</div>
	<script src="resources/assets/js/feather-icons/feather.min.js"></script>
	<script
		src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="resources/assets/js/app.js"></script>

	<script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
	<script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
	<script src="resources/assets/js/pages/dashboard.js"></script>

	<script src="resources/assets/js/main.js"></script>
</body>

</html>