<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<style>

table {
	border-collapse: collapse;
	width: 100%
}

table, th, td {
	border: 1px solid black;
}

</style>
<title>Insert title here</title>
</head>
<body>
<h1>책 목록 ${fn:length(books)}권</h1>


<c:if test="${empty books}">
	<p>아직 저장된 책이 없습니다.</p>
</c:if>

<c:if test="${not empty books}">
	<table>
		<tr>
			<th></th>
			<th>#</th>
			<th>제목</th>
			<th>저자</th>
			<th>가격</th>
			<th>출판사</th>
			<th>재고수량</th>
		</tr>
		<c:forEach items="${books}" var="item" varStatus="status">
			
		<tr>
			<c:url value="25delete.jsp" var="deleteUrl">
				<c:param name="index" value="${status.index}"/>
			</c:url>
			<td><a href="25delete.jsp?index=${status.index}"><i class="fas fa-trash"></i></a></td>
			<td><c:out value="${status.count}"></c:out></td>
			<td><c:out value="${item.title}"></c:out></td>
			<td>${item.write}</td>
			<td>${item.price}</td>
			<td>${item.publisher}</td>
			<td>${item.stock}</td>
		</tr>
		</c:forEach>
	</table>
</c:if>

<a href="25book-form.jsp">책 등록하기</a>
</body>
</html>