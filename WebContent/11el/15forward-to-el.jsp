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
<h1>forward-to-el.jsp</h1>

<p>name: ${bean1.name}</p>
<p>age: ${bean1.age}</p>
<p>kid: ${bean1.kid}</p>

<!-- import가 필요없다는 점. java code를 쓸
필요가 없다는 점. -->
</body>
</html>