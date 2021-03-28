<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Submit property Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        	function delRe(){
        		alert("정말 삭제하시겠습니까?");
        	}
        </script>
        <meta name="description" content="GARO is a real-estate template">
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
        <link href="resources/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="resources/assets/css/price-range.css">
        <link rel="stylesheet" href="resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="resources/assets/css/owl.transitions.css"> 
        <link rel="stylesheet" href="resources/assets/css/wizard.css"> 
        <link rel="stylesheet" href="resources/assets/css/style.css">
        <link rel="stylesheet" href="resources/assets/css/responsive.css">
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        <!-- property area -->
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container"> 

                        <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                            <form action="" method="post">                        
                                <ul>
                                    <li><a href="" data-toggle="tab">이력서 제목 </a></li>
                                    <li><a href="" data-toggle="tab">수정 </a></li>
                                    <li><a href="" data-toggle="tab">삭제 </a></li>
                                    <li><a href="" data-toggle="tab">인쇄 </a></li>
                                    <li><a href="" data-toggle="tab">워드 변환 </a></li>
                                    <li><a href="" data-toggle="tab">PDF 변환 </a></li>
                                    <li><a href="" data-toggle="tab">첨삭 </a></li>
                                </ul>
                                <hr>
								<a href="" data-toggle="tab">첫번째 이력서 </a>&nbsp;&nbsp;&nbsp;
								<a href="resumeUpdate" data-toggle="tab"><button type="button" onclick="location='resumeUpdate'">수정</button></a>
								<a data-toggle="tab"><button type="submit" onclick="delRe()">삭제</button></a>
								<a href="" data-toggle="tab">인쇄 </a>
							    <a href="" data-toggle="tab">WORD 변환 </a>
								<a href="" data-toggle="tab">PDF 변환 </a>
								<a data-toggle="tab"><button type="button" onclick="location='collection'">확인하기</button></a>
                                <div class="wizard-footer">

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-default' name='previous' value='Previous' />
                                    </div>
                                    <div class="clearfix"></div>                                            
                                </div>	
                            </form>
                        </div>
                        <!-- End submit form -->
                    </div> 
                </div>
            </div>
        </div>


        <script src="resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="resources/assets/js//jquery-1.10.2.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/bootstrap-select.min.js"></script>
        <script src="resources/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="resources/assets/js/easypiechart.min.js"></script>
        <script src="resources/assets/js/jquery.easypiechart.min.js"></script>
        <script src="resources/assets/js/owl.carousel.min.js"></script>
        <script src="resources/assets/js/wow.js"></script>
        <script src="resources/assets/js/icheck.min.js"></script>

        <script src="resources/assets/js/price-range.js"></script> 
        <script src="resources/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="resources/assets/js/jquery.validate.min.js"></script>
        <script src="resources/assets/js/wizard.js"></script>

        <script src="resources/assets/js/main.js"></script>


    </body>
</html>