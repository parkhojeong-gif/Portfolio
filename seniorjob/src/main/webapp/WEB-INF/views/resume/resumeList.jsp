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
                            <table style="color: orange">     
                            	<tr>
                                    <td><a data-toggle="tab">이력서 제목 </a></td>
                                    <td><a data-toggle="tab">수정 </a></td>
                                    <td><a data-toggle="tab">삭제 </a></td>
                                    <td><a data-toggle="tab">인쇄 </a></td>
                                    <td><a data-toggle="tab">워드 변환 </a></td>
                                    <td><a data-toggle="tab">PDF 변환 </a></td>
                                    <td><a data-toggle="tab">첨삭 </a></td>
                                </tr>        
                                <tr>
									<td><a data-toggle="tab">첫번째 이력서 </a></td>&nbsp;&nbsp;&nbsp;
									<td><a data-toggle="tab"><button type="button" onclick="location='resumeUpdate'">수정</button></a></td>
									<td><a data-toggle="tab"><button type="submit" onclick="delRe()">삭제</button></a></td>
									<td><a data-toggle="tab">인쇄 </a></td>
								    <td><a data-toggle="tab">WORD 변환 </a></td>
									<td><a data-toggle="tab">PDF 변환 </a></td>
									<td><a data-toggle="tab"><button type="button" onclick="location='collection'">확인하기</button></a></td>
								</tr>
<!--                                 <div class="wizard-footer"> -->

<!--                                     <div class="pull-left"> -->
<!--                                         <input type='button' class='btn btn-previous btn-default' name='previous' value='Previous' /> -->
<!--                                     </div> -->
<!--                                     <div class="clearfix"></div>                                             -->
<!--                                 </div>	 -->
                                </table>      
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