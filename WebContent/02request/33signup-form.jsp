<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- webcontent가 root. servlet은 항상 webcontent로부터 시작.
우리가 만든 application은 tomcat위에서 실행. tomcat위에서 실행되는 것은 2개 이상이 실행될 수 있다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보</h1>
	id: <%= request.getParameter("name") %> <br>
	email: <%= request.getParameter("email") %> <br>
	pw: <%= request.getParameter("password") %>
	
	<hr>
	
	<a href="myjsp/02request/33signup-form.jsp"></a>
</body>
</html>