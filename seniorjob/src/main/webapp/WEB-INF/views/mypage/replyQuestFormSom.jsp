<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function detail(seq){
    var url ="replyDetailSom?seq="+seq;
    window.open(url,"","width=500,height=600");
    }
</script>
</head>
<body>
<h3>답변확인창</h3>
<table border="1">
		<thead>
		<tr>
			<th>질문제목</th>
			<th>답변날짜</th>
		</tr>
		</thead>
		<tbody>
            <c:forEach items="${list}" var="list">
			<tr>
                <td onclick="detail('${list.seq}')">${list.schedule_name } </td>
				<td>${list.schedule_end } </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>  



</body>
</html>