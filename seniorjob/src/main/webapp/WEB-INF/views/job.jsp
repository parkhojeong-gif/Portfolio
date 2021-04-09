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
<jsp:include page="topHeader.jsp"></jsp:include>
<script type="text/javascript">
function openWindowPop(url, name){
    var options = 'top=10, left=50, width=800, height=900, status=no, menubar=no, toolbar=no, resizable=no';
    window.open(url, name, options);
}
</script>
<body>
	<!-- property area -->
	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">


				<jsp:include page="Service_Center/job_left.jsp"></jsp:include>

				
				
				<div class="col-md-11 pr-40 padding-top-40 properties-page user-properties">
				<div class="section additional-details">
				<form action="job">
							<!-- <input type="text" name="keyword" value=""><br> <input
								type="submit" name="검색" value="검색"> -->
						<button type="submit" class="btn btn-primary btn-lg" formaction="job" name="cd" value='11'>서울</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" name="cd" value='12'>부산</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" name="cd" value='13'>대구</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" name="cd" value='14'>인천</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" name="cd" value='15'>광주</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" name="cd" value='16'>대전</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" name="cd" value='17'>울산</button>
						</form>
				<table class="table table-hover">
					<tr>
						<th>기업명</th>
						<th align="center" rowspan="1" colspan="3">채용제목</th>
						<th>근무조건</th>
						<th>마감일</th>
					</tr>

					<c:forEach items="${job }" var="a">
						<tr>
							<td>${a.companyName }</td>
							<td colspan="3" >
							<a href="javascript:openWindowPop('${a.companyUrl }', 'popup');">
							${a.incruit }
							</a><br>
							${a.incruit2nd }</td>
							<td>${a.incruit3nd }</td>
							<td>${a.incruitDday }</td>
						</tr>
					
					</c:forEach>
				</table>


					
				</div>
				
		<div class="col-md-9 pr-50 padding-top-40 properties-page user-properties">		
		<div class="pagination">	
		 			<ul>
    						 

    						
    						<li><a href="serviceCenter?page=1&amp;perPageNum=10&amp;searchType=&amp;keyword=">1</a></li>
    						
    						<li><a href="serviceCenter?page=2&amp;perPageNum=10&amp;searchType=&amp;keyword=">2</a></li>
    						
    						<li><a href="serviceCenter?page=3&amp;perPageNum=10&amp;searchType=&amp;keyword=">3</a></li>
    						
    						<li><a href="serviceCenter?page=4&amp;perPageNum=10&amp;searchType=&amp;keyword=">4</a></li>
    						
    						<li><a href="serviceCenter?page=5&amp;perPageNum=10&amp;searchType=&amp;keyword=">5</a></li>
    						
    						<li><a href="serviceCenter?page=6&amp;perPageNum=10&amp;searchType=&amp;keyword=">6</a></li>
    						
    						<li><a href="serviceCenter?page=7&amp;perPageNum=10&amp;searchType=&amp;keyword=">7</a></li>
    						
    						<li><a href="serviceCenter?page=8&amp;perPageNum=10&amp;searchType=&amp;keyword=">8</a></li>
    						
    						<li><a href="serviceCenter?page=9&amp;perPageNum=10&amp;searchType=&amp;keyword=">9</a></li>
    						
    						<li><a href="serviceCenter?page=10&amp;perPageNum=10&amp;searchType=&amp;keyword=">10</a></li>
    						
			
    						
    						<li><a href="serviceCenter?page=11&amp;perPageNum=10&amp;searchType=&amp;keyword=">다음</a></li>
    						 
					  </ul>
		</div>
		</div>
				
		<div class="col-md-12 pr-30 padding-top-40 properties-page user-properties">		
				<form role="form" method="get">
				<div class="search">			
					<br>
						</div>
					<div class="col-xs-2">
                         <div class="btn-group bootstrap-select show-tick form-control">
                         	 <div class="dropdown-menu open" style="max-height: 640.781px; overflow: hidden; min-height: 109px;"><ul class="dropdown-menu inner" role="menu" style="max-height: 629.781px; overflow-y: auto; min-height: 98px;"><li data-original-index="0" class=""><a tabindex="0" class="" style="" data-tokens="null"><span class="text"> -Status- </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1" class=""><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Rent </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Boy</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">used</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div>
                         	 <div class="btn-group bootstrap-select show-tick form-control"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" data-id="basic" title="------"><span class="filter-option pull-left">------</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">------</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">제목</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">내용</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">작성자</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">제목+내용</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div><select id="basic" name="searchType" class="selectpicker show-tick form-control" tabindex="-98">
                             <option value="n">------</option>
						      <option value="t">제목</option>
						      <option value="c">내용</option>
						      <option value="w">작성자</option>
						      <option value="tc">제목+내용</option>
                        </select></div></div>
                    </div>
                    <div class="col-xs-7">
					<div class="input-group">
                             <input class="form-control" name="keyword" id="keywordInput" value="" style="text-align:center;  height:45px;" type="text" placeholder="내용 입력 ">
                             <span class="input-group-btn">
                    <button class="btn btn-primary subscribe" id="searchBtn" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                    <button class="btn btn-primary subscribe" id="searchBtn" type="button" onclick="location.href='insertService_CenterForm'">등록</button>
                    <script>
			      $(function(){
			        $('#searchBtn').click(function() {
			          self.location = "serviceCenter" + '?page=1&perPageNum=10' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
			        });
			      });   
			    </script>
                           </span>
                   </div>
                   </div>
                </form>
                </div>
                </div>
				
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>