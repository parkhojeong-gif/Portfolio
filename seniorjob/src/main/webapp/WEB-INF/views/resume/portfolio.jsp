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
        <script>
        	function middle(){
        		alert("저장 됐습니다.");
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
                            <button type="button" onclick="location='selfInfo'">추가+</button>
                            <hr>
                            <form>
                                <div class="row">
                           		  <h3>포트폴리오</h3>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">포르폴리오 및 기타문서</label>
                                            <input type="file" class="form-control" id="portfolio">
                                        </div>
                                    </div>
                                   <br><br><br><br>
                                    <div class="col-sm-12 text-center">
                                        <button type="button" class="btn btn-primary" onclick="location='preview'"><i class="fa fa-envelope-o"></i>미리보기</button>
                                        <button type="button" class="btn btn-primary" onclick="middle()"><i class="fa fa-envelope-o"></i>중간저장</button>
                                        <button type="button" class="btn btn-primary" onclick="location='resumeList'"><i class="fa fa-envelope-o"></i>이력서 저장</button>
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