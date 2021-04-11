<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="../topHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
/*이전 글, 다음 글 기능  */
function pagePre() {
	var sel = document.getElementById('preId').value;
	if(sel == 0){
		window.alert("이전 글이 없습니다");
	}else{
	location.href="getService_Center?seq=${num.prev }";
	}
	}
function pageNext() {
	var sel = document.getElementById('preId2').value;
	if(sel == 0){
		window.alert("다음 글이 없습니다");
	}else{
	location.href="getService_Center?seq=${num.next }";
	}
	}
$(function(){
	$("#btnUpd").on("click", function(){
		//location.href ="updateEmp?employee_id=${emp.employee_id}"
		location.assign("updateService_CenterForm?seq=${gongji.seq}");

	});
	
	
});
	
/*이전 글, 다음 글 기능  */
</script>
<body>
<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <jsp:include page="sevice_left.jsp"></jsp:include>
 
                    
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                        <h2 class="wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft; text-align: center;">${gongji.title }</h2>
                        <br>
                        <hr>
                        <br>
                        <div class="col-sm-6">
                              <p class="author-category">
                                  By <a href="#">${gongji.id }</a>
                              </p>
                       </div>
                       
                       <div class="col-sm-6 right">
                             <p class="date-comments">
                              <a href="#"><i class="fa fa-calendar-o"></i><fmt:formatDate value="${gongji.w_date }" pattern="yyyy-MM-dd"/></a>
                              <a href="#"><i class="fa fa-check"></i>${gongji.click }</a>
                             </p>
                       </div>

                            <!-- .property-meta -->
							<br><br>
                            <div class="section">
                             <h4 class="s-property-title">${gongji.category_b }</h4>
                                <div class="s-property-content">
                                    <p><h3>${gongji.content }</h3></p>
                                </div>
                            </div>
                            <!-- End description area  -->
                            <input type="hidden" id="preId" value="${num.prev }">
                            <input type="hidden" id="preId2" value="${num.next }">                            
							<div class="post-footer single wow fadeInBottum animated animated" style="visibility: visible;">
                                <ul class="pager">
 						                               
                                    <li class="previous"><a href="#" onclick="pagePre()"><i class=""></i>← 이전 글 </a></li>
                                    <li class="next"><a href="#" onclick="pageNext()">다음 글 →<i class=""></i> </a></li>
                                </ul> 
                            <!-- 수정/삭제-->
                            <div class="button navbar-right">
                        		<button class="navbar-btn nav-button wow bounceInRight login animated"  data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;"id="btnUpd">수정</button>
                        		<button class="navbar-btn nav-button wow fadeInRight animated" onclick="location.href='deleteService_Center?seq=${gongji.seq}'" data-wow-delay="0.48s" style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">삭제</button>
                    		</div>
                    		<br><br><br><br><br><br>
                              <!-- 수정/삭제-->
                            </div>
                            <br>
                              <br>
                            <hr>
                            <p onclick="pagePre()"><이전 글><c:if test="${num.prev eq 0 }">이전 글이 없습니다.</c:if><c:if test="${num.prev ne 0 }">${num.prev_title }</c:if></p>
                            <hr>			
                             <p onclick="pageNext()"><다음 글><c:if test="${num.next eq 0 }">다음 글이 없습니다.</c:if><c:if test="${num.next ne 0 }">${num.next_title }</c:if></p>
                            <hr>			



                            <!-- End video area  -->
                        </div>
                    </div>              
                 
                </div>

            </div>
        </div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>