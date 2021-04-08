<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

section id="id-100" class="post single">

                            <div class="post-header single">
                                <div class="">
                                    <h2 class="wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">${gongji.title }</h2>
                                    <div class="title-line wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"></div>
                                </div>
                                <div class="row wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
                                    <div class="col-sm-6">
                                        <p class="author-category">
                                            By <a href="#">${gongji.id }</a>
                                        </p>
                                        <p class="author-category">
                                            이전 번호<a href="#">${num.prev }</a>
                                            다음 번호<a href="#">${num.next }</a>
                                            이전 글제목<a href="#">${num.prev_title }</a>
                                            다음 글제목<a href="#">${num.next_title }</a>
                                            <input type="hidden" id="preId" value="${num.prev }">
                                            <input type="hidden" id="preId2" value="${num.next }">
                                            <button onclick="pagePre()" >이전버튼</button>
                                            <button></button>
                                        </p>
                                    </div>
                                    <div class="col-sm-6 right">
                                        <p class="date-comments">
                                            <a href="single.html"><i class="fa fa-calendar-o"></i><fmt:formatDate value="${gongji.w_date }" pattern="yyyy-MM-dd"/></a>
                                            <a href="single.html"><i class="fa fa-comment-o"></i>${gongji.click }</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="image wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"> 
                                    <img src="assets/img/blog2.jpg" class="img-responsive" alt="Example blog post alt">
                                </div>
                            </div> 

                            <div id="post-content" class="post-body single wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
                                <p>
                                    <strong>${gongji.content }</strong> 
                            </div>
                            <div class="post-footer single wow fadeInBottum animated animated" style="visibility: visible;">
                                <ul class="pager">
 						                               
                                    <li class="previous"><a href="#" onclick="pagePre()"><i class=""></i>← 이전 글 </a></li>
                                    <li class="next"><a href="#" onclick="pageNext()">다음 글 →<i class=""></i> </a></li>
                                </ul> 
                            </div>
                            
                            


</body>
</html>