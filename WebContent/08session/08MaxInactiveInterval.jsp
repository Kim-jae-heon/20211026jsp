<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>

<h1>MAxInactiveInterval</h1>

<%
session.setMaxInactiveInterval(10); //10초
/* session은 이 곳에서만 영향을 미친다. 모든 session에 영향을 미치고 싶다면 어떻게 해야할까? */
%>
</body>
</html>