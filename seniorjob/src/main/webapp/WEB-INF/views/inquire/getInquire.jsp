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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>

	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="col-md-12 single-property-content ">
				<div>
					<h5>홈 > 목록전체조회 > 상세보기</h5>
				</div>
			</div>
			<div class="row">
				<div
					class="col-md-12 pr-30 padding-top-40 properties-page user-properties"></div>
				<!--왼쪽 -->
				<jsp:include page="../Service_Center/new_sevice_left.jsp"></jsp:include>
				<!--왼쪽  -->
				<div id="optionVal"
					class="col-md-10 pr-30 padding-top-40 properties-page user-properties">

					<!--작성부분  -->
					  <div class="col-md-8 single-property-content ">
                        <div class="row">
                        <h2 class="wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft; text-align: center;">${list.title }</h2>
                        <br>
                        <hr>
                        <br>
                        <div class="col-sm-6">
                              <p class="author-category">
                                  By <a href="#">${list.id }</a>
                              </p>
                       </div>
                       
                       <div class="col-sm-6 right">
                             <p class="date-comments">
                              <a href="#"><i class="fa fa-calendar-o"></i><fmt:formatDate value="${list.w_date }" pattern="yyyy-MM-dd"/></a>
                              <a href="#"><i class="fa fa-check"></i>${list.click }</a>
                             </p>
                       </div>

                            <!-- .property-meta -->
							<br><br>
                            <div class="section">
                             <h4 class="s-property-title">${list.category_b }</h4>
                                <div class="s-property-content">
                                    <p><h3>${list.content }</h3></p>
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
                        		<button class="navbar-btn nav-button wow fadeInRight animated" onclick="location.href='deleteService_Center?seq=${list.seq}'" data-wow-delay="0.48s" style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">삭제</button>
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





					<!--작성부분  -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>