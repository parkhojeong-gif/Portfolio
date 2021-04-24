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
    var url ="checkBusinessPlan?seq="+seq;
    window.open(url, "", "width=1400,height=900");
    }
</script>
    </head>
<body>
  <table border="1">
		<thead>
		<tr>
			<th>제목</th>
			<th>멘티아이디</th>
		</tr>
		</thead>
		<tbody>
            <c:forEach items="${list}" var="list">
			<tr>
                <td onclick="detail('${list.seq}')">${list.title } </td>
				<td>${list.id } </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>  



</body>
</html>
