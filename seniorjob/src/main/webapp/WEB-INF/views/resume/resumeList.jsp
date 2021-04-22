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
        	function delRe(str){
        		var yn = confirm("정말 삭제하시겠습니까?");
        		if(yn){
        			frm.action = "resumeDelete?resume_no="+str;
        			frm.submit();
        		}
        	}
        	
        	function ckRe(num) {
        		var url = "checkReForm?resume_no="+num;
        		window.open(url,"","width=500, height=600");
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
                            <form action="" method="post" name="frm">  
								<div class="section property-features" align="center"> 
								<input type="text" name="id" id="id" value=${users.id }>
                                    <h4 class="s-property-title">이력서 제목 | 수정 | 삭제 | 인쇄/PDF | WORD 변환 | 첨삭</h4>
                                    <c:forEach items="${list }" var = "resume">  
                                    <c:if test="${resume.id eq users.id }">
                                    	<ul>
                                        <li><a onclick="location.href='resumeGetForm?resume_no=${resume.resume_no}'">${resume.resume_title }</a></li> 
                                    	<li><a><button type="button" onclick="location.href='resumeUpdateForm?resume_no=${resume.resume_no}'">수정</button></a></li>
                                    	<li><a><button type="button" onclick="delRe('${resume.resume_no}')">삭제</button></a></li>
                                    	<!-- 인쇄랑 PDF 저장 같이 됨. -->
                                    	<li><a><button type="button" onclick="location.href='resumeUpdateForm?resume_no=${resume.resume_no}'">인쇄/PDF</button></a></li>
                                    	<li><a><button type="button" onclick="location.href='resumeWord?resume_no=${resume.resume_no}'">WORD 변환</button></a></li>
                                    	<li><button type="button" onclick="location.href='seeCkRe?resume_no=${resume.resume_no}'">보기</button>&nbsp;
                                    	    <button type="button" onclick="ckRe('${resume.resume_no}')">보내기</button></li>
                                    	</ul>
                                    </c:if>	
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