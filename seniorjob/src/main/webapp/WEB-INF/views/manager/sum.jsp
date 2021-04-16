<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="main-content container-fluid">
	<div class="page-title">
		<div class="row">
			<div class="col-12 col-md-6 order-md-1 order-last">
				<h3>매출종합관리</h3>
				<p class="text-subtitle text-muted">매출 종합관리 페이지</p>
			</div>
			<div class="col-12 col-md-6 order-md-2 order-first">
				<nav aria-label="breadcrumb" class='breadcrumb-header'>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="/">메인</a></li>
						<li class="breadcrumb-item active" aria-current="page">매출종합관리</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
</div>

<!-- Bordered table start -->
<div class="row" id="table-bordered">
	<div class="col-12">
		<div class="card">
			<div class="card-header"></div>
			<div class="card-content">
				<div class="card-body">
					<div class="dataTable-search">
						<input class="dataTable-input" placeholder="Search..." type="text">
					</div>
				</div>
				<section class="section">
					<div class="row">
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">월별 매출</h4>
								</div>
								<div class="card-body">
									<canvas id="bar"></canvas>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">월별 매출 합계 현황</h4>
									</div>
									<div class="card-content">
										<div class="card-body">
											<div class="row">
												<div class="col-md-6"></div>
											</div>
											<div class="col-md-6 mb-4">
												<h6>Basic Choices</h6>
												<p>
													Use
													<code>.choices</code>
													class for basic choices control.
												</p>
												<div class="form-group">
													<select class="choices form-select">
														<option value="square">Square</option>
														<option value="rectangle">Rectangle</option>
														<option value="rombo">Rombo</option>
														<option value="romboid">Romboid</option>
														<option value="trapeze">Trapeze</option>
														<option value="traible">Triangle</option>
														<option value="polygon">Polygon</option>
													</select>
												</div>
												<button a href="#" class="btn btn-success">검색</button>
											</div>

											<!-- table bordered -->
											<div class="table-responsive">
												<table class="table table-bordered mb-0">
													<thead>
														<tr>
															<th>멘토링코스번호</th>
															<th>멘토ID</th>
															<th>주문일</th>
															<th>월별 매출 종합</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="text-bold-500">001</td>
															<td></td>
															<td class="text-bold-500">UI/UX</td>
															<td>Remote</td>
															<td>Austin,Taxes</td>

														</tr>
														<tr>
															<td class="text-bold-500">Morgan Vanblum</td>
															<td>$13/hr</td>
															<td class="text-bold-500">Graphic concepts</td>
															<td>Remote</td>
															<td>Shangai,China</td>

														</tr>
														<tr>
															<td class="text-bold-500">Tiffani Blogz</td>
															<td>$15/hr</td>
															<td class="text-bold-500">Animation</td>
															<td>Remote</td>
															<td>Austin,Texas</td>

														</tr>
														<tr>
															<td class="text-bold-500">Ashley Boul</td>
															<td>$15/hr</td>
															<td class="text-bold-500">Animation</td>
															<td>Remote</td>
															<td>Austin,Texas</td>

														</tr>
														<tr>
															<td class="text-bold-500">Mikkey Mice</td>
															<td>$15/hr</td>
															<td class="text-bold-500">Animation</td>
															<td>Remote</td>
															<td>Austin,Texas</td>

														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Bordered table end -->

						</div>

					</div>
				</section>
			</div>
		</div>
	</div>
</div>

