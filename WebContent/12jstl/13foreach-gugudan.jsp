<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 1~9단 (foreach)</h1>
<p>
	<c:forEach begin="1" end="9" var="i">
		구구단 ${i}단 시작 <br>
		<c:forEach begin="1" end="9" var="j">
			${i} X ${j} = ${i*j} <br>
		</c:forEach>
		<br>
	</c:forEach>
</p>

</body>
</html>