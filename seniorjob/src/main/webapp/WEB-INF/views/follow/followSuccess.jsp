<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>followSuccess</title>
</head>
<body>

<script>
	var url = '${url}';
	var msg = '${msg}';
	alert(msg);
	location.href = url;
</script>

</body>
</html>