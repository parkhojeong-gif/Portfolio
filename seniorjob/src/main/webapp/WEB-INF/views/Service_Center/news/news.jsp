<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	var main = {
		init : function() {
			var _this = this;
			$('#btn-news-find').on('click', function() {
				_this.find();
			});
		},
		find : function() {
			var keyword = $('#keyword').val();
			$.ajax({
				type : 'GET',
				url : '/news/news/' + keyword,
				dataType : 'json',
				contentType : 'application/json; charset=utf-8',
			}).done(function(res) {
				alert(JSON.stringify(res));
			}).fail(function(error) {
				alert(JSON.stringify(error));
			});
		}
	};
	main.init();
</script>
</head>
<body>
	<div class="col-md-12">
		<h1>뉴스 검색</h1>
		<div class="col-md-4">
			<form>
				<div class="form-group">
					<input type="text" class="form-control" id="keyword"
						placeholder="검색어를 입력하세요">
					<button type="button" class="btn btn-primary" id="btn-news-find">검색</button>
				</div>
		</div>
	</div>
</body>
</html>