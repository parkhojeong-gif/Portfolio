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

<h1>Video</h1>
	<video id="localVideo" autoplay playsinline></video>
	<video id="localVideo" autoplay playsinline></video>
	
	<div>
		<button id="startButton">Start</button>
		<button id="callButton">Call</button>
		<button id="hangupButton">Hang Up</button>
	</div>
	
	<script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
	<script src="resources/webrtc/testing.js"></script>
</body>
</html>