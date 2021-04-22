<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<jsp:include page="../topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 저장하기(필수항목 기입) -->
<script>
	$(function(){
		$('#addForm').click(function(){
			var yn = true;
			$("#frm").find("input[name^=resume_]").each(function(index, item){
				if($(this).val().trim() == ''){
					alert($(this).attr("data-name") + "항목을 입력하세요.");
					$(this).focus();
					yn = false;
					return false;
				}
			});
			//필수항목 기입 후 insert
			if(yn){
				frm.action = "resumeInsert";
				frm.submit();
				return true;
			}
		})
		
	})
</script>
<!-- 글자수세기 -->
<script>
	/* var total = 2000;
	function counter() {
		var check = document.frm.self_content.value.length;
		var cnt = 2000 - check;
		document.frm.cnt.value = cnt;
	} */
	
	$(document).ready(function(){
		$("textarea").keyup(function(){
			var inputLength = $(this).val().length;
			if(inputLength > 2000) {
				alert("입력 가능한 글자수를 초과 했습니다.");
			}
			var remain = 2000 - inputLength;
			$("h5").html(remain + "자까지 입력 가능합니다.");
		})
	})
</script>

<script>
	/* 이미지 미리보기 */
	function setImage(event) {
		var reader = new FileReader();

		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").append(img);
			/* 사진을 바꾸면 기존 이미지 삭제 후, 다시 append */
			if(img.src != img){
	 			$('#image_container').find('img').remove();
	 			document.querySelector("div#image_container").append(img);			
			}
		}
			reader.readAsDataURL(event.target.files[0]);
	}


</script>
<!-- 미리보기(preview) -->
<script>
	$(document).on("click", "#preview", function(){
		window.name = "resumeInsertForm";
		var openWin = window.open("preview",
                "미리보기", "width=900, height=900, resizable = no, scrollbars = no");
	})
	
	/* 영상 */
	$(document).on("click", "#video", function(){
		window.open("https://192.168.0.56:85",
                "영상", "width=1000, height=1000, resizable = no, scrollbars = no");
	})
	
	/* 채팅 */
	$(document).on("click", "#chatt", function(){
		window.open("chat",
                "채팅", "width=1000, height=1000, resizable = no, scrollbars = yes");
	})
</script>
<!-- 자기소개서 항목 추가 -->
<script>
	var self_number = 1;
	$(document).on("click", "#selfAdd" ,function addSelf(){
			var array = "<div class='col-sm-6'>"
				  + "<div class='form-group'>" 
				  + "<label>제목</label>"
				  + "<input type='text' class='form-control' id='self_name' name='slist["+ self_number +"].self_name' placeholder='자기소개서 제목'>"
				  + "</div>"
				  + "</div>"
				  + "<div class='col-sm-12'>" 
				  + "<div class='form-group'>" 
				  + "<label>내용</label>"
				  + "<textarea id='self_content' name='slist[" + self_number + "].self_content' class='form-control' placeholder='내용을 입력하세요.'></textarea>"
				  + "<h5>2000자까지 입력 가능합니다.</h5>"
				  + "</div>"
				  + "</div>"
				  + "<br><br><br><br><br><br>";
				  
				    $("div[id=step3]").append(array);
			    	self_number++;
	})	 
				 

