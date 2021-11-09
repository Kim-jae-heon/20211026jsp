<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>deletion</title>
</head>
<body>
<h1>쿠제</h1>
<%
Cookie cookie1 = new Cookie("new-Cookie", "new-Value");
cookie1.setMaxAge(0);
response.addCookie(cookie1);
%>
</body>
</html>