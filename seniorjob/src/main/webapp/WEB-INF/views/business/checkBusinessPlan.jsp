<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
//A $( document ).ready() block.
$( document ).ready(function() {
    var frm = document.frm;
    var phidden = frm.phidden.value;
    var mhidden = frm.mhidden.value;
    var shidden = frm.shidden.value;
    
    if(phidden == 1) {
    	console.log("1");
    	prodAdd();
    	if(mhidden == 1) {
    		console.log("2");
    		marketAdd();
    		if(shidden == 1) {
    			console.log("3");
    			sellAdd();
    		} //end of shidden
    		
    		else {
    			console.log("4");
    		}
    	} //end of mhidden 
    	
    	else { 
    		if(shidden == 1) {
    			console.log("5");
        			sellAdd();
    			}
    		}
    	} // end of phidden
    
    else{
    		if(mhidden == 1) {
    			console.log("6");
        		marketAdd();
        		if(shidden == 1) {
        			console.log("7");
        			sellAdd();
    			}
        	} else {
        		if(shidden == 1) {
        			console.log("8");
            			sellAdd();
        			}
        		}
    }
    
});



function prodAdd() {
	
	var prodLen = $("#prodDiv").length; //prodDiv??? ????????? ?????????.
	
	
	
	var prodDiv = $('<div />').attr("class", "row").attr("id", "prodDiv");
	var hidden = $('<input />').attr("type","hidden").attr("id","pHidden").attr("name","pHidden").attr("value","1");
	var br = $('<br />');
	var hr = $('<hr />');
	var h2 = $('<h2 />').html("??????????????? ??????");
	var colSmDiv = $('<div />').attr("class", "col-sm-12");
	var formGDiv = $('<div />').attr("class", "form-group");
	var labelA = $('<label />').attr("for","prod_a").html("??????(?????????)???");
	var textAreaA = $('<div />').attr("name","prod_a").attr("id", "prod_a").attr("class", "highLightSom").html("${bpp.prod_a}");
	var labelB = $('<label />').attr("for","prod_b").html("??????(?????????)??????");
	var textAreaB = $('<div />').attr("name","prod_b").attr("id", "prod_b").attr("class", "highLightSom").html("${bpp.prod_b}");
	var labelC = $('<label />').attr("for","prod_c").html("??????(?????????)?????????");
	var textAreaC = $('<div />').attr("name","prod_c").attr("id", "prod_c").attr("class", "highLightSom").html("${bpp.prod_c}");
	
	
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


function marketAdd() {
	
	var marketLen = $("#marketDiv").length; //marketDiv??? ????????? ?????????.
	
	
	var marketDiv = $('<div />').attr("class", "row").attr("id", "marketDiv");
	var hidden = $('<input />').attr("type","hidden").attr("id","mHidden").attr("name","mHidden").attr("value","1");
	var br = $('<br />');
	var hr = $('<hr />');
	var h2 = $('<h2 />').html("???????????? ??? ??????");
	var colSmDiv = $('<div />').attr("class", "col-sm-12");
	var formGDiv = $('<div />').attr("class", "form-group");
	var labelA = $('<label />').attr("for","market_a").html("????????? ????????????");
	var textAreaA = $('<div />').attr("name","market_a").attr("id", "market_a").attr("class", "highLightSom").html("${bpp.market_a}");
	var labelB = $('<label />').attr("for","market_b").html("????????? ????????????(??????) ??????");
	var textAreaB = $('<div />').attr("name","market_b").attr("id", "market_b").attr("class", "highLightSom").html("${bpp.market_b}");
	var labelC = $('<label />').attr("for","market_c").html("????????? ??????");
	var textAreaC = $('<div />').attr("name","market_c").attr("id", "market_c").attr("class", "highLightSom").html("${bpp.market_c}");
	var labelD = $('<label />').attr("for","market_d").html("???????????? ?????????");
	var textAreaD = $('<div />').attr("name","market_d").attr("id", "market_d").attr("class", "highLightSom").html("${bpp.market_d}");
	
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

function sellAdd() {
	
	var sellingLen = $("#sellingDiv").length; //sellingDiv??? ????????? ?????????.
	
	var sellingDiv = $('<div />').attr("class", "row").attr("id", "sellingDiv");
	var hidden = $('<input />').attr("type","hidden").attr("id","sHidden").attr("name","sHidden").attr("value","1");
	var br = $('<br />');
	var hr = $('<hr />');
	var h2 = $('<h2 />').html("????????????");
	var colSmDiv = $('<div />').attr("class", "col-sm-12");
	var formGDiv = $('<div />').attr("class", "form-group");
	var labelA = $('<label />').attr("for","selling_a").html("??????????????????");
	var textAreaA = $('<div />').attr("id", "selling_a").attr("class", "highLightSom").html("${bpp.selling_a}");
	var labelB = $('<label />').attr("for","selling_b").html("??????????????????");
	var textAreaB = $('<div />').attr("id", "selling_b").attr("class", "highLightSom").html("${bpp.selling_b}");
	var labelC = $('<label />').attr("for","selling_c").html("??????????????????");
	var textAreaC = $('<div />').attr("id", "selling_c").attr("class", "highLightSom").html("${bpp.selling_c}");
	
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
	
	
	
} // end of sellAdd


//???????????? ????????? highlight?????? ?????? ?????? ??????
$(document).ready(function(){
	
	$('.highLightSom').mouseup(function(){				//highLightSom????????? ???????????? ?????????
		var txt = '';									//txt?????? ?????? ??????
		if (window.getSelection) {
		    txt = window.getSelection();
       	} else if (document.getSelection) {
		    txt = document.getSelection();
	    } else if (document.selection) {
		    txt = document.selection.createRange().text;
	    } else {
		    return;
	    }												//txt??? ???????????? ????????? ??? ??????
		
		txt = String(txt); 								//Type Casting
		var tarId = event.target.id;					//????????? ?????? div id ??????
		
		var htm = $('#'+ tarId).html();					//id????????? div??? ???(?????????) ??????
		var arr = htm.split(txt,2);						//txt??? ???????????? ???????????? 2?????? ????????? ????????? ??????
		$('#'+ tarId).html("");							//div ???????????? ???????????????
		var spa ='<span>'+arr[0]+'</span>'				
		+'<span style=" background: linear-gradient(to top, #FFE400 50%, transparent 50%)">'+txt+'</span>'  //txt??? highlight ??????
		+'<span>'+arr[1]+'</span>';
		
		//var idNum = $('#idNum').val();
		var inp = $('<input />').attr("onkeyup","printName()").attr("id","somSom");
		var diviv = $('<div />').attr("id","resultsoM").attr("style","color:red");
		
		$('#'+ tarId).append(spa);
		
		var tar = event.target;
		$(tar).after(inp);
		$(tar).after(diviv);
		
		
		
	});
});

function printName()  {
	  const name = document.getElementById("somSom").value;
	  console.log(name);
	  //var name = $('#somSom'+ idNum).val();
	  document.getElementById("resultsoM").innerText = name;
	  //var newIdNum = idNum + 1;
	//	$('#idNum').val(newIdNum);
		
	  
}



function saveHtml() {
	var editor;
	var path;
	editor = $("#printHTML").html();
	//path = ($("#depth_container").text()).replace("/" + g_htmlFileName, "");
	var type = "html";
	var seq = $("#seq").val();
	//const element = document.getElementById('printHTML');
	console.log(editor);
	
	// console.log dirbti saveHtml1th

	$.ajax({
		url: 'htmlSaveSom',
		type: 'POST',
		async: false,
		cache:false,
		data: {
			//contents:window.btoa(unescape(encodeURIComponent(editor))),
			contents:editor,
			seq:seq,
			//path: path, 
			//file: strFile,
			type: type
		}
	});
};

</script>
</head>
<body >
<div id="printHTML">
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->
<form id="frm" name="frm">
<input type="hidden" id="phidden" name="phidden" value="${bpp.phidden}">
<input type="hidden" id="mhidden" name="mhidden" value="${bpp.mhidden}">
<input type="hidden" id="shidden" name="shidden" value="${bpp.shidden}">
<input type="hidden" id="seq" name="seq" value="${bpp.seq}">
<input type="hidden" id="idNum" name="idNum" value="1">


	<!-- property area -->
	<div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2" id="allDiv">
					<input id="console">
					<div class="row" id="businessDiv">
					<hr>
					<h2>??????????????? ??????</h2>
					<br>
					
							<div class="col-sm-12">
								<div class="form-group">
									<label for="title">??????</label>
									<div class="highLightSom" id="title">${bpp.title }</div>
								</div>
							</div>
						
							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_a">????????? ????????? ?????????</label>
									<div class="highLightSom" id="business_a">${bpp.business_a }</div>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_b">????????? ??????</label>
									<div class="highLightSom" id="business_b">${bpp.business_b }</div>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<label for="business_c">?????? ????????????</label>
									<div class="highLightSom" id="business_c">${bpp.business_c }</div>
								</div>
							</div>
					</div>
					
				</div>
				
			</div>
		</div>
	</div>
	</form>
</div>
	<!-- ?????? ????????? -->
	<div id="nudge_wrap" style="transform: translateX(42px);">
		<div class="inner">
			<div class="area_btn col-sm-12 text-center">
				<button type="button" id="btnSaveHtml" onclick="saveHtml()" class="btn btn-primary">????????????</button>
			</div>
			

		</div>
	</div>

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