<!-- 자격증 항목 추가+ -->
	var certi_number = 1;
	$(document).on("click", "#certiAdd", function(){
		var certi = "<div class='col-sm-6'>"
				  + "<div class='form-group'>"
				  + "<label>항목</label>"
				  + "<input type='hidden' name='clist["+certi_number+"].certi_kind'>"
				  + "<select id='certi_kinds' name='clist["+certi_number+"].certi_kinds'>"
				  + "<option value='IT'>IT</option>"
				  + "<option value='세무/회계'>세무/회계</option>"
				  + "<option value='건축'>건축</option>"
				  + "<option value='농업'>농업</option>"
				  + "<option value='디자인'>디자인</option>"
				  + "<option value='보건/의료'>보건/의료</option>"
				  + "<option value='기계제작'>기계제작</option>"
				  + "<option value='전기'>전기</option>"
				  + "<option value='기타'>기타</option>"
				  + "<select>"
				  + "</div>"
				  + "</div>"
				  + "<div class='col-sm-6'>"
				  + "<div class='form-group'>"
				  + "<label>합격구분</label>"
				  + "<select name='clist["+certi_number+"].accept' id='accept>'"
				  + "<option value='1차합격'>1차합격</option>"
				  + "<option value='2차합격'>2차합격</option>"
				  + "<option value='필기합격'>필기합격</option>"
				  + "<option value='실기합격'>실기합격</option>"
				  + "<option value='최종합격'>최종합격</option>"
				  + "</select>"
				  + "</div>"
				  + "</div>"
				  + "<div class='col-sm-6'>"
				  + "<div class='form-group'>"
				  + "<label>자격증명</label>"
				  + "<input type='text' class='form-control' id='certi_name' name='clist["+certi_number+"].certi_name'>"
				  + "</div>"
				  + "</div>"
				  + "<div class='col-sm-6'>"
				  + "<div class='form-group'>"
				  + "<label>발행처/기관</label>"
				  + "<input type='text' class='form-control' id='certi_place' name='clist["+certi_number+"].certi_place'>"
				  + "</div>"
				  + "</div>"
				  + "<div class='col-sm-6'>"
				  + "<div class='form-group'>"
				  + "<label>취득일</label>"
				  + "<input type='date' class='form-control' id='certi_date' name='clist["+certi_number+"].certi_date'>"
				  + "</div>"
				  + "</div>"
				  + "<br><br><br><br><br><br><br><br><br><br><br><br><br>";
				  
				  $("div[id=step1]").append(certi);
				  certi_number++;
	})
	
	
	
	/* 내 정보 불러오기 */
	$(document).on("click", "#resume_in", function(){
		$("#resume_name").val('${user.name}');
		$("#resume_birth").val('${user.birth}')
		$("#resume_email").val('${user.email}')
		$("#resume_phone").val('${user.phonenum}')
		$("#resume_address").val('${user.address}')
	})
	
</script>

<!-- 이미지 미리보기 스타일 적용 -->
<style>
	.select_img img{width: 90px; height:90px; margin:20px 0;}
