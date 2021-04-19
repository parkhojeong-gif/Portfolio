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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function openWindowPop(url, name){
    var options = 'top=10, left=50, width=800, height=900, status=no, menubar=no, toolbar=no, resizable=no';
    window.open(url, name, options);
}

function getURLParams(url) {
    var result = {};
    url.replace(/[?&]{1}([^=&#]+)=([^&#]*)/g, function(s, k, v) { result[k] = decodeURIComponent(v); });
    return result;
}

 $(function(){
	if(getURLParams(location.search).cd == '11'){
		$('#cd15').attr('class','btn btn-default btn-lg')
		$('#cd14').attr('class','btn btn-default btn-lg')
		$('#cd13').attr('class','btn btn-default btn-lg')
		$('#cd12').attr('class','btn btn-default btn-lg')
		$('#cd11').attr('class','btn btn-primary btn-lg')
	}else if(getURLParams(location.search).cd == '12'){
		$('#cd15').attr('class','btn btn-default btn-lg')
		$('#cd14').attr('class','btn btn-default btn-lg')
		$('#cd13').attr('class','btn btn-default btn-lg')
		$('#cd11').attr('class','btn btn-default btn-lg')
		$('#cd12').attr('class','btn btn-primary btn-lg')
	}else if(getURLParams(location.search).cd == '13'){
		$('#cd15').attr('class','btn btn-default btn-lg')
		$('#cd14').attr('class','btn btn-default btn-lg')
		$('#cd12').attr('class','btn btn-default btn-lg')
		$('#cd11').attr('class','btn btn-default btn-lg')
		$('#cd13').attr('class','btn btn-primary btn-lg')
	}else if(getURLParams(location.search).cd == '14'){
		$('#cd15').attr('class','btn btn-default btn-lg')
		$('#cd13').attr('class','btn btn-default btn-lg')
		$('#cd12').attr('class','btn btn-default btn-lg')
		$('#cd11').attr('class','btn btn-default btn-lg')
		$('#cd14').attr('class','btn btn-primary btn-lg')
	}else if(getURLParams(location.search).cd == '15'){
		$('#cd14').attr('class','btn btn-default btn-lg')
		$('#cd13').attr('class','btn btn-default btn-lg')
		$('#cd12').attr('class','btn btn-default btn-lg')
		$('#cd11').attr('class','btn btn-default btn-lg')
		$('#cd15').attr('class','btn btn-primary btn-lg')
	}
}); 



</script>
<body>
	<!-- property area -->
	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">


				<jsp:include page="Service_Center/sevice_left.jsp"></jsp:include>

				
				
				<div class="col-md-10 pr-40 padding-top-40 properties-page user-properties">
				<div class="section additional-details">
				<form action="job">
						
						<button type="submit" class="btn btn-primary btn-lg" formaction="job" id="cd11"name="cd" value='11'>서울</button>
						<button type="submit" class="btn btn-default btn-lg"  formaction="job" id="cd12"name="cd" value='12'>부산</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd13"name="cd" value='13'>대구</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd14"name="cd" value='14'>인천</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd15"name="cd" value='15'>광주</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd16"name="cd" value='16'>대전</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd17"name="cd" value='17'>울산</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd18"name="cd" value='16'>대전</button>
						<button type="submit" class="btn btn-default btn-lg" formaction="job" id="cd19"name="cd" value='17'>울산</button>
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
				
				
		
                </div>
				
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>