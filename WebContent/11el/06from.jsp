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

<h1>from.jsp</h1>
<%
request.setAttribute("name", "donald");
request.setAttribute("age", 30);
request.setAttribute("height", 190.5);
request.setAttribute("width", 300.3333);
%>

<jsp:forward page="06to.jsp"></jsp:forward>

</body>
</html>