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
<!-- 로그인 화면 -->

<h1>login</h1>

<form action="08process.jsp" method="post">
id : <input type="text" name="userid"> <br>
pw : <input type="text" name="userpw"> <br>
<input type="submit" value="로그인">
</form>
</body>
</html>