<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>           
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<jsp:include page="../topHeader.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        	function delRe(){
        		alert("정말 삭제하시겠습니까?");
        	}
        </script>
    <body>
        <!-- Body content -->
        <!-- property area -->
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container"> 
                        <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                            <form action="" method="post">  
								<div class="section property-features" align="center"> 
                                    <h4 class="s-property-title">이력서 번호 | 이력서 제목 | 수정 | 삭제 | 인쇄 | WORD 변환 | PDF 변환 | 첨삭</h4>
                                    <c:forEach items="${list }" var = "resume">    
                                    	<ul>
                                        <li><a>${resume.resume_no }</a></li> 
                                        <li><a>${resume.self_name }</a></li>
                                    	<li><a><button type="button" onclick="location.href='resumeUpdateForm?resume_no=${resume.resume_no}'">수정</button></a></li>
                                    	<li><a><button type="button" onclick="location.href='resumeDelete?resume_no=${resumeVO.resume_no}'">삭제</button></a></a></li>
                                    	<li><a>인쇄</a></li>
                                    	<li><a>WORD 변환</a></li>
                                    	<li><a>PDF 변환</a></li>
                                    	<li><button type="button" onclick="location='collection'">보기</button>&nbsp;
                                    	    <button type="button" onclick="location=''">보내기</button></li>
                                    </ul>
                                    </c:forEach>
                                </div>
                            </form>
                        </div>
                        <!-- End submit form -->
                    </div> 
                </div>
            </div>
        </div>
	<jsp:include page="../footer.jsp"></jsp:include>
    </body>
</html>