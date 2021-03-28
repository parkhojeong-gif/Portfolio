<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<%-- <jsp:include page="mypage.jsp" /> --%>
<html class="no-js"> <!--<![endif]-->
    <head>
       <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Contact page</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="resources/assets/css/normalize.css">
        <link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/assets/css/fontello.css">
        <link href="resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="resources/assets/css/price-range.css">
        <link rel="stylesheet" href="resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="resources/assets/css/style.css">
        <link rel="stylesheet" href="resources/assets/css/responsive.css">
  	  
    </head>
    <body>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
        <!-- End of nav bar -->

        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <!-- /.row -->
                            <div align="center"><h2>미리보기</h2></div>
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
                                    
									<br><br><br><br>
                                    <div class="col-sm-12 text-center">
                                        <button type="button" class="btn btn-primary" onclick="location='resumeInsert'"><i class="fa fa-envelope-o"></i>돌아가기</button>
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

        <script src="resources/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/bootstrap-select.min.js"></script>
        <script src="resources/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="resources/assets/js/easypiechart.min.js"></script>
        <script src="resources/assets/js/jquery.easypiechart.min.js"></script>

        <script src="resources/assets/js/owl.carousel.min.js"></script>
        <script src="resources/assets/js/wow.js"></script>

        <script src="resources/assets/js/icheck.min.js"></script>
        <script src="resources/assets/js/price-range.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script src="resources/assets/js/gmaps.js"></script>        
        <script src="resources/assets/js/gmaps.init.js"></script>

        <script src="resources/assets/js/main.js"></script>

    </body>
</html>