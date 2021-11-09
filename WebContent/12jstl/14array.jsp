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

<%
pageContext.setAttribute("arr", new String[]{"java", "spring", "mysql", "oracle"});
%>

<c:forEach items="${arr}" var="item"> <!-- item을 el로 작성해야 한다는 점에 유의. -->
	${item} <br>
</c:forEach>

</body>
</html>