</style>	
<body>
<!-- responsebody(ajax)  >>  List<vo> 담아서 하기(자기소개서, 자격증), for문 사용 -->
	<div class="content-area recent-property padding-top-40"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<jsp:include page="../mypage.jsp"></jsp:include>
				<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties" id="d">
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
					<form id="frm" action="resumeInsert" method="post" name="frm" encType="multipart/form-data" target="openWin">
						<div class="row">
							<div><input type="hidden" value=${ResumeVO.resume_no } id="resume_no" name="resume_no"></div>
							<h3>필수기입 항목</h3>
							<div align="right"><button type="button" id="resume_in" name="resume_in">내 정보 불러오기</button></div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>이력서 제목</label> 
									<input type="text" class="form-control" name="resume_title" id="resume_title" data-name="이력서 제목">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>사진</label> 
									<input type="file" class="form-control" name="uploadFile" multiple="multiple" onchange="setImage(event)">
									<div id="image_container" name="image_container" class="select_img"></div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>이름</label> 
									<input type="text" class="form-control" id="resume_name" name="resume_name" data-name="이름">
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group">
									<label>생년월일</label> 
									<input type="text" class="form-control" id="resume_birth" name="resume_birth" placeholder="생년월일 6자리를 기입하여 주세요." data-name="생일">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Email</label> 
									<input type="email" class="form-control" id="resume_email" name="resume_email" data-name="이메일">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>휴대폰 번호</label> 
									<input type="text" class="form-control" id="resume_phone" name="resume_phone" data-name="핸드폰번호">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>주소</label> 
									<input type="text" class="form-control" id="resume_address" name="resume_address" data-name="주소">
								</div>
							</div>
							<br><br><br><br><br><br><br><br><br>
							<h3>학력사항</h3>

							<div class="col-sm-6">
								<div class="form-group">
									<label>학교명</label> 
									<input type="text" class="form-control" id="resume_school" name="resume_school" data-name="학교">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>전공</label> 
									<input type="text" class="form-control" id="resume_major" name="resume_major" data-name="전공">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>지역</label> 
									<input type="text" class="form-control" id="resume_area" name="resume_area" data-name="지역">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>입학일</label> 
									<input type="date" class="form-control" id="resume_start" name="resume_start" data-name="입학일">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>졸업일</label> 
									<input type="date" class="form-control" id="resume_end" name="resume_end" data-name="졸업일">
								</div>
							</div>
							<br> <br> <br> <br><br> <br> <br> <br>
							<div class="tab-content">
								<div class="tab-pane" id="step2">
									<h3>포트폴리오</h3>
									<div class="col-sm-6">
										<div class="form-group">
											<label>포트폴리오 및 기타문서</label> 
											<input type="file" class="form-control" name="portFile" multiple="multiple">
										</div>
									</div>
								</div>
							</div>
							<br><br><br><br><br><br><br>
							<div class="tab-content">
								<div class="tab-pane" id="step1">
									<h3>자격증</h3>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="firstname">항목</label> 
											<select id = "certi_kinds" name = "clist[0].certi_kinds">
												<option value="IT">IT</option>
												<option value="세무/회계">세무/회계</option>
												<option value="건축">건축</option>
												<option value="농업">농업</option>
												<option value="디자인">디자인</option>
												<option value="보건/의료">보건/의료</option>
												<option value="기계제작">기계제작</option>
												<option value="전기">전기</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject">합격구분</label> 
											<select name="clist[0].accept" id="accept">
												<option value="1차합격">1차합격</option>
												<option value="2차합격">2차합격</option>
												<option value="필기합격">필기합격</option>
												<option value="실기합격">실기합격</option>
												<option value="최종합격">최종합격</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="lastname">자격증명</label> 
											<input type="text" class="form-control" id="certi_name" name="clist[0].certi_name">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="email">발행처/기관</label> 
											<input type="text" class="form-control" id="certi_place" name="clist[0].certi_place">
										</div>
									</div>

									<div class="col-sm-6">
										<div class="form-group">
											<label for="subject">취득일</label> 
											<input type="date" class="form-control" id="certi_date" name="clist[0].certi_date">
										</div>
									</div>
									<div class="col-sm-12" align="right">
                                        <a href="#step4" data-toggle="tab">
                                        <button type="button" class="btn btn-primary" id="certiAdd" name="clist[0].certiAdd">자격증 항목 추가+</button></a>
                                    </div>
								</div>
							</div>
							<br><br><br><br><br><br><br><br><br>
							<br><br><br><br><br><br><br><br><br>
								<div class="tab-content">
									<div class="tab-pane" id="step3" name="step3">
										<h3>자기소개서</h3>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="subject">제목</label> 
												<input type="text" class="form-control" id="self_name" name="slist[0].self_name" placeholder="자기소개서 제목">
											</div>
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<label for="message">내용</label>
												<textarea id="self_content" name="slist[0].self_content" class="form-control" placeholder="내용을 입력하세요." cols="80"></textarea>  <!-- onkeyup="counter()" -->
												<h5>2000자까지 입력 가능합니다.</h5>
											</div>
										</div>
	                                    <div class="col-sm-12" align="right">
	                                        <a href="#step4" data-toggle="tab">
	                                        <button type="button" class="btn btn-primary" id="selfAdd" name="selfAdd">자기소개서 항목 추가+</button></a>
	                                    </div>
										</div>
									</div> 
									<br><br><br><br><br><br>
								</div>
								<br> <br> <br> <br>
								<div class="col-sm-12 text-center">
									<button type="button" class="btn btn-primary" name="addForm" id="addForm">
										<i class="fa fa-envelope-o"></i>이력서 저장
									</button>
									<button type="button" class="btn btn-primary" name="preview" id="preview">
										<i class="fa fa-envelope-o"></i>미리보기
									</button>
								</div>
								<br><br><br>
						</form>
									<button name="video" id="video">영상</button>
									<!-- 채팅 -->
									<button name="chatt" id="chatt">채팅</button>
					</div>
					<!-- /.row -->
				</div>
			</div>
		</div>
	<!--         </div> -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>