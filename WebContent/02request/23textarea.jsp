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
<!-- form>textarea+input:s -->
<form action="">
	<textarea name="text1" id="" cols="30" rows="10"></textarea>
	<input type="submit" value="전송">
</form>

<hr>

<%
String txt = request.getParameter("text1");
%>

<div><%= txt %></div> 
<!-- 상업적으로 팔 때에는 이런 식으로 코딩하면 안된다. -->
<hr>

<textarea name="" id="" cols="30" rows="10" readonly><%= txt %></textarea>

</body>
</html>