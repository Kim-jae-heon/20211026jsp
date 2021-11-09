<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form element</h1>

<form action=""> <%--우리가 입력하는 input element들은 form element안에 들어가게된다고 보면 된다. --%>
	<input name="q"> <br>
	<input name="name"><br>
	<input type="submit">
</form>

<hr>

<p><%= request.getParameter("q") %></p>
<p><%= request.getParameter("name") %></p>

</body>
</html>