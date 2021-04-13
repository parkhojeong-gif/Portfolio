<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡/멘토링</title>
<style>
.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
    border: 1px solid black;
}		
h1{text-align:center}
</style>
</head>
<body>
<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->

<h1 class="display-4">멘토링 리스트</h1>

<!-- 멘토 리스트 출력 -->
<c:forEach var="mentoring" items="${list }">
<div class="container" onclick="location.href='getMentoring?mentor_id=${mentoring.mentor_id}'">
    <div class="row restaurant-item" style="margin:20px auto;">
        <div class="col-sm-12">
            <div class="card border-secondary">
                <div class="card-body">
                    <h5 class="card-title">멘토링 이름: ${mentoring.mentoring_name }</h5>
                    <h6 class="card-subtitle mb-2 text-muted">멘토링 가격: ${mentoring.mentoring_price} </h6>
                    <p class="card-text">멘토링 인원: ${mentoring.mentoring_limit} </p>
                    <a href="#" class="card-link">자세히 보기 | </a>
                    <a href="#" class="card-link">찜하기</a>
                </div>
            </div>
        </div>
    </div>
</div>
</c:forEach>
<!-- 멘토 리스트 출력 -->

<!-- Footer area-->
<jsp:include page="../footer.jsp" />
<!-- Footer area-->
</body>
</html>