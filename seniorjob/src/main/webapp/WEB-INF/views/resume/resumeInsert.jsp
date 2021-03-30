<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
<%-- <%@ page contentType="application/vnd.ms-excel;charset=EUC-KR"%>  	 --%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<jsp:include page="../topHeader.jsp"></jsp:include>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function middle() {
		alert("저장 됐습니다.");
	}
</script>
</script>
<!-- 글자수세기 -->
<script>
	var total = 4000;
	function counter() {
		var check = document.frm.self_content.value.length;
		var cnt = 4000 - check;
		document.frm.cnt.value = cnt;
	}
	function middle() {
		alert("저장 됐습니다.");
	}
</script>
<!-- 글자수세기(이력서 항목 추가+) -->
<script>
	var total2 = 4000;
	function counter2() {
		var check2 = document.frm.self_content2.value.length;
		var cnt2 = 4000 - check2;
		document.frm.cnt2.value = cnt2;
	}
</script>
<body>
	<div class="content-area recent-property padding-top-40"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<jsp:include page="../mypage.jsp"></jsp:include>
				<div
					class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<!--                      <div class="" id="contact1">                         -->
					<!-- /.row -->
					<div align="center">
						<h2>이력서 등록</h2>
					</div>
					<h5>이력서 항목</h5>
					<a href="">자격증</a> 
					<a href="#step1" data-toggle="tab"><button type="button">보기+</button></a> &nbsp;&nbsp; 
					<a href="">포트폴리오</a> 
					<a href="#step2" data-toggle="tab"><button type="button">보기+</button></a> &nbsp;&nbsp;
					<a href="">자기소개서</a> 
					<a href="#step3" data-toggle="tab"><button type="button">보기+</button></a>
					<hr>
					<form action="resumeInsert" method="post" name="frm">
						<div class="row">
							<div><input type="hidden" value="${ResumeVO.resume_no }" id="resume_no" name="resume_no"></div>
							<h3>필수기입 항목</h3>
							<div class="col-sm-6">
								<div class="form-group">
									<label>사진</label> 
									<input type="file" class="form-control" id="image" name="image">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>이름</label> 
									<input type="text" class="form-control" id="resume_name" name="resume_name">
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group">
									<label>생년월일</label> 
									<input type="text" class="form-control" id="resume_birth" name="resume_birth" placeholder="생년월일 6자리를 기입하여 주세요.">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Email</label> 
									<input type="email" class="form-control" id="resume_email" name="resume_email">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>휴대폰 번호</label> 
									<input type="text" class="form-control" id="resume_phone" name="resume_phone">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>주소</label> 
									<input type="text" class="form-control" id="resume_address" name="resume_address">
								</div>
							</div>
							<br> <br> <br> <br> <br> <br> <br>
							
							<h3>학력사항</h3>

							<div class="col-sm-6">
								<div class="form-group">
									<label>학교명</label> 
									<input type="text" class="form-control" id="resume_school" name="resume_school">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>지역</label> 
									<input type="text" class="form-control" id="resume_area" name="resume_area">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>입학일</label> 
									<input type="date" class="form-control" id="resume_start" name="resume_start">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>졸업일</label> 
									<input type="date" class="form-control" id="resume_end" name="resume_end">
								</div>
							</div>
							<br> <br> <br> <br>
							<div class="tab-content">
								<div class="tab-pane" id="step1">
									<h3>자격증</h3>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="firstname">항목</label> <select>
												<option value="" id="certi_kinds">IT</option>
												<option value="" id="certi_kinds">세무/회계</option>
												<option value="" id="certi_kinds">건축</option>
												<option value="" id="certi_kinds">농업</option>
												<option value="" id="certi_kinds">디자인</option>
												<option value="" id="certi_kinds">보건/의료</option>
												<option value="" id="certi_kinds">기계제작</option>
												<option value="" id="certi_kinds">전기</option>
												<option value="" id="certi_kinds">기타</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject">합격구분</label> <select>
												<option id="accept">1차합격</option>
												<option id="accept">2차합격</option>
												<option id="accept">필기합격</option>
												<option id="accept">실기합격</option>
												<option id="accept">최종합격</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="lastname">자격증명</label> 
											<input type="text" class="form-control" id="certi_name">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="email">발행처/기관</label> 
											<input type="text" class="form-control" id="certi_place">
										</div>
									</div>

									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject">취득일</label> 
											<input type="date" class="form-control" id="certi_date">
										</div>
									</div>
								</div>
							</div>
							<br> <br> <br> <br> <br> <br> <br>
							<br> <br>
							<div class="tab-content">
								<div class="tab-pane" id="step2">
									<h3>포트폴리오</h3>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject">포트폴리오 및 기타문서</label> 
											<input type="file" class="form-control" id="portfolio">
										</div>
									</div>
								</div>
							</div>
							<br> <br> <br> <br> <br>
							<div class="tab-content">
								<div class="tab-pane" id="step3">
									<h3>자기소개서</h3>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject"></label> 
											<input type="text" class="form-control" id="self_name" name="self_name" placeholder="자기소개서 제목">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="message"></label>
											<textarea id="self_content" name="self_content" class="form-control" 
											placeholder="내용을 입력하세요." onkeyup="counter()"></textarea>
										</div>
									</div>
									<div class="col-sm-12">
										<input type="text" id="cnt" name="cnt">글자 입력이 가능합니다.
									</div>
									<div class="tab-content">
										<div class="tab-pane" id="step4">
											<div class="col-sm-12">
												<div class="form-group">
													<label for="message"></label>
													<textarea id="self_content2" name="self_content2" class="form-control" 
													placeholder="내용을 입력하세요." onkeyup="counter2()"></textarea>
												</div>
											</div>
											<div class="col-sm-12">
												<input type="text" id="cnt2" name="cnt2">글자 입력이 가능합니다.
											</div>
										</div>
									</div>
									<br><br><br><br><br><br>
                                    <div class="col-sm-12" align="right">
                                        <a href="#step4" data-toggle="tab"><button type="button" class="btn btn-primary">자기소개서 항목 추가+</button></a>
                                    </div>
								</div>
								<br> <br> <br> <br>
								<div class="col-sm-12 text-center">
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-envelope-o"></i>이력서 저장
									</button>
									<button type="button" class="btn btn-primary"
										onclick="location='preview'">
										<i class="fa fa-envelope-o"></i>미리보기
									</button>
									<button type="button" class="btn btn-primary"
										onclick="middle()">
										<i class="fa fa-envelope-o"></i>중간저장
									</button>
								</div>
								<br><br><br>
					</form>
				</div>
				<!-- /.row -->
				</form>
			</div>
		</div>
	</div>
	</div>
	<!--         </div> -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>