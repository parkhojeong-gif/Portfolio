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
    </head>
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
                            <form>
                                <div class="row">
                           		   <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">사진</label>
                                            <input type="file" class="form-control" id="image">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">이름</label>
                                            <input type="text" class="form-control" id="resume_name" value="김자바">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">생년월일</label>
                                            <input type="text" class="form-control" id="resume_birth" value="000101">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="resume_email" value="success@gmail.com">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">휴대폰 번호</label>
                                            <input type="text" class="form-control" id="resume_phone" value="010.1111.1111">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">주소</label>
                                            <input type="text" class="form-control" id="resume_address" value="대구광역시">
                                        </div>
                                    </div>
									<br><br><br><br><br><br><br><br><br><br><br>
                                    <h3>학력사항</h3>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">학교명</label>
                                            <input type="text" class="form-control" id="resume_school" value="예담대학교">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">지역</label>
                                            <input type="text" class="form-control" id="resume_area" value="대구">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">입학일</label>
                                            <input type="date" class="form-control" id="resume_start" value="2018/01/01">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">졸업일</label>
                                            <input type="date" class="form-control" id="resume_end" value="2021/01/01">
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
                                            	<option value="">IT</option>
                                            	<option value="">세무/회계</option>
                                            	<option value="">건축</option>
                                            	<option value="">농업</option>
                                            	<option value="">디자인</option>
                                            	<option value="">보건/의료</option>
                                            	<option value="">기계제작</option>
                                            	<option value="">전기</option>
                                            	<option value="">기타</option>
                                            </select>
                                        </div>
                                    </div>
									 <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">합격구분</label>
                                            <select>
                                            	<option value="">1차합격</option>
                                            	<option value="">2차합격</option>
                                            	<option value="">필기합격</option>
                                            	<option value="">실기합격</option>
                                            	<option value="">최종합격</option>
                                            </select>                                        
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">자격증명</label>
                                            <input type="text" class="form-control" id="lastname" value="SQLD">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">발행처/기관</label>
                                            <input type="text" class="form-control" id="email" value="데이터자격진흥원">
                                        </div>
                                    </div>
                                   
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">취득일</label>
                                            <input type="date" class="form-control" id="subject" value="2021/05/05">
                                        </div>
                                    </div>
                                  	   </div>
                                	</div>
                                	<br><br><br><br><br><br><br><br><br>
                                	<div class="tab-content">
                                    <div class="tab-pane" id="step2">
                                       <h3>포트폴리오</h3>
		                                    <div class="col-sm-6">
		                                        <div class="form-group">
		                                            <label for="subject">포르폴리오 및 기타문서</label>
		                                            <input type="file" class="form-control" id="portfolio">
		                                        </div>
		                                    </div>
                                  	   </div>
                                	</div>
                                	<br><br><br><br><br>
                                	<div class="tab-content">
                                    <div class="tab-pane" id="step3">
                                       <h3>자기소개서</h3>
	                                    <div class="col-sm-6">
	                                        <div class="form-group">
	                                            <label for="subject"></label>
	                                            <input type="text" class="form-control" id="self_title" value="어쩌고 자기소개서입니다.">
	                                        </div>
	                                    </div>
	                                    <div class="col-sm-12">
	                                        <div class="form-group">
	                                            <label for="message"></label>
	                                            <textarea id="self_content" name="self_content" class="form-control">어쩌고...저쩌고...그랬습니다.</textarea>
	                                        </div>
	                                    </div>
                                	</div>
									<br><br><br><br>
                                    <div class="col-sm-12 text-center">
                                        <button type="button" class="btn btn-primary" onclick="location='resumeList'"><i class="fa fa-envelope-o"></i>목록으로</button>
                                        <button type="button" class="btn btn-primary"><i class="fa fa-envelope-o"></i>수정하기</button>
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