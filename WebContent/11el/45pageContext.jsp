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
<h1>el pageContext 기본 객체</h1>
<p>${pageContext }</p>
<p>${pageContext.request}</p>
<p>${pageContext.session}</p>
<p>${pageContext.request.cookies[0].name}</p>
<p>${pageContext.request.cookies[0].value}</p>

<p><%= request.getContextPath() %></p>
<p>${pageContext.request.contextPath}</p> <!-- el을 이용하려면 java 코드를 pageContext를 통해 찾아가야함-->
</body>
</html>