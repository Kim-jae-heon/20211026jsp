<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	request.setAttribute("name","김재헌");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>EL Object</title>
</head>
<body>

요청 URI : ${pageContext.request.requestURI} <br>
request의 name 속성 : ${requestScope.name} <br>
code 파라미터 : ${param.code}

</body>
</html>