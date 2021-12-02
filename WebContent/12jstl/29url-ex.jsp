<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>
<c:url value="25process.jsp" var="addMoneyBookUrl">
	<c:param name="title" value="moneyBook"></c:param>
	<c:param name="writer" value="choi"></c:param>
	<c:param name="price" value="20000"></c:param>
	<c:param name="stock" value="5"></c:param>
	<c:param name="publisher" value="cpub"></c:param>
</c:url>

<a href="${addMoneyBookUrl}">자산 책 추가</a>
</body>
</html>