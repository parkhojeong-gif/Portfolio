<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>businessPlanInsert.jsp</title>
<meta name="description" content="company is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="resources/assets/css/normalize.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/fontello.css">
<link
	href="resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="resources/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link href="resources/assets/css/animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="resources/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="resources/assets/css/price-range.css">
<link rel="stylesheet" href="resources/assets/css/owl.carousel.css">
<link rel="stylesheet" href="resources/assets/css/owl.theme.css">
<link rel="stylesheet" href="resources/assets/css/owl.transitions.css">
<link rel="stylesheet" href="resources/assets/css/style.css">
<link rel="stylesheet" href="resources/assets/css/responsive.css">
<style>
element.style {
    transform: translateX(406px);
}
#nudge_wrap {
    width: 260px;
    position: fixed;
    top: 96px;
    left: 50%;
    margin-left: 370px;
}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, button {
    margin: 0;
    padding: 0;
    font-family: "Malgun Gothic",dotum,gulim,sans-serif;
}
user agent stylesheet
div {
    display: block;
}
html, body {
    width: 100%;
    height: 100%;
    -webkit-text-size-adjust: none;
}
html {
    color: #000;
    background: #fff;
}

element.style {
}
.box_change_order .list_change li .link_change .btn_check {
    display: inline-block;
    position: absolute;
    right: 0;
    padding: 0 0 0 12px;
    width: 62px;
    height: 30px;
    border: 1px solid #dfdfdf;
    border-radius: 15px;
    box-sizing: border-box;
    color: #222;
    font-size: 13px;
    font-weight: normal;
    letter-spacing: -1px;
    background-color: #fff;
}
.box_change_order .list_change li .link_change {
    display: block;
    position: relative;
    max-width: 240px;
    color: #222;
    line-height: 26px;
}
.box_change_order .list_change li a {
    color: #444;
}
a {
    color: #444;
    text-decoration: none;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
}
.box_change_order .list_change li {
    padding: 7px 10px 0;
    color: #888;
    font-size: 16px;
    line-height: 26px;
}
ol, ul, li {
    list-style: none;
}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, button {
    margin: 0;
    padding: 0;
    font-family: "Malgun Gothic",dotum,gulim,sans-serif;
}
user agent stylesheet
li {
    text-align: -webkit-match-parent;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
html, body {
    width: 100%;
    height: 100%;
    -webkit-text-size-adjust: none;
}
html {
    color: #000;
    background: #fff;
}
.box_change_order .list_change li .link_change .btn_check:after {
    display: inline-block;
    position: absolute;
    top: 9px;
    right: 11px;
    width: 9px;
    height: 9px;
    background: url(//www.saraminimage.co.kr/sri/person/resume/ico_check.png) no-repeat -7px -7px;
    content: "";
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function prodAdd() {
	
	var prodLen = $("#prodDiv").length; //prodDiv??? ????????? ?????????.
	
	
	if(prodLen > 0) {  //prodDiv??? ?????????
		alert("?????? ????????? ???????????????.");
	} else {
	
	var prodDiv = $('<div />').attr("class", "row").attr("id", "prodDiv");
	var hidden = $('<input />').attr("type","hidden").attr("id","phidden").attr("name","phidden").attr("value","1");
	var br = $('<br />');
	var hr = $('<hr />');
	var h2 = $('<h2 />').html("??????????????? ??????");
	var colSmDiv = $('<div />').attr("class", "col-sm-12");
	var formGDiv = $('<div />').attr("class", "form-group");
	var labelA = $('<label />').attr("for","prod_a").html("??????(?????????)???");
	var textAreaA = $('<textarea />').attr("name","prod_a").attr("id", "prod_a").attr("class", "form-control");
	var labelB = $('<label />').attr("for","prod_b").html("??????(?????????)??????");
	var textAreaB = $('<textarea />').attr("name","prod_b").attr("id", "prod_b").attr("class", "form-control");
	var labelC = $('<label />').attr("for","prod_c").html("??????(?????????)?????????");
	var textAreaC = $('<textarea />').attr("name","prod_c").attr("id", "prod_c").attr("class", "form-control");
	
	
	$(prodDiv).append(hidden);
	
	$(prodDiv).append(br);
	$(prodDiv).append(hr);
	$(prodDiv).append(h2);
	$(br).clone().appendTo(prodDiv);  //br????????? ????????? ???????????? prodDiv??? ??????.
	
	
	$(formGDiv).append(labelA);
	$(formGDiv).append(textAreaA);

	$(formGDiv).append(labelB);
	$(formGDiv).append(textAreaB);
	
	$(formGDiv).append(labelC);
	$(formGDiv).append(textAreaC);
	
	$(colSmDiv).append(formGDiv);
	$(prodDiv).append(colSmDiv);
	
	$("#businessDiv").eq(-1).after(prodDiv);
	
	}
}


function marketAdd() {
	
	var marketLen = $("#marketDiv").length; //marketDiv??? ????????? ?????????.
	if(marketLen > 0) {  //marketDiv??? ?????????
		alert("?????? ????????? ???????????????.");
	} else {
	
	
	var marketDiv = $('<div />').attr("class", "row").attr("id", "marketDiv");
	var hidden = $('<input />').attr("type","hidden").attr("id","mhidden").attr("name","mhidden").attr("value","1");
	var br = $('<br />');
	var hr = $('<hr />');
	var h2 = $('<h2 />').html("???????????? ??? ??????");
	var colSmDiv = $('<div />').attr("class", "col-sm-12");
	var formGDiv = $('<div />').attr("class", "form-group");
	var labelA = $('<label />').attr("for","market_a").html("????????? ????????????");
	var textAreaA = $('<textarea />').attr("name","market_a").attr("id", "market_a").attr("class", "form-control");
	var labelB = $('<label />').attr("for","market_b").html("????????? ????????????(??????) ??????");
	var textAreaB = $('<textarea />').attr("name","market_b").attr("id", "market_b").attr("class", "form-control");
	var labelC = $('<label />').attr("for","market_c").html("????????? ??????");
	var textAreaC = $('<textarea />').attr("name","market_c").attr("id", "market_c").attr("class", "form-control");
	var labelD = $('<label />').attr("for","market_d").html("???????????? ?????????");
	var textAreaD = $('<textarea />').attr("name","market_d").attr("id", "market_d").attr("class", "form-control");
	
	$(marketDiv).append(hidden);
	
	$(marketDiv).append(br);
	$(marketDiv).append(hr);
	$(marketDiv).append(h2);
	$(br).clone().appendTo(marketDiv);  //br????????? ????????? ???????????? prodDiv??? ??????.
	
	
	$(formGDiv).append(labelA);
	$(formGDiv).append(textAreaA);

	$(formGDiv).append(labelB);
	$(formGDiv).append(textAreaB);
	
	$(formGDiv).append(labelC);
	$(formGDiv).append(textAreaC);
	
	$(formGDiv).append(labelD);
	$(formGDiv).append(textAreaD);
	
	$(colSmDiv).append(formGDiv);
	$(marketDiv).append(colSmDiv);
	
	
	var prodLen = $("#prodDiv").length; //prodDiv??? ????????? ?????????.
	
	
	if(prodLen > 0) {  //prodDiv??? ?????????
		$("#prodDiv").eq(-1).after(marketDiv);  //prodDiv ?????? ?????? ??????
		
	} else {  //prodDiv??? ?????????
		$("#businessDiv").eq(-1).after(marketDiv); //businessDiv ?????? ?????? ??????
	}
	
	}
}

function sellAdd() {
	
	var sellingLen = $("#sellingDiv").length; //sellingDiv??? ????????? ?????????.
	if(sellingLen > 0) {  //sellingDiv??? ?????????
		alert("?????? ????????? ???????????????.");
	} else {
	
	
	var sellingDiv = $('<div />').attr("class", "row").attr("id", "sellingDiv");
	var hidden = $('<input />').attr("type","hidden").attr("id","shidden").attr("name","shidden").attr("value","1");
	var br = $('<br />');
	var hr = $('<hr />');
	var h2 = $('<h2 />').html("????????????");
	var colSmDiv = $('<div />').attr("class", "col-sm-12");
	var formGDiv = $('<div />').attr("class", "form-group");
	var labelA = $('<label />').attr("for","selling_a").html("??????????????????");
	var textAreaA = $('<textarea />').attr("name","selling_a").attr("id", "selling_a").attr("class", "form-control");
	var labelB = $('<label />').attr("for","selling_b").html("??????????????????");
	var textAreaB = $('<textarea />').attr("name","selling_b").attr("id", "selling_b").attr("class", "form-control");
	var labelC = $('<label />').attr("for","selling_c").html("??????????????????");
	var textAreaC = $('<textarea />').attr("name","selling_c").attr("id", "selling_c").attr("class", "form-control");
	
	$(sellingDiv).append(hidden);
	
	$(sellingDiv).append(br);
	$(sellingDiv).append(hr);
	$(sellingDiv).append(h2);
	$(br).clone().appendTo(sellingDiv);  //br????????? ????????? ???????????? prodDiv??? ??????.
	
	
	$(formGDiv).append(labelA);
	$(formGDiv).append(textAreaA);

	$(formGDiv).append(labelB);
	$(formGDiv).append(textAreaB);
	
	$(formGDiv).append(labelC);
	$(formGDiv).append(textAreaC);
	
	$(colSmDiv).append(formGDiv);
	$(sellingDiv).append(colSmDiv);
	
	
	
	
	
	
	var marketLen = $("#marketDiv").length; //marketDiv??? ????????? ?????????.
	var prodLen = $("#prodDiv").length; //prodDiv??? ????????? ?????????.
	
	if(marketLen > 0) {  //marketDiv??? ?????????
		$("#marketDiv").eq(-1).after(sellingDiv);  //marketDiv ?????? ?????? ??????
		
	} else {  //marketDiv??? ?????????
		if(prodLen > 0) {  //prodDiv??? ?????????
			$("#prodDiv").eq(-1).after(sellingDiv);  //prodDiv ?????? ?????? ??????
			
		} else {  //prodDiv??? ?????????
			$("#businessDiv").eq(-1).after(sellingDiv); //businessDiv ?????? ?????? ??????
		}
	}
	
	}
	
}



$(document).on("click", "#previewBusiness", function(){
	window.name = "previewBusiness";
	var openWin = window.open("previewBusiness",
            "????????????", "width=900, height=900, resizable = no, scrollbars = no");
})

</script>
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

<form action="insertBusinessPlanA" method="post" name="frm">
	<!-- property area -->
	<div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2" id="allDiv">
					
					<div class="row" id="businessDiv">
					<hr>
					<h2>??????????????? ??????</h2>
					<br>
					
					<div class="col-sm-12">
								<div class="form-group">
									<label for="title">??????</label>
									<textarea name="title" id="title" class="form-control"></textarea>
								</div>
							</div>
						
							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_a">????????? ????????? ?????????</label>
									<textarea name="business_a" id="business_a" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_b">????????? ??????</label>
									<textarea name="business_b" id="business_b" class="form-control"></textarea>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_c">?????? ????????????</label>
									<textarea name="business_c" id="business_c" class="form-control"></textarea>
								</div>
							</div>
					</div>
					
				</div>
				
				
			</div>
		</div>
	</div>

	<!-- ?????? ????????? -->
	<div id="nudge_wrap" style="transform: translateX(42px);">
		<div class="inner">
			<div id="order_list" class="box_change_order">
				<h4 class="title_tip">??????????????? ??????</h4>
				<ul class="list_change">
					<li><a class="link_change" href="##"
						data-order_item="activity">??????????????? ??????<span class="btn_check">??????</span></a></li>
					<li><a class="link_change" href="##" data-order_item="license">???????????????
							??????<span class="btn_check" onclick="prodAdd()">??????</span>
					</a></li>
					<li><a class="link_change" href="##" data-order_item="skill">????????????
							??? ??????<span class="btn_check" onclick="marketAdd()">??????</span>
					</a></li>
					<li><a class="link_change" href="##"
						data-order_item="personal">????????????
						<span class="btn_check" onclick="sellAdd()">
						??????
						
						</span></a></li>

				</ul>
			</div>
			<div class="area_btn col-sm-12 text-center">
				<button type="button" class="btn btn-primary" name="previewBusiness" id="previewBusiness">????????????</button>
			</div>
			<!--<div class="area_btn col-sm-12 text-center">
				<button type="" class="btn btn-primary">????????????</button>
			</div>-->
			<div class="area_btn col-sm-12 text-center">
				<button type="submit" class="btn btn-primary">????????????</button>
			</div>
			

		</div>
	</div>
</form>


<script src="resources/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="resources/assets/js/jquery-1.10.2.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/bootstrap-select.min.js"></script>
	<script src="resources/assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="resources/assets/js/easypiechart.min.js"></script>
	<script src="resources/assets/js/jquery.easypiechart.min.js"></script>

	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/wow.js"></script>

	<script src="resources/assets/js/icheck.min.js"></script>
	<script src="resources/assets/js/price-range.js"></script>

	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	<script src="resources/assets/js/gmaps.js"></script>
	<script src="resources/assets/js/gmaps.init.js"></script>

	<script src="resources/assets/js/main.js"></script>


</body>
</html>
