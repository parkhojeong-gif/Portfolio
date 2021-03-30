<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<%-- <jsp:include page="mypage.jsp" /> --%>
<html class="no-js"> <!--<![endif]-->
<jsp:include page="../topHeader.jsp"></jsp:include>
    <body>

        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <!-- /.row -->
                            <div align="center"><h2>수정</h2></div>
                            <a href="">자격증</a>
                            <a href="#step1" data-toggle="tab"><button type="button">보기+</button></a> &nbsp;&nbsp;
                            <a href="">포트폴리오</a>
                            <a href="#step2" data-toggle="tab"><button type="button">보기+</button></a>&nbsp;&nbsp;
                            <a href="">자기소개서</a>
                            <a href="#step3" data-toggle="tab"><button type="button">보기+</button></a>
                            <hr>
                            <form action="resumeUpdate?resume_no=${resumeVO.resume_no }" method="post" name="frm">
                                <div class="row">
                           		   <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">사진</label>
                                            <input type="file" class="form-control" id="image" value=${resumeVO.image }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">이름</label>
                                            <input type="text" class="form-control" id="resume_name" value=${resumeVO.resume_name }>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">생년월일</label>
                                            <input type="text" class="form-control" id="resume_birth" value=${resumeVO.resume_birth }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" id="resume_email" value=${resumeVO.resume_email }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">휴대폰 번호</label>
                                            <input type="text" class="form-control" id="resume_phone" value=${resumeVO.resume_phone }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">주소</label>
                                            <input type="text" class="form-control" id="resume_address" value=${resumeVO.resume_address }>
                                        </div>
                                    </div>
									<br><br><br><br><br><br><br><br><br><br><br>
                                    <h3>학력사항</h3>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">학교명</label>
                                            <input type="text" class="form-control" id="resume_school" value=${resumeVO.resume_school }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">지역</label>
                                            <input type="text" class="form-control" id="resume_area" value=${resumeVO.resume_area }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">입학일</label>
                                            <input type="text" class="form-control" id="resume_start" value=${resumeVO.resume_start }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">졸업일</label>
                                            <input type="text" class="form-control" id="resume_end" value=${resumeVO.resume_end }>
                                        </div>
                                    </div>
                                    <br><br><br><br><br><br><br><br><br>
                                    <div class="tab-content">
                                    <div class="tab-pane" id="step1">
                                       <h3>자격증</h3>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">항목</label>
                                            <select>
                                            	<option value=${certivo.certi_kinds } id="certi_kinds" name="certi_kinds">IT</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">세무/회계</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">건축</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">농업</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">디자인</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">보건/의료</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">기계제작</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">전기</option>
                                            	<option value="" id="certi_kinds" name="certi_kinds">기타</option>
                                            </select>
                                        </div>
                                    </div>
									 <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">합격구분</label>
                                            <select>
                                            	<option value="" id="accept" name="accept">1차합격</option>
                                            	<option value="" id="accept" name="accept">2차합격</option>
                                            	<option value="" id="accept" name="accept">필기합격</option>
                                            	<option value="" id="accept" name="accept">실기합격</option>
                                            	<option value="${certivo.accept }" id="accept" name="accept">최종합격</option>
                                            </select>                                        
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">자격증명</label>
                                            <input type="text" class="form-control" id="certi_name" value=${certivo.certi_name }>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">발행처/기관</label>
                                            <input type="text" class="form-control" id="certi_place" value=${certivo.certi_place }>
                                        </div>
                                    </div>
                                   
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">취득일</label>
                                            <input type="date" class="form-control" id="certi_date" value=${certivo.certi_date }>
                                        </div>
                                    </div>
                                  	   </div>
                                	</div>
                                	<br><br><br><br><br><br><br><br><br><br>
                                	<div class="tab-content">
										<div class="tab-pane" id="step2">
											<h3>포트폴리오</h3>
											<div class="col-sm-6">
												<div class="form-group">
													<label for="subject">포트폴리오 및 기타문서</label> 
													<input type="file" class="form-control" id="portfolio" name="portfolio" value=${portvo.portfolio }>
												</div>
											</div>
										</div>
									</div>
									<br><br><br><br>
									<div class="tab-content">
									<div class="tab-pane" id="step3">
										<h3>자기소개서</h3>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="subject"></label> 
												<input type="text" class="form-control" id="self_name" name="self_name" placeholder="자기소개서 제목" value=${selfvo.self_name }>
											</div>
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<label for="message"></label>
												<textarea id="self_content" name="self_content" class="form-control" 
												placeholder="내용을 입력하세요." value=${selfvo.self_content }></textarea>
											</div>
										</div>
									</div>
									<br><br><br><br>
                                    <div class="col-sm-12 text-center">
                                        <button type="button" class="btn btn-primary" onclick="location='resumeList'"><i class="fa fa-envelope-o"></i>목록으로</button>
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i>수정하기</button>
                                    </div>
                                </div>
                                </div>
                                <!-- /.row -->
                            </form>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
        </div>
		<jsp:include page="../footer.jsp"></jsp:include>
    </body>
</html>