<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멘티목록</title>
</head>
<body>
<c:forEach items="${list }" var="list">
<form name="requestForm" action="requestMentoring"  method="post">
  
<table border="1">
<thead>
<tr>
<th>멘티</th>
<th>멘토링 요청</th>
</tr>
</thead>
<tbody>

<tr>
<td>${list.menteeId }
<input type="hidden" name="mentorid" value="${list.id }">
  <input type="hidden" name="menteeid" value="${list.menteeId }">
</td>
<td><button type="submit" class="btn btn-primary">멘토링 요청 test</button></td>
</tr>

</tbody>
</table>
</form>
</c:forEach>
</body>
</html>