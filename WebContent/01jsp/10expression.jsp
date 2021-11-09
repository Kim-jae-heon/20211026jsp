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
	<h1>expression</h1>
	<%
	//scriptlet
	out.println(new Date());
	%>
	<%-- expression --%>
	<%= new Date()%>
	<%-- 끝에 세미콜론으로 끝나지 않는다는 점 + out.print에 들어가게 된다는 점 유의. --%>
	
	
</body>
</html>