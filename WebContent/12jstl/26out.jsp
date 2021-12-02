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
<h1>jstl out tag</h1>
<c:out value="hello"></c:out>
<hr>
<%
pageContext.setAttribute("attr1", "javascript");
%>
<c:out value="${attr1}"></c:out> <br>
<c:out value="${attr2}" default="없음"></c:out> <br> <!-- default값을 넣을 때엔 contents에다가 넣어도 된다. -->

<c:out value="${attr2}">값 없음</c:out> <br> <!-- script공격을 피하기 위해쓰는 태그. -->
<c:out value="${attr1 }">값 없음</c:out>

<hr>
<%
pageContext.setAttribute("attr3", "<script>alert('핵!!');</script>");
%>

<%-- ${attr3} <br> --%>

 
<c:out value="${attr3}"></c:out>
</body>
</html>