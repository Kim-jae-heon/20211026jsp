<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
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
<h1>책 목록 ${fn:length(books)}권 /w TAG</h1>

<c:if test="${empty books}">
	<p>아직 저장된 책이 없습니다.</p>
</c:if>

<c:if test="${not empty books}"> <!-- books는 request영역에 들어가 있음. -->
	<my:t20table />
</c:if>

<a href="25book-form.jsp">책 등록하기</a>
</body>
</html>