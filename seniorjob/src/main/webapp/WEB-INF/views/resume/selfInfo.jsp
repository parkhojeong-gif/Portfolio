<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<jsp:include page="../topHeader.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- 글자수세기 -->
		<script>
		var total = 4000;
		function counter(){
			var check = document.frm.self_content.value.length;
			var cnt = 4000 - check;
			document.frm.cnt.value = cnt;
		}
        function middle(){
        	alert("저장 됐습니다.");
        }
		</script>
		<!-- 글자수세기(이력서 항목 추가+) -->
		<script>
		var total2 = 4000;
		function counter2(){
			var check2 = document.frm.self_content2.value.length;
			var cnt2 = 4000 - check2;
			document.frm.cnt2.value = cnt2;
		}
		</script>
    <body>

        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <!-- /.row -->
                            <div align="center"><h2>이력서 등록</h2></div>
                            <h5><a href="resumeInsert">이력서 항목</a></h5>
                            <a href="">자격증</a>
                            <button type="button" onclick="location='certi'">추가+</button>
                            <a href="">포트폴리오</a>
                            <button type="button" onclick="location='portfolio'">추가+</button>
                            <a href="">자기소개서</a>
                            <button type="button">추가+</button>
                            <hr>
                            <form name="frm">
                                <div class="row">
                           		  <h3>자기소개서</h3>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject"></label>
                                            <input type="text" class="form-control" id="self_title" value="자기소개서 제목">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="message"></label>
                                            <textarea id="self_content" name="self_content" class="form-control" placeholder="내용을 입력하세요." onkeyup="counter()"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <input type="text" id="cnt" name="cnt">글자 입력이 가능합니다.
                                    </div>
                                    <div class="tab-content">
                                    <div class="tab-pane" id="step2">
                                       <div class="col-sm-12"> 
                                       		<div class="form-group">
                                          		<label for="message"></label>
                                           		<textarea id="self_content2" name="self_content2" class="form-control" placeholder="내용을 입력하세요." onkeyup="counter2()"></textarea>
                                        	</div>
                                      	 </div>
                                      	 <div class="col-sm-12">
                                       		 <input type="text" id="cnt2" name="cnt2">글자 입력이 가능합니다.
                                   		 </div>
                                  	   </div>
                                	</div>
                                    
                                    <br><br><br><br><br><br>
                                    <div class="col-sm-12" align="right">
                                        <a href="#step2" data-toggle="tab"><button type="button" class="btn btn-primary">자기소개서 항목 추가+</button></a>
                                    </div>
                                    
                                    <br><br><br><br><br><br>
                                    <div class="col-sm-12 text-center">
                                        <button type="button" class="btn btn-primary" onclick="location='preview'"><i class="fa fa-envelope-o"></i>미리보기</button>
                                        <button type="button" class="btn btn-primary" onclick="middle()"><i class="fa fa-envelope-o"></i>중간저장</button>
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i>이력서 저장</button>
                                    </div>
                                </div>
                                <!-- /.row -->
                                
                            </form>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
	<<jsp:include page="../footer.jsp"></jsp:include>
    </body>
</html>