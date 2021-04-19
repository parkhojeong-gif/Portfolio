<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>테스트중입니다.</div>

 <div id="videos">
    <video id="localVideo" autoplay muted></video>
    <video id="remoteVideo" autoplay></video>
  </div>

 	<script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
  	<script src="/socket.io/socket.io.js"></script>
	<script src="resources/webrtc/testing2.js"></script>
</body>
</html>