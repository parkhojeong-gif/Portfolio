<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>         
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        	function sub(str){
        			var frm = document.frm;
        			var str = str;
        			$('#resume_no').attr("value",str);
        			frm.submit();
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
                            <form action="updateSchedule" method="post" name="frm">
                            <input type="hidden" id="seq" name="seq" value="${seq}"> 
                            <input type="hidden" id="resume_no" name="resume_no"> 
								<div class="section property-features" align="center"> 
								<input type="text" name="id" id="id" value=${users.id }>
                                    <h4 class="s-property-title">이력서 제목 | 수정 | 삭제 | 인쇄/PDF | WORD 변환 | 첨삭</h4>
                                    <c:forEach items="${list }" var = "resume">  
                                    <c:if test="${resume.id eq users.id }">
                                    	<ul>
                                    	<li><a onclick="location.href='resumeGetForm?resume_no=${resume.resume_no}'">${resume.resume_title }</a></li> 
                                    	<li><a><button type="button" onclick="sub('${resume.resume_no}')">제출</button></a></li>
                                    	
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
    </body>
</html>